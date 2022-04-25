--Script made by Nitori#6797
--if you wanna skid it atleast give me credits
--Skills
--1. Air Launch 
--2. GBlink
--3. Punching Spree
--4. Energy Smack
--5. NOW ITS OUR TURN!
--6. Barrage
--7. Combo Extender (yes.)
--8. Exp for u (lock on to some random frisk then press 8)
--9. Self Destruct (Kills you even if you dont land it so be sure to use it at the right time)
--Disclaimer : Dont add remote slashes, it wont work (i think) due to move suppression
--My screen is small so the gui might be smaller for u

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait(0.5)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled", true})
wait(1)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
wait(0.1)
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://4576074471"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://4900761581"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4370512420"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId = "rbxassetid://4087647775"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId = "rbxassetid://6136052357"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://6994379430"

game.Players.LocalPlayer.Character.ForceField:Destroy()

local battling = Instance.new("BoolValue")
battling.Name = "Battling"
battling.Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 120

--Character Shirt/Pants Changer

local shirt = game.Players.LocalPlayer.Character:FindFirstChild("Shirt");
local pants = game.Players.LocalPlayer.Character:FindFirstChild("Pants");

shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=4814086540"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=4814086789"

--Non Fe Hair (Gogeta)

local head = game.Players.LocalPlayer.Character.Head
local part = Instance.new("Part")
local mesh = Instance.new("SpecialMesh")
local weld = Instance.new("WeldConstraint")
part.Size = Vector3.new(1,1,1)
part.CanCollide = false
part.CanTouch = false
part.CanQuery = false
part.Color = Color3.fromRGB(230, 216, 14)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://432528331"
mesh.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh.Parent = part
weld.Part0 = head
part.CFrame = head.CFrame * CFrame.new(0,0.56,0.20)
weld.Part1 = part
weld.Parent = part
part.Parent = head.Parent
part.Name = "SSJ"

--Lock On (Yes.)

local Lock1 = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
Lock1.Name = "Lock"
local text2 = Instance.new("TextLabel",Lock1)
text2.Size = UDim2.new(1,0,1,0)
text2.Font = "Arcade"
text2.BackgroundTransparency = 1
text2.Position = UDim2.new(0,0,-0.2,0)
text2.TextXAlignment = "Left"
text2.TextColor3 = Color3.new(1,1,1)
text2.TextSize = 45
text2.Text = "Lock: "..tostring(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value)
game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Changed:Connect(function()
text2.Text = "Lock: "..tostring(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value) 
end)

--Folders For aura ;p

local folder = game:GetObjects('rbxassetid://8984281170')[1]
folder.Parent = game.Players.LocalPlayer.Character

local folder = game:GetObjects('rbxassetid://8942930992')[1]
folder.Parent = game.Players.LocalPlayer.Character

spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.Folder:GetChildren()) do
if v.Name == 'Natural' then
clone1 = v:Clone()
clone1.Parent = char.Torso
clone1.CFrame = char.Torso
clone1.Anchored = false
weld = Instance.new('Weld',clone1)
weld.Part0 = clone1
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.Folder:GetChildren()) do
if v.Name == 'Over Glow' then
clone1 = v:Clone()
clone1.Parent = char.Torso
clone1.CFrame = char.Torso
clone1.Anchored = false
weld = Instance.new('Weld',clone1)
weld.Part0 = clone1
weld.Part1 = char['Torso']
end
end
end)

--Removing Stuff From Char

local Player = game.Players.LocalPlayer
local Backpack = Player.Backpack
Player.Character.HateArm:Remove()
Player.Character.HeartLocket:Remove()
Player.Character.CharaHead:Remove()
Player.Character.RealKnife:Remove()

wait(1)

--Attack Changes

game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4906030889"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4929670790"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4929665831"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4929661098"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906108508"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776260400"

--Ui Changes


local plr = game.Players.LocalPlayer
local name = plr.Name
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("HealthBar") then
local HealthBar = Instance.new("ScreenGui")
local BackHealth = Instance.new("Frame")
local Health = Instance.new("Frame")

HealthBar.Name = "HealthBar"
HealthBar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HealthBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BackHealth.Name = "BackHealth"
BackHealth.Parent = HealthBar
BackHealth.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
BackHealth.BorderSizePixel = 0
BackHealth.Rotation = 90
BackHealth.Position = UDim2.new(0, 1000, 0, 450)
BackHealth.Size = UDim2.new(0, 580, 0, 15)

Health.Name = "Health"
Health.Parent = BackHealth
Health.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Health.BorderColor3 = Color3.fromRGB(0, 255, 0)
Health.BorderSizePixel = 0
Health.Size = UDim2.new(1, 0, 1, 0)
end
game.Workspace[tostring(name)].Humanoid.HealthChanged:Connect(function(Damage)
game.Players.LocalPlayer.PlayerGui.HealthBar.BackHealth.Health:TweenSize(UDim2.new(Damage / game.Workspace[tostring(name)].Humanoid.MaxHealth, 0, 1, 0))
end)
end)

game.Lighting:ClearAllChildren()
game:GetService("Players").LocalPlayer.PlayerScripts.Music.Stop:Fire()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar.ImageLabel:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Mana"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.BorderColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.TextColor3 = Color3.fromRGB(255, 129, 2)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Position = UDim2.new(0, 1210, 0, 360)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Rotation = -90
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Stamina"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.BorderColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.TextColor3 = Color3.fromRGB(88, 242, 255)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Position = UDim2.new(0, 1160, 0, 390)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Rotation = -90
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Rotation = 90
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Position = UDim2.new(0, 1050, 0, 485)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Size = UDim2.new(0, 580, 0, 15)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Rotation = 90
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Position = UDim2.new(0, 1100, 0, 485)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Size = UDim2.new(0, 580, 0, 15)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLog.Text = "Health"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLog.Rotation = -90
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLog.TextColor3 = Color3.fromRGB(0, 255, 0)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLog.Size = UDim2.new(0, 152, 0, 150)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLog.Position = UDim2.new(0, 1185, 0, 410)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.DamageShower.Position = UDim2.new(0, -20, 0, -300)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.SettingsButton:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo2:Destroy()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()

local UICorner = Instance.new("UICorner")
UICorner.Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar
UICorner:Clone().Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar
UICorner:Clone().Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar
UICorner:Clone().Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar
UICorner:Clone().Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild('HealthBar').BackHealth
UICorner:Clone().Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild('HealthBar').BackHealth.Health


--Flashes

function FWhiteFlash()
char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
if v.Name == 'ShortWhiteScreen2' then
    clone = v:Clone()
    clone.Parent = char
end
end
end

function SFWhiteFlash()
char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
if v.Name == 'ShortWhiteScreen' then
    clone = v:Clone()
    clone.Parent = char
end
end
end

--no moves (able to bind keybinds on numbers)

local MoveSupression = Instance.new('StringValue')
MoveSupression.Name = 'MoveDebounce'
MoveSupression.Parent = workspace.ServerEffects.ServerCooldown[game.Players.LocalPlayer.Name]

--Running Camera Shaker

local ts = game:GetService("TweenService")

local player = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")

local char = player.Character
local hum = char:WaitForChild("Humanoid")
local hrp = hum.RootPart

local playing, completed = Enum.PlaybackState.Playing, Enum.PlaybackState.Completed
local style, dir = Enum.EasingStyle.Sine, Enum.EasingDirection.InOut

local sin = Instance.new("NumberValue") 
local isSprinting = Instance.new("BoolValue")

local dur, durSprint = 0.3, 0.3


local ti, tiSprint = TweenInfo.new(dur, style, dir, 0, true), TweenInfo.new(durSprint, style, dir, 0, true)
local oneTween, oneSprintTween = ts:Create(sin, ti, {Value = 1}), ts:Create(sin, tiSprint, {Value = 1})

local offset, maxRandomBounds = 0.8, 0.8

local point0, point2 = Vector3.new(offset, 0, 0), Vector3.new(-offset, 0, 0) 

local point1 = Vector3.new(0, -offset, 0)

local ti2 = TweenInfo.new(dur / 1.6, style, dir)

local tweenBack = ts:Create(hum, ti2, {CameraOffset = Vector3.new(0, 0, 0)})

local begTween = ts:Create(hum, ti2, {CameraOffset = point0})

local counter, counterInc = 1, 0.1

local running = false

local function curve(t, p0, p1, p2)
	
	if t == 0 then return p0 elseif t == 1 then return p2 end

	return (((1 - t)^2) * p0) + (2 * (1 - t) * t * p1) + (t^2 * p2)
	
end

local function sprint()
	
	if oneTween.PlaybackState ~= playing and isSprinting.Value == false then 
			
		oneTween:Play()
				
	end
			
	if oneSprintTween.PlaybackState ~= playing and isSprinting.Value == true then
			
    
		oneSprintTween:Play()
				
	end
	
end
game:GetService("RunService").RenderStepped:Connect(function(deltaTime)	

	if hum.MoveDirection:Dot(hum.MoveDirection) > 0 then
	
		if (not running) then begTween:Play() running = true end

		if begTween.PlaybackState == completed then 
			
			if sin.Value == 0 then
				
				counter = counter + counterInc

				point1 = Vector3.new(math.clamp(math.noise(counter), -maxRandomBounds, maxRandomBounds), -offset, 0)
				
				local coro = coroutine.wrap(sprint) 
				coro()
				
			end

			hum.CameraOffset = curve(sin.Value, point0, point1, point2)
				
		end
			
	else
					
		tweenBack:Play()
		oneTween:Cancel()
		oneSprintTween:Cancel()
		sin.Value = 0
		running = false
			
	end
			
end)

--For Effects To Work

char = game.Players.LocalPlayer.Character
function effect(name,offset,color,s,rotation)
    local effect = game:GetService("ReplicatedStorage").Effects[name]:Clone()
    effect.Parent = char
    for _,v in pairs(effect:GetDescendants()) do
        spawn(function()
            Angle = rotation
             v.CFrame = char.HumanoidRootPart.CFrame*offset*Angle
        end)
        spawn(function()
            if v:IsA('ParticleEmitter') then
            v.Color = ColorSequence.new(color)
            else
            v.Color = color
            end
        end)
        spawn(function()
            v.Size = v.Size*s
        end)
    end
end

--Skills

local debounce = true 
local cooldown = 7
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.One
    if key.KeyCode == button then
       if debounce then 
          print("combo pro") 
          debounce = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820780935"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
        ["Velocity"] = Vector3.new(0, 15, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 8, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

wait(0.7)

char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,17,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 8
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 2500 
v2.P = 60000 
v2.Position = (tar).p

wait(0.2)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5858687214"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.9)
k.TimePosition = 1.2
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt, 
        ["Velocity"] = Vector3.new(0, -55, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
v2:Destroy()
wait(0.4)
char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,-3,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 8
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 2500 
v2.P = 60000 
v2.Position = (tar).p
wait(0.1)
v2:Destroy()
wait(0.1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          wait(cooldown)
          debounce = true            
       end
    end
end)

local debounce2 = true 
local cooldown2 = 16
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Two
    if key.KeyCode == button then
       if debounce2 then 
          print("busted.") 
          debounce2 = false
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4410872946"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 0.4

wait(0.3)

effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 5, CFrame.Angles(math.rad(0),820,0))

wait(0.3)
k:Stop()
    
FWhiteFlash()
    
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5802160580"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame * CFrame.new(0,0,5) * CFrame.Angles(0,math.rad(0),0)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1

wait(0.3)

game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
game.Workspace.CurrentCamera.CameraType = "Orbital"

game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.UnLock.Value = true
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true, 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true, 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true, 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true, 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["CombatInv"] = true,        
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback",
        ["CombatInv"] = true,
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 0, CFrame.Angles(math.rad(0),820,0))
effect("Dash", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(90),0,0))
effect("BigSlam", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(90),0,0))

wait(0.5)

SFWhiteFlash()

game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character

game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.UnLock.Value = false
game.Workspace.CurrentCamera.CameraType = "Custom"

k:Stop()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end)
end
          wait(cooldown2)
          debounce2 = true            
       end
    end
end)

local debounce3 = true 
local cooldown3 = 6
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Three
    if key.KeyCode == button then
       if debounce3 then 
          print("starter combo hehe") 
          debounce3 = false
for i = 0, 1, 1 do          
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929684994"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.4
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
wait(0.3)
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929688526"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.2
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
wait(0.3)
for i = 0, 1, 1 do          
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929723918"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.1
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
wait(0.3)
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929665831"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.1
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
wait(0.3)
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929670790"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.1
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
wait(0.4)
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5776243290"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
k.TimePosition = 0.1
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
          wait(cooldown3)
          debounce3 = true            
       end
    end
end)

local debounce4 = true 
local cooldown4 = 5
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Four
    if key.KeyCode == button then
       if debounce4 then 
          print("Blaster?") 
          debounce4 = false
for i = 0, 1, 1 do
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4905914802"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 1
wait(0.2)
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
k:AdjustSpeed(0)
wait(0.1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.9, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 0, CFrame.Angles(math.rad(0),820,0))
effect("Dash", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(90),0,0))
effect("BigSlam", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(90),0,0))
k:AdjustSpeed(1)
end)
end
          wait(cooldown4)
          debounce4 = true            
       end
    end
end)

--Gogeta Ult 1

local debounce5 = true 
local cooldown5 = 16
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Five
    if key.KeyCode == button then
       if debounce5 then 
          print("ultimate be like") 
          debounce5 = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7018905078"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5776233108"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929673252"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 0.1
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929684994"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7499555702"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4575857193"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 0.3
wait(0.1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
        ["Velocity"] = Vector3.new(0, 80, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 40
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,0.001,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -15
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 2500 
v2.P = 60000 
v2.Position = (tar).p
k:Stop()
wait(0.2)
v2:Destroy()
wait(1.5)
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
          wait(cooldown5)
          debounce5 = true            
       end
    end
end)

--Vanish/Teleport

local debounce = true 
local cooldown = 1
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.R
    if key.KeyCode == button then
       if debounce then 
          print("Vanish?") 
          debounce = false
local sound = Instance.new('Sound')
sound.Parent = game.Players.LocalPlayer.Character
sound.SoundId = "rbxassetid://253255625"
sound.Volume = 0.5
sound.Looped = false
sound.Name = "Vanish"
sound:Play()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
            wait(cooldown)
            debounce = true            
        end
    end
end)

--Frisk free level (yes.)

local debounce8 = true 
local cooldown8 = 2
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Eight
    if key.KeyCode == button then
       if debounce8 then 
          print("free exp ;)") 
          debounce8 = false
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "Hold Still.", 
                [4] = Color3.new(1, 1, 1),
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
wait(0.5)        
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.01, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,
        ["Damage"] = 0
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.6)
local v1 = {
                [1] = getrenv()._G.Pass, 
                [2] = "Damage", 
                [3] = math.huge, 
                [4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            }
        local event = game:GetService("ReplicatedStorage").Remotes.Events
        event:FireServer(v1)
          wait(cooldown8)
          debounce8 = true            
       end
    end
end)

--Heal

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "n" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeHeal", 
    [3] = CFrame.new(-270.378937, 0.400000095, -460.118408, 0.989153445, -9.16554418e-05, 0.146885753, 3.39344697e-05, 0.99999994, 0.000395471056, -0.146885753, -0.000386197091, 0.989153445)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

--2nd Phase

repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health <= 0

game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","DeathScene", false})

game.Players.LocalPlayer.Character.SSJ:Destroy()
game.Players.LocalPlayer.Character.Torso.Natural:Destroy()
game.Players.LocalPlayer.Character.Torso["Over Glow"]:Destroy()

wait(6)

spawn(function()
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Blocking",
        [3] = true
    }
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7038179945"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2)

wait(1)

local head = game.Players.LocalPlayer.Character.Head
local part = Instance.new("Part")
local mesh = Instance.new("SpecialMesh")
local weld = Instance.new("WeldConstraint")
part.Size = Vector3.new(1,1,1)
part.CanCollide = false
part.CanTouch = false
part.CanQuery = false
part.Color = Color3.fromRGB(9, 137, 207)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://432528331"
mesh.Scale = Vector3.new(5.5, 5.5, 5.5)
mesh.Parent = part
weld.Part0 = head
part.CFrame = head.CFrame * CFrame.new(0,0.56,0.20)
weld.Part1 = part
weld.Parent = part
part.Parent = head.Parent
part.Name = "SSJB"

wait(2)

effect("XEventEffect", CFrame.new(Vector3.new(0,0,0)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(0),0,0))

game.Players.LocalPlayer.Character.XEventEffect.Crater3:Destroy()
game.Players.LocalPlayer.Character.XEventEffect.Crater2:Destroy()
game.Players.LocalPlayer.Character.XEventEffect.Crater:Destroy()
game.Players.LocalPlayer.Character.XEventEffect.Multiply.Color = Color3.fromRGB(9, 137, 207)
game.Players.LocalPlayer.Character.XEventEffect.Middle.Color = Color3.fromRGB(9, 137, 207)
game.Players.LocalPlayer.Character.XEventEffect.Mest1.Color = Color3.fromRGB(9, 137, 207)
    
wait()

for _,v in pairs(game.Players.LocalPlayer.Character.XEventEffect:GetChildren()) do
if v.Name == 'Mest2' then
v.Color = Color3.fromRGB(248, 248, 248)
end
end

--Combo

local debounce6 = true 
local cooldown6 = 10
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Six
    if key.KeyCode == button then
       if debounce6 then 
          print("Executed") 
          debounce6 = false
local sound = Instance.new('Sound')
sound.Parent = game.Players.LocalPlayer.Character
sound.SoundId = "rbxassetid://858125822"
sound.Volume = 3
sound.Looped = false
sound.Name = "Meteor Combo"
sound.TimePosition = 0.2
sound:Play()

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906030889"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906104364"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 0.2
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929665831"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929684994"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929681477"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906092495"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7499465435"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929684994"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7499465435"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929700678"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929684994"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929694407"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = Vector3.new(0, 10, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 5,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
k:AdjustSpeed(0)
sound:Stop()
wait(0.3)
char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,10,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 2500 
v2.P = 60000 
v2.Position = (tar).p
wait(0.3)
k:AdjustSpeed(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929696537"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback",
        ["CombatInv"] = true,
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = Vector3.new(0, -30, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
v2:Destroy()
char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,-10,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 7
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 2500 
v2.P = 60000 
v2.Position = (tar).p
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4910232706"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
k.TimePosition = 0.1
wait(0.4)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback",
        ["CombatInv"] = true,
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
        ["Velocity"] = Vector3.new(0, -30, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
v2:Destroy()
k:AdjustSpeed(0)
char = game.Players.LocalPlayer.Character
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
tar = char.HumanoidRootPart.CFrame*CFrame.new(0,0.001,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60
char.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
v2 = Instance.new('BodyPosition',char.HumanoidRootPart) 
fol = Instance.new('Folder',v2)
v2.Name = 'Client' 
v2.MaxForce = Vector3.new(1,1,1)*100000 
v2.D = 5202 
v2.P = 60000 
v2.Position = (tar).p
wait(1.5)
k:AdjustSpeed(1)
v2:Destroy()
          wait(cooldown6)
          debounce6 = true            
       end
    end
end)

local debounce7 = true 
local cooldown7 = 6
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Seven
    if key.KeyCode == button then
       if debounce7 then 
          print("Executed") 
          debounce7 = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929670790"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0)
k.TimePosition = 0.3
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0.8
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 1.3, CFrame.Angles(math.rad(0),820,0))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal",
        ["CombatInv"] = true,
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 1.3, CFrame.Angles(math.rad(0),820,0))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 1.3, CFrame.Angles(math.rad(0),820,0))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 1.3, CFrame.Angles(math.rad(0),820,0))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 1.3, CFrame.Angles(math.rad(0),820,0))
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906108508"
local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k2:Play()
k2:AdjustSpeed(1)
wait(0.1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 4
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5776260400"
local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k2:Play()
k2:AdjustSpeed(1)
wait(0.1)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect",
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 5, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
          wait(cooldown7)
          debounce7 = true            
       end
    end
end)

--Ultimate 2 (Gogeta)

local debounce9 = true 
local cooldown9 = 60
game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
    if typing then return end 
    local button = Enum.KeyCode.Nine
    if key.KeyCode == button then
       if debounce9 then 
          print("1 shot ded") 
          debounce9 = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5872562775"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1.8)
k:AdjustSpeed(0)
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) * CFrame.Angles(0,math.rad(0),0)
SFWhiteFlash()
wait(0.2)
k:AdjustSpeed(1)
wait(0.3)
          local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.001, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.1)
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
wait(0.1)
k:AdjustSpeed(0)
wait(0.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
        ["Damage"] = "NaN"
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
wait(0.1)
effect("BurstEffect2", CFrame.new(Vector3.new(0,0,-5)), ColorSequence.new(Color3.new(242, 243, 243),Color3.new(242, 243, 243)) , 20, CFrame.Angles(math.rad(0),820,0))
effect("Dash", CFrame.new(Vector3.new(0,0,0)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(98),0,0))
effect("BigSlam", CFrame.new(Vector3.new(0,0,0)), ColorSequence.new(Color3.new(9, 137, 207),Color3.new(248, 248, 248)) , 7, CFrame.Angles(math.rad(98),0,0))
k:AdjustSpeed(1)
wait(0.1)
local a = {
        [1] = getrenv()._G.Pass,
        [2] = "Damage",
        [3] = "NaN",
        [4] = game.Players.LocalPlayer.Character,
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(a)
          wait(cooldown9)
          debounce9 = true            
       end
    end
end)


spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'BottomAura' then
clone1 = v:Clone()
clone1.Parent = char.Torso
clone1.CFrame = char.Torso
clone1.Anchored = false
weld = Instance.new('Weld',clone1)
weld.Part0 = clone1
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'Fire1' then
clone2 = v:Clone()
clone2.Parent = char.Torso
clone2.CFrame = char.Torso
clone2.Anchored = false
weld = Instance.new('Weld',clone2)
weld.Part0 = clone2
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'Fire2' then
clone3 = v:Clone()
clone3.Parent = char.Torso
clone3.CFrame = char.Torso
clone3.Anchored = false
weld = Instance.new('Weld',clone3)
weld.Part0 = clone3
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'Natural' then
clone4 = v:Clone()
clone4.Parent = char.Torso
clone4.CFrame = char.Torso
clone4.Anchored = false
weld = Instance.new('Weld',clone4)
weld.Part0 = clone4
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'NewAura' then
clone5 = v:Clone()
clone5.Parent = char.Torso
clone5.CFrame = char.Torso
clone5.Anchored = false
weld = Instance.new('Weld',clone5)
weld.Part0 = clone5
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'OverGlow1' then
clone6 = v:Clone()
clone6.Parent = char.Torso
clone6.CFrame = char.Torso
clone6.Anchored = false
weld = Instance.new('Weld',clone6)
weld.Part0 = clone6
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'OverGlow2' then
clone7 = v:Clone()
clone7.Parent = char.Torso
clone7.CFrame = char.Torso
clone7.Anchored = false
weld = Instance.new('Weld',clone7)
weld.Part0 = clone7
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'ParticleEmmiter' then
clone8 = v:Clone()
clone8.Parent = char.Torso
clone8.CFrame = char.Torso
clone8.Anchored = false
weld = Instance.new('Weld',clone8)
weld.Part0 = clone8
weld.Part1 = char['Torso']
end
end
end)
spawn(function()
    player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.Character.BlueAura:GetChildren()) do
if v.Name == 'Sharp' then
clone9 = v:Clone()
clone9.Parent = char.Torso
clone9.CFrame = char.Torso
clone9.Anchored = false
weld = Instance.new('Weld',clone9)
weld.Part0 = clone9
weld.Part1 = char['Torso']
end
end
end)

--Stops 2nd phase music (chara 2nd phase music)

game:GetService("Players").LocalPlayer.PlayerScripts.Music.Stop:Fire()

wait(1)

--Fe Rocks

local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
local perseverance = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255, 255, 255),
Transparency = 0
}
    times = 0
    _G.soulsmode = 1
_G.closed = false
local effects = game.Players.LocalPlayer.Character.Effects
local rs = game:GetService("RunService")

        local player = game.Players.LocalPlayer
local Character = player.Character
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local projectiles = game.Players.LocalPlayer.Character.Attacks
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
    v:WaitForChild("BodyVelocity"):Destroy()
    v:WaitForChild("ParticleEmitter"):Destroy()
    coroutine.resume(coroutine.create(function() 

        
while 
wait(0.05)
do
    if _G.closed then
        break
        end
    times = times + 1
    if 
    times == 6
    then 
    times = 0
    end
    if times == 1 then
v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,40,0)
elseif times == 2 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(10,40,0)
elseif times == 3 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,10)
elseif times == 4 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,-10)
elseif times == 5 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10,30,0)
    end
-- Script generated by SimpleSpy - credits to exx#9394

local args1 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = perseverance
    }
}


if _G.soulsmode == 1 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
end
end
end))
end
end

--New idle

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://8193912867"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
