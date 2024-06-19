-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local steammocking = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.451737463, 0, 0.427113712, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 0.750
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 5
TextLabel.Position = UDim2.new(1.18000031, 0, -0.469999999, 0)
TextLabel.Size = UDim2.new(0, 119, 0, 100)
TextLabel.Visible = false
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

steammocking.Name = "steammocking"
steammocking.Parent = Frame
steammocking.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
steammocking.BackgroundTransparency = 1.000
steammocking.BorderColor3 = Color3.fromRGB(0, 0, 0)
steammocking.BorderSizePixel = 0
steammocking.Position = UDim2.new(-0.00999999978, 0, 0, 0)
steammocking.Size = UDim2.new(0, 100, 0, 100)
steammocking.Image = "http://www.roblox.com/asset/?id=16157944907"

-- Scripts:

local function HCIGEP_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local middle = UDim2.new(0.452, 0, 0.427, 0)
	local set = UDim2.new(0, 0, 0.854, 0)
	local frame = script.Parent
	local steammocking = frame.steammocking
	local text = 'hi dis script wad made by ilikecat23 :3'
	
	task.spawn(function()
		frame.Position = middle
		steammocking.ImageTransparency = 1
	
		for transparency = 1, 0, -1/100 do
			steammocking.ImageTransparency = transparency
			task.wait(0.01)
		end
		task.wait(2)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(3, Enum.EasingStyle.Exponential), {Position = set}):Play()
		task.wait(4)
		frame.TextLabel.Visible = true
		for i = 1, #text do
			frame.TextLabel.Text = string.sub(text, 1, i)
			task.wait(0.05)
		end
	end)
	task.spawn(function()
		local rotv = 0
		repeat
			rotv+=0.05
			steammocking.Rotation = math.sin(rotv) * 4
			task.wait()
		until false
	end)
end
coroutine.wrap(HCIGEP_fake_script)()
local function ZMRXYC_fake_script() -- steammocking.LocalScript 
	local script = Instance.new('LocalScript', steammocking)

	local pos
	script.Parent.MouseButton1Click:Connect(function()
		warn('hi')
	end)
	
end
coroutine.wrap(ZMRXYC_fake_script)()
