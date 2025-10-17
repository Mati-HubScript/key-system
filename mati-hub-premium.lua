-- // MATI HUB PREMIUM SYSTEM V1 // --
-- LocalScript (StarterGui o StarterPlayerScripts)

-- SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRoot = character:WaitForChild("HumanoidRootPart")

-- UI ROOT
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MatiHubUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- BLUR EFFECT
local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = Lighting

-- // KEY UI
local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 320, 0, 220)
KeyFrame.Position = UDim2.new(0.5, -160, 0.5, -110)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = ScreenGui
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0, 20)
local strokeKF = Instance.new("UIStroke", KeyFrame)
strokeKF.Color = Color3.fromRGB(255, 215, 0)
strokeKF.Thickness = 2

local title = Instance.new("TextLabel")
title.Text = "🔑 MATI HUB PREMIUM"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Parent = KeyFrame

local keyBox = Instance.new("TextBox")
keyBox.PlaceholderText = "Enter your key..."
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 16
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
keyBox.Size = UDim2.new(0.9, 0, 0, 35)
keyBox.Position = UDim2.new(0.05, 0, 0.3, 0)
keyBox.Parent = KeyFrame
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 8)

local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Text = "Get Key"
getKeyBtn.Font = Enum.Font.GothamBold
getKeyBtn.TextSize = 16
getKeyBtn.TextColor3 = Color3.new(1, 1, 1)
getKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
getKeyBtn.Size = UDim2.new(0.4, 0, 0, 35)
getKeyBtn.Position = UDim2.new(0.05, 0, 0.6, 0)
getKeyBtn.Parent = KeyFrame
Instance.new("UICorner", getKeyBtn).CornerRadius = UDim.new(0, 8)

local checkKeyBtn = Instance.new("TextButton")
checkKeyBtn.Text = "Check Key"
checkKeyBtn.Font = Enum.Font.GothamBold
checkKeyBtn.TextSize = 16
checkKeyBtn.TextColor3 = Color3.new(1, 1, 1)
checkKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
checkKeyBtn.Size = UDim2.new(0.4, 0, 0, 35)
checkKeyBtn.Position = UDim2.new(0.55, 0, 0.6, 0)
checkKeyBtn.Parent = KeyFrame
Instance.new("UICorner", checkKeyBtn).CornerRadius = UDim.new(0, 8)

local linkBox = Instance.new("TextBox")
linkBox.Text = "https://github.com/Mati-HubScript/key-system/tree/main"
linkBox.Font = Enum.Font.Gotham
linkBox.TextSize = 12
linkBox.TextColor3 = Color3.fromRGB(255, 255, 255)
linkBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
linkBox.Size = UDim2.new(0.9, 0, 0, 25)
linkBox.Position = UDim2.new(0.05, 0, 0.82, 0)
linkBox.Visible = false
linkBox.ClearTextOnFocus = false
linkBox.Parent = KeyFrame
Instance.new("UICorner", linkBox).CornerRadius = UDim.new(0, 6)

getKeyBtn.MouseButton1Click:Connect(function()
	linkBox.Visible = not linkBox.Visible
end)

-- // MAIN HUB UI
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 220, 0, 300)
MainFrame.Position = UDim2.new(1, -230, 0, 80)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Visible = false
MainFrame.Parent = ScreenGui
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)
local strokeMF = Instance.new("UIStroke", MainFrame)
strokeMF.Color = Color3.fromRGB(255, 215, 0)
strokeMF.Thickness = 2

local function makeBtn(text, y)
	local btn = Instance.new("TextButton")
	btn.Text = text
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 16
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	btn.Size = UDim2.new(0.9, 0, 0, 40)
	btn.Position = UDim2.new(0.05, 0, y, 0)
	btn.Parent = MainFrame
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
	return btn
end

local tweenBtn = makeBtn("Tween Base", 0.02)
local infJumpBtn = makeBtn("Inf Jump", 0.22)
local partBtn = makeBtn("Part", 0.42)
local lowGfxBtn = makeBtn("Potato Grapichs 🥔", 0.62)
local fpsKillBtn = makeBtn("FPS Killer", 0.82)
local occlusionBtn = makeBtn("X-Ray", 1.02)

-- 👻 GHOST BUTTON
local ghostBtn = Instance.new("TextButton")
ghostBtn.Text = "👻"
ghostBtn.Font = Enum.Font.SourceSansBold
ghostBtn.TextSize = 40
ghostBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
ghostBtn.Position = UDim2.new(0.5,-25,0,20)
ghostBtn.Size = UDim2.new(0,50,0,50)
ghostBtn.Visible = false
ghostBtn.Parent = ScreenGui
Instance.new("UICorner", ghostBtn).CornerRadius = UDim.new(1,0)

-- Ghost animation
task.spawn(function()
	local rot=0
	while task.wait(0.02) do
		rot+=0.2
		ghostBtn.Rotation=rot
		local scale=1+0.15*math.sin(tick()*2)
		ghostBtn.TextSize=40*scale
		ghostBtn.TextColor3=Color3.fromRGB(255,100,100)
	end
end)

-- Menu toggle
local menuVisible=false
ghostBtn.MouseButton1Click:Connect(function()
	menuVisible = not menuVisible
	MainFrame.Visible = menuVisible
end)

-- Check Key
checkKeyBtn.MouseButton1Click:Connect(function()
	if keyBox.Text=="premium010812" then
		TweenService:Create(blur, TweenInfo.new(1), {Size=20}):Play()
		TweenService:Create(KeyFrame, TweenInfo.new(1, Enum.EasingStyle.Back), {Position=UDim2.new(0.5,-160,1.5,0)}):Play()
		task.wait(1)
		KeyFrame:Destroy()
		TweenService:Create(blur, TweenInfo.new(1.2), {Size=0}):Play()
		MainFrame.Visible=true
		ghostBtn.Visible=true
	else
		keyBox.Text="❌ Incorrect Key!"
	end
end)

-- Tween Base
local tweenActive,currentTween=false,nil
tweenBtn.MouseButton1Click:Connect(function()
	if tweenActive then
		tweenActive=false
		if currentTween then currentTween:Cancel() end
		tweenBtn.Text="Tween Base"
	else
		tweenActive=true
		tweenBtn.Text="Stop Tween"
		local spawnPoint=workspace:FindFirstChildOfClass("SpawnLocation")
		if spawnPoint then
			local distance=(humanoidRoot.Position-spawnPoint.Position).Magnitude
			local speed=16
			local time=distance/speed
			currentTween=TweenService:Create(humanoidRoot,TweenInfo.new(time,Enum.EasingStyle.Linear),{CFrame=spawnPoint.CFrame+Vector3.new(0,3,0)})
			currentTween:Play()
			currentTween.Completed:Wait()
		end
		tweenActive=false
		tweenBtn.Text="Tween Base"
	end
end)

-- Inf Jump
local infJump=false
infJumpBtn.MouseButton1Click:Connect(function()
	infJump=not infJump
	infJumpBtn.Text=infJump and "Inf Jump ✅" or "Inf Jump"
end)
UIS.JumpRequest:Connect(function()
	if infJump then
		player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
	end
end)

-- Part Follow
local partActive,part=nil,nil
partBtn.MouseButton1Click:Connect(function()
	partActive=not partActive
	partBtn.Text=partActive and "Part ✅" or "Part"
	if partActive then
		part=Instance.new("Part")
		part.Size=Vector3.new(6,1,6)
		part.Anchored=true
		part.CanCollide=true
		part.Material=Enum.Material.Neon
		part.Color=Color3.fromRGB(255,255,150)
		part.Parent=workspace
		task.spawn(function()
			while partActive and humanoidRoot do
				part.Position=Vector3.new(humanoidRoot.Position.X, part.Position.Y+0.25, humanoidRoot.Position.Z)
				task.wait(0.03)
			end
			if part then part:Destroy() end
		end)
	else
		if part then part:Destroy() end
	end
end)

-- Potato Mode 🥔
lowGfxBtn.MouseButton1Click:Connect(function()
	Lighting.Brightness=1
	Lighting.Ambient=Color3.fromRGB(128,128,128)
	Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128)
	Lighting.ClockTime=12
	Lighting.FogEnd=1000
	Lighting.FogColor=Color3.fromRGB(100,100,100)
	Lighting.GlobalShadows=false
	for _,obj in pairs(workspace:GetDescendants()) do
		if obj:IsA("BasePart") then
			obj.Material=Enum.Material.Plastic
			obj.Color=Color3.fromRGB(128,128,128)
			obj.Reflectance=0
		end
		if obj:IsA("Animator") or obj:IsA("AnimationController") then obj:Destroy() end
		if obj:IsA("Humanoid") then
			for _,track in pairs(obj:GetPlayingAnimationTracks()) do track:Stop() end
		end
	end
	for _,part in pairs(player.Character:GetDescendants()) do
		if part:IsA("Animator") or part:IsA("AnimationController") then part:Destroy() end
	end
end)

-- FPS Killer
local fpsActive=false
fpsKillBtn.MouseButton1Click:Connect(function()
	fpsActive=not fpsActive
	fpsKillBtn.Text=fpsActive and "FPS Killer ✅" or "FPS Killer"
	task.spawn(function()
		while fpsActive do
			local backpack=player:FindFirstChildOfClass("Backpack")
			if backpack then
				local tools=backpack:GetChildren()
				for i=0,math.min(#tools,10192830918230981230980) do
					if player.Character and player.Character:FindFirstChild("Humanoid") then
						player.Character.Humanoid:EquipTool(tools[i])
					end
				end
			end
			task.wait(0.00)
		end
	end)
end)

-- Occlusion (semipermeable)
local occlusionActive=false
occlusionBtn.MouseButton1Click:Connect(function()
	occlusionActive=not occlusionActive
	occlusionBtn.Text=occlusionActive and "Xray ✅" or "Xray Toggle"
end)

RunService:BindToRenderStep("OcclusionGlobal",301,function()
	for _,obj in pairs(workspace:GetDescendants()) do
		if obj:IsA("BasePart") and obj~=humanoidRoot then
			obj.Transparency=occlusionActive and 0.6 or 0
		end
	end
end)
