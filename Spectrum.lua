-- Gui to Lua
-- Version: 3.2

-- Instances:

local Spectrum = Instance.new("ScreenGui")
local MainSpectrum = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Text = Instance.new("TextLabel")
local InfDig = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local AC = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local SexButton = Instance.new("ImageButton")
local KillAura = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local AutoTroph = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local ChangeMusic = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Esp = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

Spectrum.Name = "Spectrum"
Spectrum.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Spectrum.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainSpectrum.Name = "Main Spectrum"
MainSpectrum.Parent = Spectrum
MainSpectrum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainSpectrum.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainSpectrum.BorderSizePixel = 0
MainSpectrum.Position = UDim2.new(0.428251952, 0, 0.386038363, 0)
MainSpectrum.Size = UDim2.new(0, 197, 0, 285)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = MainSpectrum

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(4, 0, 67)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = MainSpectrum

Text.Name = "Text"
Text.Parent = MainSpectrum
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.248730958, 0, 0, 0)
Text.Size = UDim2.new(0, 96, 0, 23)
Text.Font = Enum.Font.GothamBold
Text.Text = "Spectrum"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

InfDig.Name = "Inf Dig"
InfDig.Parent = MainSpectrum
InfDig.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
InfDig.BackgroundTransparency = 0.500
InfDig.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfDig.BorderSizePixel = 0
InfDig.Position = UDim2.new(0.0355329961, 0, 0.263499469, 0)
InfDig.Size = UDim2.new(0, 183, 0, 35)
InfDig.Font = Enum.Font.GothamBold
InfDig.Text = "inf dig(R)"
InfDig.TextColor3 = Color3.fromRGB(255, 255, 255)
InfDig.TextSize = 15.000
InfDig.TextWrapped = true
InfDig.MouseButton1Click:Connect(function()
	local v2 = game
	local v1 = v2.ReplicatedStorage
	local v0 = v1.Remotes
	v2 = game
	local v4 = "Players"
	v2 = v2:GetService(v4)
	v1 = v2.LocalPlayer
	v2 = v1:GetMouse()
	local v3 = false

	local function checkTouching(p1)
		local v1 = Instance.new("Part")
		v1.Shape = Enum.PartType.Block
		v1.Size = Vector3.new(40, 40, 40) --this is the max size :sob:--
		v1.CanCollide = false
		v1.Position = p1
		v1.Transparency = 1
		v1.Anchored = true
		v1.Parent = v1.Character.Head

		v1.Touched:Connect(function() end)

		for _, v6 in pairs(v1:GetTouchingParts()) do
			local v7 = v6.Parent:FindFirstChild("Humanoid")
			if v7 or v6.Name == "Egg" or v6.Parent.Name == v1.Name or v6.Material == Enum.Material.Rock or v6.Material == Enum.Material.Concrete then
				v3 = true
			end
		end

		v1:Destroy()
		return
	end

	local function handleInput(input, gameProcessed)
		if gameProcessed then return end

		if input.KeyCode == Enum.KeyCode.R then --KEY HERE--
			local hitPosition = v2.Hit.p
			v0.Dig:FireServer(hitPosition, "Dig")
			checkTouching(hitPosition)
			if v3 then
				v0.Dig:FireServer(hitPosition, "Fill")
				v3 = false
			end
		end
	end

	local userInputService = game:GetService("UserInputService")
	userInputService.InputBegan:Connect(handleInput)

	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Infinite Dig", -- Required
		Text = "Infinite Dig Activated(Press R)", -- Required
		Icon = "rbxassetid://18459537596", -- Optional
		Duration = 6,
		Color = Color3.fromRGB(0, 0, 0),
	})
end)

UICorner_2.Parent = InfDig

AC.Name = "AC"
AC.Parent = MainSpectrum
AC.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
AC.BackgroundTransparency = 0.500
AC.BorderColor3 = Color3.fromRGB(0, 0, 0)
AC.BorderSizePixel = 0
AC.Position = UDim2.new(0.0355329961, 0, 0.410313755, 0)
AC.Size = UDim2.new(0, 183, 0, 35)
AC.Font = Enum.Font.GothamBold
AC.Text = "Remove Anti-Cheat"
AC.TextColor3 = Color3.fromRGB(255, 255, 255)
AC.TextSize = 15.000
AC.TextWrapped = true
AC.MouseButton1Click:Connect(function()
	local ACS = {"Anti", "anti", "Ac", "Anti-Cheat", "Anti Cheat", "AC", "ANTI Cheat", "AntiFly", "AntiSpeed", "AntiTP", "AntiTeleport", "AntiDex", "AntiDEX", "AntiFlight", "Anti Remote", "Anti Remote Manipulation"}
	local ignore = {"Animate", "Animation", "Attacks", "Bite", "Ability", "Abilities", "Anti Bang"}

	while true do
		local work = game.Workspace:GetDescendants()
		for _, v in pairs(work) do
			if v:IsA("LocalScript") then
				local shouldIgnore = false
				for _, ignoreName in pairs(ignore) do
					if string.find(v.Name, ignoreName) then
						shouldIgnore = true
						break
					end
				end

				if not shouldIgnore then
					for _, acsName in pairs(ACS) do
						if string.find(v.Name, acsName) then
							v:Destroy()

							local directory = ""
							local parent = v.Parent
							while parent ~= nil do
								directory = parent.Name .. "/" .. directory --useless lmao--
								parent = parent.Parent
							end
							directory = directory .. v.Name
							print("Anti-Cheat Detected and Destroyed: " .. v.Name .. " | Anti-Cheat Type = LocalScript" .. " | Searching For Other Anti-Cheats...")
							break
						end
					end
				end
			end
		end
		wait(0.5)
	end
end)

UICorner_3.Parent = AC

SexButton.Name = "Sex Button"
SexButton.Parent = MainSpectrum
SexButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SexButton.BackgroundTransparency = 1.000
SexButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SexButton.BorderSizePixel = 0
SexButton.Position = UDim2.new(0.883248746, 0, 0, 0)
SexButton.Size = UDim2.new(0, 23, 0, 23)
SexButton.Image = "rbxassetid://11419709766"

KillAura.Name = "KillAura"
KillAura.Parent = MainSpectrum
KillAura.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
KillAura.BackgroundTransparency = 0.500
KillAura.BorderColor3 = Color3.fromRGB(0, 0, 0)
KillAura.BorderSizePixel = 0
KillAura.Position = UDim2.new(0.0355329961, 0, 0.557128072, 0)
KillAura.Size = UDim2.new(0, 183, 0, 35)
KillAura.Font = Enum.Font.GothamBold
KillAura.Text = "KillAura"
KillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAura.TextSize = 15.000
KillAura.TextWrapped = true
KillAura.MouseButton1Click:Connect(function()
	local KillAura = script.Parent
	local killauraActive = false
	local connection = nil

	killauraActive = not killauraActive

	if killauraActive then
		local function kill()
			local function findClosestPlayer()
				local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				local closestPlayer = nil
				local shortestDistance = math.huge

				for _, player in pairs(game.Players:GetPlayers()) do
					if player ~= game.Players.LocalPlayer then
						local character = player.Character
						if character and character:FindFirstChild("HumanoidRootPart") then
							local distance = (myPosition - character.HumanoidRootPart.Position).magnitude
							if distance < shortestDistance then
								shortestDistance = distance
								closestPlayer = player
							end
						end
					end
				end

				return closestPlayer
			end

			local closestPlayer = findClosestPlayer()
			if closestPlayer then
				local BiteRemote = game:GetService('ReplicatedStorage').Remotes['Biterzzzzzz']
				BiteRemote:FireServer('heavy', closestPlayer.Character.Humanoid)
			end
		end

		KillAura.Text = "KillAura: ON"

		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "KillAura",
			Text = "Killaura Activated",
			Icon = "rbxassetid://18459537596",
			Duration = 6,
			Color = Color3.fromRGB(0, 0, 0),
		})

		connection = game:GetService("RunService").RenderStepped:Connect(kill)
	else
		if connection then
			connection:Disconnect()
			connection = nil
		end

		KillAura.Text = "KillAura: OFF"

		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "KillAura",
			Text = "Killaura Deactivated",
			Icon = "rbxassetid://18459537596",
			Duration = 6,
			Color = Color3.fromRGB(0, 0, 0),
		})
	end
end)

UICorner_4.Parent = KillAura

AutoTroph.Name = "Auto-Troph"
AutoTroph.Parent = MainSpectrum
AutoTroph.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
AutoTroph.BackgroundTransparency = 0.500
AutoTroph.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoTroph.BorderSizePixel = 0
AutoTroph.Position = UDim2.new(0.0355329961, 0, 0.701281965, 0)
AutoTroph.Size = UDim2.new(0, 183, 0, 35)
AutoTroph.Font = Enum.Font.GothamBold
AutoTroph.Text = "Auto-Troph"
AutoTroph.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoTroph.TextSize = 15.000
AutoTroph.TextWrapped = true
AutoTroph.MouseButton1Click:Connect(function()
	getgenv().fireproximityprompt = function(pp)
		local player = game.Players.LocalPlayer
		local character = player.Character
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

		if not humanoidRootPart then return end

		local oldPos = humanoidRootPart.CFrame
		local oldEnabled = pp.Enabled
		local oldHold = pp.HoldDuration
		local oldRLOS = pp.RequiresLineOfSight

		pp.Enabled = true
		pp.HoldDuration = 0
		pp.RequiresLineOfSight = false

		humanoidRootPart.CFrame = pp.Parent.CFrame
		wait(0.23)
		pp:InputHoldBegin()
		task.wait()
		pp:InputHoldEnd()
		wait(0.1)

		humanoidRootPart.CFrame = oldPos
		pp.Enabled = oldEnabled
		pp.HoldDuration = oldHold
		pp.RequiresLineOfSight = oldRLOS
	end

	local function checkAndFireProximityPrompt()
		local player = game.Players.LocalPlayer
		local character = player.Character

		if not character then return end

		for _, v in pairs(character:GetChildren()) do
			local food = v:FindFirstChild("Carrier")
			if food then
				local clicker = food:FindFirstChild("clicker")
				if clicker then
					fireproximityprompt(clicker) --dont work :(--
				end
			end
		end
	end

	game:GetService("RunService").RenderStepped:Connect(checkAndFireProximityPrompt)
end)

UICorner_5.Parent = AutoTroph

ChangeMusic.Name = "Change-Music"
ChangeMusic.Parent = MainSpectrum
ChangeMusic.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
ChangeMusic.BackgroundTransparency = 0.500
ChangeMusic.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChangeMusic.BorderSizePixel = 0
ChangeMusic.Position = UDim2.new(0.0355329961, 0, 0.845921338, 0)
ChangeMusic.Size = UDim2.new(0, 183, 0, 35)
ChangeMusic.Font = Enum.Font.GothamBold
ChangeMusic.Text = "Change-Music"
ChangeMusic.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeMusic.TextSize = 15.000
ChangeMusic.TextWrapped = true
ChangeMusic.MouseButton1Click:Connect(function()
	local music = game.Workspace.Music
	music.SoundId = "rbxassetid://18486685626" --Trap Remix--
	music.Playing = true
end)

UICorner_6.Parent = ChangeMusic

Esp.Name = "Esp"
Esp.Parent = MainSpectrum
Esp.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
Esp.BackgroundTransparency = 0.500
Esp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.0355329961, 0, 0.115576923, 0)
Esp.Size = UDim2.new(0, 183, 0, 35)
Esp.Font = Enum.Font.GothamBold
Esp.Text = "Ant Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextSize = 15.000
Esp.TextWrapped = true
Esp.MouseButton1Click:Connect(function()
	local Gaymers = game:GetService("Players")

	local function esp()
		for _, player in ipairs(Gaymers:GetPlayers()) do
			if player.Character and player ~= Gaymers.LocalPlayer then
				local character = player.Character
				local highlight = character:FindFirstChild("Racist Esp")

				if not highlight then
					highlight = Instance.new("Highlight")
					highlight.Name = "Racist Esp"
					highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					highlight.Parent = character
				end

				local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				if humanoidRootPart then
					highlight.FillColor = humanoidRootPart.Color
				end
			end
		end
	end
	game:GetService("RunService").Heartbeat:Connect(esp) --cool heartbeat function--
end)

UICorner_7.Parent = Esp

-- Scripts:

local function EIETTZ_fake_script() -- MainSpectrum.Drag 
	local script = Instance.new('LocalScript', MainSpectrum)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
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
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(EIETTZ_fake_script)()
local function RLZBN_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)

	local TweenService = game:GetService("TweenService")
	local part = script.Parent
	
	local tweenInfo = TweenInfo.new(
		2, -- Time
		Enum.EasingStyle.Linear, -- EasingStyle
		Enum.EasingDirection.InOut, -- EasingDirection
		-1, -- RepeatCount (negative for infinite)
		false -- Reverses the tween (should be false to prevent reversing)
	)
	
	local tweenGoal = {Rotation = part.Rotation + 360}
	
	local tween = TweenService:Create(part, tweenInfo, tweenGoal)
	
	-- Function to play the tween infinitely
	local function rotateInfinitely()
		tween:Play()
		tween.Completed:Connect(function()
			part.Rotation = 0
			tween:Play()
		end)
	end
	
	rotateInfinitely()
end
coroutine.wrap(RLZBN_fake_script)()
local function HKECO_fake_script() -- MainSpectrum.Animation&Stuff 
	local script = Instance.new('LocalScript', MainSpectrum)

	local TweenService = game:GetService("TweenService")
	local frame = script.Parent
	local corner = frame.UICorner
	local lbl = frame:GetDescendants()
	
	-- Set initial properties
	frame.Size = UDim2.new(0, 32, 0, 34)
	frame.Position = UDim2.new(0.488, 0, 0.478, 0)
	corner.CornerRadius = UDim.new(0, 15)
	frame["Sex Button"].ImageTransparency = 1
	
	-- Set initial transparency for all relevant descendants
	for _, v in pairs(lbl) do
		if v:IsA("GuiObject") then
			v.BackgroundTransparency = 1
			if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
				v.TextTransparency = 1
			end
		elseif v:IsA("ImageLabel") or v:IsA("ImageButton") then
			v.BackgroundTransparency = 1
		end
	end
	
	-- Tween goals
	local goalCorner = { CornerRadius = UDim.new(0, 4) }
	local goalFrame = {
		Size = UDim2.new(0, 197, 0, 285),
		Position = UDim2.new(0.433, 0, 0.392, 0)
	}
	
	-- Tween info
	local tweenInfo = TweenInfo.new(
		0.9,                            -- Time (seconds)
		Enum.EasingStyle.Linear,      -- Easing style
		Enum.EasingDirection.Out,     -- Easing direction
		0,                            -- Repeat count (0 = no repeat)
		false,                        -- Reverses (true = no)
		0                             -- Delay time
	)
	
	-- Create tweens
	local tweenCorner = TweenService:Create(corner, tweenInfo, goalCorner)
	local tweenSize = TweenService:Create(frame, tweenInfo, { Size = goalFrame.Size })
	local tweenPosition = TweenService:Create(frame, tweenInfo, { Position = goalFrame.Position })
	
	-- Play the corner radius tween first
	tweenCorner:Play()
	
	-- Function to handle GUI element transparency after position and size tweens complete
	local function onTweensCompleted()
		for _, v in pairs(lbl) do
			if v:IsA("GuiObject") then
				local backgroundTransparency = 0.5
				if v:IsA("TextLabel") or v:IsA("ImageButton") then
					backgroundTransparency = 1
				end
	
				local tweenBackground = TweenService:Create(v, tweenInfo, { BackgroundTransparency = backgroundTransparency })
				tweenBackground:Play()
	
				if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
					local tweenText = TweenService:Create(v, tweenInfo, { TextTransparency = 0 })
					tweenText:Play()
				elseif v:IsA("ImageLabel") or v:IsA("ImageButton") then
					v.BackgroundTransparency = 1
					v.ImageTransparency = 0
				end
			end
		end
	end
	
	-- Sequence the tweens
	tweenCorner.Completed:Connect(function()
		tweenSize:Play()
		tweenPosition:Play()
	end)
	
	tweenSize.Completed:Connect(onTweensCompleted)
	tweenPosition.Completed:Connect(onTweensCompleted)
	
	-- Wait and then send notification
	wait(4.2)
	
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Spectrum Loaded!", -- Required
		Text = "By spectrum_691", -- Required
		Icon = "rbxassetid://18459537596", -- Optional
		Duration = 6,
		Color = Color3.fromRGB(0, 0, 0),
	})
	
	print("Spectrum Successfully Loaded!")
end
coroutine.wrap(HKECO_fake_script)()
local function WNBQRX_fake_script() -- SexButton.LocalScript 
	local script = Instance.new('LocalScript', SexButton)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("CoreGui").Spectrum:Destroy()
	end)
end
coroutine.wrap(WNBQRX_fake_script)()
