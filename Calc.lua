local Calc = {}
-- Calculator made by ScriptedPython
grammar = {
	plus = "^%+",
	dot = "^%.", -- Not implemented
	sub = "^%-",
	mult = "^%*",
	div = "^/",
	lParen = "^%(",
	rParen = "^%)",
	num = "^%d+",
}
-- The lexer tokenizes the input string for easy parsing
function lexer (input)
	local output = {}
	local count = 1
	for i = 1, string.len(input) do
		if (count) > string.len(input) then 
			break
		end
		for _,val in pairs(grammar) do
			local match = string.match(string.sub(input,count,#input),val)
			if match ~= nil then
				output[i] =  match
				count += string.len(match)
				break
			end
		end
	end
	return output
end

-- The parser makes sure that the tokens will be correctly evaluated
function parser (toks,count,input)
	local curr = toks[count]
	local lookahead = toks[count+1]
	if lookahead == "*" then
		-- Multiply will actually create implicit parenthesis
		if curr ~= ")" and toks[count+2] ~= "(" then
			table.insert(toks,count,"(")
			table.insert(toks,count+4,")")
			return parser(toks,count+4,table.concat(toks))
		else
			return parser(toks,count+1,input)
		end
	elseif lookahead == "/" then
		-- Divide will actually create implicit parenthesis
		if curr ~= ")" and toks[count+2] ~= "(" then
			table.insert(toks,count,"(")
			table.insert(toks,count+4,")")
			return parser(toks,count+4,table.concat(toks))
		else
			return parser(toks,count+1,input)
		end
	elseif lookahead ~= nil then
		return parser(toks,count+1,input)
	else
		return toks
	end
end

-- Utilize a stack to get the corresponding right parenthesis
-- given the index of a left parenthesis
function getRParenIdx(input, leftIndex)
	local stack = {}
	for i = 1, #input do
		local char = input[i]
		if char == "(" then
			table.insert(stack, i)
		elseif char == ")" then
			if #stack == 0 then
				return nil
			else
				local leftParenIndex = table.remove(stack)
				if leftParenIndex == leftIndex then
					return i
				end
			end
		end
	end
	return nil
end

function findLParen (tokList)
	for i = 1, #tokList do
		if tokList[i] == "(" then
			return i
		end
	end
	error("Could not Find LParen")
end

function newLst (tokList,startIdx,endIdx)
	local newLst = {}
	local count = 1;
	for i = startIdx, endIdx do
		newLst[count] = tokList[i]
		count += 1
	end
	return table.concat(newLst)
end

-- This evaluator is right-descent recursive
function evalOp (toks,count)
	local curr = toks[count]
	local lookahead = toks[count+1]
	if curr == "(" then
		-- Get the start and end index of the nested expression
		local idxStart = findLParen(toks)
		local idxEnd = getRParenIdx(toks,idxStart)
		-- This is the actual nested expression
		local rmParens = newLst(toks,idxStart+1,idxEnd-1)
		-- This is what it evaluates to
		local expr = tonumber(evalOp(lexer(rmParens),1))
		-- This evaluates anything following the parenthesis
		local nextOp = {expr}
		local count = 2
		for i = idxEnd+1, #toks do
			nextOp[count] = toks[i]
			count += 1
		end
		print(table.concat(nextOp))
		return evalOp(nextOp,1)
	elseif lookahead == "+" then
		return tonumber(curr) + evalOp(toks,count+2)
	elseif lookahead == "-" then
		return tonumber(curr) - evalOp(toks,count+2)
	elseif lookahead == "*" then -- Add multiplication if lookahead is Right Parenthesis
		return tonumber(curr) * evalOp(toks,count+2)
	elseif lookahead == "/" then
		if tonumber(toks[count+2]) == 0 then
			error("Divide by Zero")
		else 
			return tonumber(curr) / evalOp(toks,count+2)
		end
	elseif curr == "-" then
		local ans1 = (0 - (evalOp({lookahead,0},count)))
		local nextOp = {ans1}
		for i = 2, #toks do
			nextOp[i] = toks[i+1]
		end
		return evalOp(nextOp,1)

	else
		return tonumber(curr)
	end
end


function Calc.out(str)
	local function errorHandler()
		return "Syntax Error"
	end
	local status, ret = xpcall(evalOp,errorHandler,parser(lexer(str),1),1)
	return ret
end

-- TESTING
strTest1 = "(7+(16*5)-2)" -- Test input
strTest2 = "65*0+5*3"
strSuperTest1 = "(((1+2)*3)+4)*5"
strSuperTest2 = "((1+2)*(3+4))*(5+6)"
strReallHardTest1 = "((1+2)*(3+4))*(5+6)-(7+8)*(9+10)"
strReallHardTest2 = "((1+2)*(3+4))*(5+6)-(7+8)*(9+10)+11"

return Calc





