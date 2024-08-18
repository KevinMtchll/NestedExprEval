-- This code integrates with Roblox Studio
local CalculatorGui = script.Parent
local Keypad = CalculatorGui.Keypad
local Calc = require(CalculatorGui.Calc)
inputString = ""
prevAns = 0


-- Exit Button
CalculatorGui.Keypad.ExitButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.ExitButton
	end
end)
CalculatorGui.Keypad.ExitButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.ExitButton
end)
CalculatorGui.Keypad.ExitButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.ExitButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.ExitButton.ClickImage.Parent = workspace.Storage
	end
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.ExitButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.ExitButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.ExitButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.ExitButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.ExitButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.ExitButton.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- Clear Button
CalculatorGui.Keypad.ClearButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.ClearButton
	end
end)
CalculatorGui.Keypad.ClearButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.ClearButton
end)
CalculatorGui.Keypad.ClearButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.ClearButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.ClearButton.ClickImage.Parent = workspace.Storage
	end
	inputString = ""
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.ClearButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.ClearButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.ClearButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.ClearButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.ClearButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.ClearButton.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- RParen Button
CalculatorGui.Keypad.RParen.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.RParen
	end
end)
CalculatorGui.Keypad.RParen.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.RParen
end)
CalculatorGui.Keypad.RParen.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.RParen:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.RParen.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. ")"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.RParen.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.RParen:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.RParen.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.RParen.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.RParen:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.RParen.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- LParen Button
CalculatorGui.Keypad.LParen.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.LParen
	end
end)
CalculatorGui.Keypad.LParen.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.LParen
end)
CalculatorGui.Keypad.LParen.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.LParen:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.LParen.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "("
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.LParen.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.LParen:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.LParen.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.LParen.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.LParen:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.LParen.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- Plus Button
CalculatorGui.Keypad.PlusButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.PlusButton
	end
end)
CalculatorGui.Keypad.PlusButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.PlusButton
end)
CalculatorGui.Keypad.PlusButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.PlusButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.PlusButton.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "+"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.PlusButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.PlusButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.PlusButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.PlusButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.PlusButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.PlusButton.HoverImage.Parent = workspace.Storage
		end
	end
end)


-- Divide Button
CalculatorGui.Keypad.DivisionButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.DivisionButton
	end
end)
CalculatorGui.Keypad.DivisionButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.DivisionButton
end)
CalculatorGui.Keypad.DivisionButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.DivisionButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.DivisionButton.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "/"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.DivisionButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.DivisionButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.DivisionButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.DivisionButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.DivisionButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.DivisionButton.HoverImage.Parent = workspace.Storage
		end
	end
end)

-- Multiply Button
CalculatorGui.Keypad.MultiplyButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.MultiplyButton
	end
end)
CalculatorGui.Keypad.MultiplyButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.MultiplyButton
end)
CalculatorGui.Keypad.MultiplyButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.MultiplyButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.MultiplyButton.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "*"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.MultiplyButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.MultiplyButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.MultiplyButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.MultiplyButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.MultiplyButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.MultiplyButton.HoverImage.Parent = workspace.Storage
		end
	end
end)

-- Minus Button
CalculatorGui.Keypad.MinusButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.MinusButton
	end
end)
CalculatorGui.Keypad.MinusButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.MinusButton
end)
CalculatorGui.Keypad.MinusButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.MinusButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.MinusButton.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "-"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.MinusButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.MinusButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.MinusButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.MinusButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.MinusButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.MinusButton.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 0 Button
CalculatorGui.Keypad.Button_0.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_0
	end
end)
CalculatorGui.Keypad.Button_0.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_0
end)
CalculatorGui.Keypad.Button_0.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_0:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_0.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "0"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_0.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_0:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_0.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_0.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_0:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_0.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 1 Button
CalculatorGui.Keypad.Button_1.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_1
	end
end)
CalculatorGui.Keypad.Button_1.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_1
end)
CalculatorGui.Keypad.Button_1.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_1:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_1.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "1"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_1.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_1:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_1.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_1.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_1:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_1.HoverImage.Parent = workspace.Storage
		end
	end
end)

-- 2 Button
CalculatorGui.Keypad.Button_2.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_2
	end
end)
CalculatorGui.Keypad.Button_2.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_2
end)
CalculatorGui.Keypad.Button_2.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_2:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_2.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "2"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_2.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_2:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_2.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_2.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_2:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_2.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 3 Button
CalculatorGui.Keypad.Button_3.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_3
	end
end)
CalculatorGui.Keypad.Button_3.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_3
end)
CalculatorGui.Keypad.Button_3.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_3:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_3.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "3"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_3.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_3:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_3.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_3.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_3:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_3.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 4 Button
CalculatorGui.Keypad.Button_4.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_4
	end
end)
CalculatorGui.Keypad.Button_4.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_4
end)
CalculatorGui.Keypad.Button_4.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_4:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_4.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "4"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_4.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_4:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_4.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_4.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_4:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_4.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 5 Button
CalculatorGui.Keypad.Button_5.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_5
	end
end)
CalculatorGui.Keypad.Button_5.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_5
end)
CalculatorGui.Keypad.Button_5.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_5:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_5.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "5"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_5.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_5:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_5.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_5.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_5:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_5.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 6 Button
CalculatorGui.Keypad.Button_6.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_6
	end
end)
CalculatorGui.Keypad.Button_6.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_6
end)
CalculatorGui.Keypad.Button_6.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_6:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_6.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "6"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_6.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_6:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_6.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_6.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_6:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_6.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 7 Button
CalculatorGui.Keypad.Button_7.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_7
	end
end)
CalculatorGui.Keypad.Button_7.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_7
end)
CalculatorGui.Keypad.Button_7.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_7:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_7.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "7"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_7.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_7:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_7.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_7.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_7:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_7.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 8 Button
CalculatorGui.Keypad.Button_8.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_8
	end
end)
CalculatorGui.Keypad.Button_8.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_8
end)
CalculatorGui.Keypad.Button_8.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_8:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_8.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "8"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_8.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_8:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_8.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_8.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_8:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_8.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- 9 Button
CalculatorGui.Keypad.Button_9.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.Button_9
	end
end)
CalculatorGui.Keypad.Button_9.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.Button_9
end)
CalculatorGui.Keypad.Button_9.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.Button_9:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_9.ClickImage.Parent = workspace.Storage
	end
	inputString = inputString .. "9"
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.Button_9.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.Button_9:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.Button_9.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.Button_9.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.Button_9:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.Button_9.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- Enter Button
CalculatorGui.Keypad.EnterButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.EnterButton
	end
end)
CalculatorGui.Keypad.EnterButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.EnterButton
end)
CalculatorGui.Keypad.EnterButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.EnterButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.EnterButton.ClickImage.Parent = workspace.Storage
	end
	local ans = Calc.out(inputString)
	prevAns = ans
	if prevAns ~= nil then
		CalculatorGui.Keypad.InputBar.Text = ""
		wait(0.01)
		CalculatorGui.Keypad.InputBar.Text = prevAns
		inputString = prevAns
	else
		prevAns = 0
		inputString = prevAns
		CalculatorGui.Keypad.InputBar.Text = prevAns
	end
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.EnterButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.EnterButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.EnterButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.EnterButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.EnterButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.EnterButton.HoverImage.Parent = workspace.Storage
		end
	end
end)



-- Ans Button
CalculatorGui.Keypad.AnsButton.MouseMoved:Connect(function()
	if workspace.Storage:FindFirstChild("HoverImage") then
		workspace.Storage.HoverImage.Parent = CalculatorGui.Keypad.AnsButton
	end
end)
CalculatorGui.Keypad.AnsButton.MouseButton1Down:Connect(function()
	workspace.Storage.ClickDown.Playing = true
	workspace.Storage.ClickImage.Parent = CalculatorGui.Keypad.AnsButton
end)
CalculatorGui.Keypad.AnsButton.MouseButton1Up:Connect(function()
	if CalculatorGui.Keypad.AnsButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.AnsButton.ClickImage.Parent = workspace.Storage
	end
	inputString = prevAns
	CalculatorGui.Keypad.InputBar.Text = inputString
	wait(0.05)
	workspace.Storage.Click1.Playing = true
end)
CalculatorGui.Keypad.AnsButton.MouseLeave:Connect(function()
	if CalculatorGui.Keypad.AnsButton:FindFirstChild("ClickImage") then
		CalculatorGui.Keypad.AnsButton.HoverImage.Parent = workspace.Storage
		CalculatorGui.Keypad.AnsButton.ClickImage.Parent = workspace.Storage
		wait(0.05)
		workspace.Storage.Click1.Playing = true
	else
		if CalculatorGui.Keypad.AnsButton:FindFirstChild("HoverImage") then
			CalculatorGui.Keypad.AnsButton.HoverImage.Parent = workspace.Storage
		end
	end
end)
