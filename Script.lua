local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local getkey = Instance.new("TextButton")
local checkkey = Instance.new("TextButton")
local input = Instance.new("TextBox")

gui.Name = "getkey"
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Parent = gui
checkkey.Parent = frame
getkey.Parent = frame
input.Parent = frame

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
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nickils/executor/main/script.lua"))()
	wait(0)
	gui:Destroy()
	end
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
