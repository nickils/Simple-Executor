local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local getkey = Instance.new("TextButton")
local checkkey = Instance.new("TextButton")
local close = Instance.new("TextButton")
local input = Instance.new("TextBox")

gui.Name = "getkey"
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Parent = gui
checkkey.Parent = frame
getkey.Parent = frame
input.Parent = frame
close.Parent = frame

frame.Size = UDim2.new(0, 320,0, 142)
frame.Position = UDim2.new(-0.016, 356,0.278, 111)
frame.BackgroundColor3 = Color3.fromRGB(10, 21, 31)

checkkey.TextColor3 = Color3.new(1, 1, 1)
checkkey.Size = UDim2.new(0, 160,0, 24)
checkkey.Position = UDim2.new(0.5, 0,0.825, 0)
checkkey.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
checkkey.Text = "Check Key"

getkey.TextColor3 = Color3.new(1, 1, 1)
getkey.Size = UDim2.new(0, 160,0, 24)
getkey.Position = UDim2.new(0, 0,0.825, 0)
getkey.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
getkey.Text = "Get Key"

close.TextColor3 = Color3.new(1, 1, 1)
close.Size = UDim2.new(0, 53,0, 20)
close.Position = UDim2.new(0.834, 0,-0.006, 0)
close.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
close.Text = "Close"

input.TextColor3 = Color3.new(1, 1, 1)
input.Size = UDim2.new(0, 320,0, 97)
input.Position = UDim2.new(0, 0,0.139, 0)
input.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
input.TextWrapped = true
input.PlaceholderText = "Type Key Here"
input.MultiLine = true
input.ClearTextOnFocus = false
input.Text = ""

checkkey.MouseButton1Down:Connect(function() 
	if input.Text == "mdyla13k8an3a02" then
	local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local executebutton = Instance.new("TextButton")
local close = Instance.new("TextButton")
local clear = Instance.new("TextButton")
local input = Instance.new("TextBox")
local output = Instance.new("TextBox")
local text = Instance.new("TextLabel")

gui.Name = "executor"
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
clear.Parent = frame
close.Parent = frame
text.Parent = frame

frame.Parent = gui
executebutton.Parent = gui:WaitForChild("Frame")
input.Parent = gui:WaitForChild("Frame")

frame.Size = UDim2.new(0, 320,0, 311)
frame.Position = UDim2.new(-0.016, 356,0.042, 111)
frame.BackgroundColor3 = Color3.fromRGB(10, 21, 31)

input.TextColor3 = Color3.new(1, 1, 1)
input.Size = UDim2.new(0, 320,0, 191)
input.Position = UDim2.new(0, 0,0.081, 0)
input.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
input.TextWrapped = true
input.PlaceholderText = "Type Script Here"
input.MultiLine = true
input.ClearTextOnFocus = false
input.TextXAlignment = "Left"
input.TextYAlignment = "Top"
input.Text = ""

output.Parent = frame
output.TextColor3 = Color3.new(1, 1, 1)
output.Size = UDim2.new(0, 320,0, 70)
output.Position = UDim2.new(0, 0,0.772, 0)
output.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
output.PlaceholderText = "Output: "
output.TextEditable = false
output.TextXAlignment = "Left"
output.TextYAlignment = "Center"
output.Text = "Output: "

executebutton.TextColor3 = Color3.new(1, 1, 1)
executebutton.Size = UDim2.new(0, 160,0, 24)
executebutton.Position = UDim2.new(0, 0, 0.695, 0)
executebutton.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
executebutton.Text = "Execute"

text.TextColor3 = Color3.new(1, 1, 1)
text.Size = UDim2.new(0, 112,0, 23)
text.Position = UDim2.new(0, 0,0, 0)
text.BackgroundTransparency = 1
text.Text = "Simple Executor V1.4"

clear.TextColor3 = Color3.new(1, 1, 1)
clear.Size = UDim2.new(0, 160,0, 24)
clear.Position = UDim2.new(0.5, 0,0.695, 0)
clear.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
clear.Text = "Clear"

close.TextColor3 = Color3.new(1, 1, 1)
close.Size = UDim2.new(0, 44,0, 24)
close.Position = UDim2.new(0.863, 0,-0.003, 0)
close.BackgroundColor3 = Color3.fromRGB(41, 43, 44)
close.Text = "Close"

executebutton.MouseButton1Down:Connect(function() 
	loadstring(input.Text)()
	wait(0.1)
	output.Text = "Output: Script executed successfully"
	print("Executed : SIMPLE EXECUTOR")
	wait(1)
	output.Text = "Output: "
end)

clear.MouseButton1Down:Connect(function() 
	input.Text = ""
	output.Text = "Output: Cleaned successfully"
	print("Cleaned : SIMPLE EXECUTOR")
	wait(1)
	output.Text = "Output: "
end)

close.MouseButton1Down:Connect(function()
	output.Text = "Output: Destroying.."
	wait(0.3)
	print("Destroyed : SIMPLE EXECUTOR")
	gui:Destroy()
end)

local function SZFCN_fake_script() -- window.Dragify 
	local script = Instance.new('LocalScript', frame)

	local UserInputService = game:GetService("UserInputService")

	local gui = script.Parent

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(SZFCN_fake_script)()

print("Simple Executor Loaded : SIMPLE EXECUTOR")
game.StarterGui:SetCore("SendNotification",{
	Title = "Simple Executor Loaded";
	Text = "Loaded Succes";
})


































































































































































































































































































































































-- bro why are u here?
	wait(0.1)
	gui:Destroy()
	end
end)
close.MouseButton1Down:Connect(function() 
		gui:Destroy()
end)
getkey.MouseButton1Down:Connect(function() 
	input.Text = "Key Link: https://linkvertise.com/1225042/sekey?o=sharing"
end)

local function SZFCN_fake_script() -- window.Dragify 
	local script = Instance.new('LocalScript', frame)

	local UserInputService = game:GetService("UserInputService")

	local gui = script.Parent

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(SZFCN_fake_script)()

print("Simple Executor Loaded : SIMPLE EXECUTOR")
game.StarterGui:SetCore("SendNotification",{
	Title = "Simple Executor Key System Loaded";
	Text = "Loaded Succes";
})
