--made by 2a23andr#8879 helpers = CharaTheBets=>#8388 MAnitosik#0548
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
wait(2)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health:Destroy()



game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [ GE NO SANS ]\n' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)



         game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalovania"]:Destroy()
local s1 = Instance.new("Sound")
s1.Parent = game.Players.LocalPlayer.StarterPlaylist
s1.Volume = 2
s1.Playing = true
s1.Looped = true
s1.SoundId = "rbxassetid://6463854800"
s1.Name = "1LostMemories"
--attack recolor
local char = game:GetService("Players").LocalPlayer.Character
local effects = char.Effects
local stuff = {"Bone"}
local colors = {Color3.fromRGB(255, 128, 0)}
local function check(part)
    for i = 1, #stuff do
        if part.Name == stuff[i] then
            part.Color = colors[i]
        end
    end
end

game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"

effects.DescendantAdded:Connect(check) 
local char = game:GetService("Players").LocalPlayer.Character
local beams = char
local stuff = {"Eye", "Back", "Middle", "CircleEffect", "E", "ExplosionEffect", "BeamSmoke"}
local colors = {Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0), Color3.fromRGB(0, 128, 0)}
local function check(part)
    for i = 1, #stuff do
        if part.Name == stuff[i] then
            part.Color = colors[i]
        end
    end
end
beams.DescendantAdded:Connect(check)
local char = game:GetService("Players").LocalPlayer.Character
local attacks = char.Attacks
local stuff = {"Bone"}
local colors = {Color3.fromRGB(0, 0, 170)}
local function check(part)
    for i = 1, #stuff do
        if part.Name == stuff[i] then
            part.Color = colors[i]
        end
    end
end
attacks.DescendantAdded:Connect(check) 
--scarf
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara.Scarf:GetChildren()) do
if v.Name == 'RainbowScarf' then
clone1 = v:Clone()
clone1.Name = 'Scarf'
clone1.Parent = char
weld = Instance.new('Weld',clone1)
weld.Part0 = char['Scarf']
weld.Part1 = char['Head']
weld.C1 = CFrame.new(-0,-0.8,-0)*CFrame.Angles(0,3,0)
clone1.Transparency = 0
char.Scarf.Color = Color3.new(1, 0, 0)
char.Scarf.Decal.Texture = ""
char.Scarf.Mesh.TextureId = ""
end
end
--eye thing idk 
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.CharaKnifeProjectile:GetChildren()) do
if v.Name == 'ParticleEmitter' then
X = v:Clone()
X.Parent = char.Head
X.Name = 'X'
char.Head.X.Speed = NumberRange.new(0, 0)
char.Head.X.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
char.Head.X.Size = NumberSequence.new(0.3, 0)
local attachment = Instance.new("Attachment", script.Parent)
attachment.Parent = char.Head
attachment.Position = Vector3.new(0.1, 0, 0)
char.Head.X.Parent = attachment
for _,v in pairs(game:GetService("ReplicatedStorage").Effects.OverwriteAct.Attachment:GetChildren()) do
if v.Name == 'Body' then
x = v:Clone()
x.Name = 'A'
x.Parent = char.Head
x.Enabled = true
x.Size = NumberSequence.new(0.3, 0)
x.Speed = NumberRange.new(-25, -25)
local attachment = Instance.new("Attachment")
attachment.Parent = char.Head
attachment.Position = Vector3.new(0.1, 0.2, 0)
char.Head.A.Parent = attachment
end
end
end
end
--slash
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara:GetChildren()) do
if v.Name == 'SlashEffect' then
clone = v:Clone()
clone.Parent = char.Torso
clone.Name = "getting hit"
end
end
end)
--locals
local phase1 = true
local phase2 = false
local v1 = game:GetService("ReplicatedStorage")
local v2 = game:GetService("Workspace")
local v3 = v1.Remotes.Effects
local v4 = game:GetService("Players")
local v5 = v4.LocalPlayer
local v6 = v5.Character
local v7 = v5.PlayerGui.UI.Ui
local l__ServerEffects__child = v2.ServerEffects.ServerCooldown
local v8 = Instance.new("Sound")
v8.Parent = v5.StarterPlaylist
v8.SoundId = "rbxassetid://5309259110"
v8.Name = "2Stormheart"
v8.Playing = false
v8.Volume = 0.5
v8.PlaybackSpeed = 1
v8.Looped = true
v8.EmitterSize = 10
--name loop
coroutine.resume(coroutine.create(function()
while phase1 == true do
    game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    game.Players.LocalPlayer.Character.Head.HealthBar.Frame.BackHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    wait(1)
    game.Players.LocalPlayer.Character.Head.HealthBar.Frame.BackHealth.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    wait(1)
end
end))

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Reset' then
                v:Destroy()
            end
        end
    until false
end)

local v9 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
function f1(hittime, rtype, hiteffect, velocity, damage)
    local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = hittime,
            ["Type"] = rtype,
            ["HitEffect"] = hiteffect,
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
            ["Velocity"] = velocity,
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
            ["Damage"] = damage
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
end


local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local v21 = require(game:GetService("ReplicatedStorage").ClientModules.MainModule);
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local LoseMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

HealthBar.Name = "HealthBar"
HealthBar.Parent = player.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 6, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)

Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = ""
HealthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left
HealthLabel.TextYAlignment = Enum.TextYAlignment.Center

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --цвет обводки
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0) --позиция
PName.Size = UDim2.new(3, 0, 1, 0) 
PName.Font = Enum.Font.Arcade
PName.Text = "GENO SANS" --имя
PName.TextColor3 = Color3.fromRGB(255, 255, 255) --цвет
PName.TextScaled = true
PName.TextSize = 5.000 --размер
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Center
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5

local part = PName
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        }
        
        local nametween = TweenService:Create(part, Info, Goals)
        nametween:Play()
        
        --атаки
       local mouse = game.Players.LocalPlayer:GetMouse() --первая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "z" then
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "Ground",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOne",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "x" then
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "Ground2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
                Event:InvokeServer(A_1, A_2, A_3)
         local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                 local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
         local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOneBig",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
                 local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                 local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
            end
            end)
            
          local mouse = game.Players.LocalPlayer:GetMouse() --третья атака
mouse.KeyDown:Connect(function(k) 
    if k == "c" then
        game.Players:Chat(("Do you really think you can kill me that easily?"))
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,50,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
    ["CombatInv"] = true, 
    ["Damage"] = 30
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)

for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
    end
 local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonFour",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Telekinesis",
                [3] = "Special2",
                [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
    end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --пятая атака
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,50,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
    ["CombatInv"] = true, 
    ["Damage"] = 30
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)

for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
end
end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --пятая атака
			mouse.KeyDown:Connect(function(k) 
				if k == "g" then 
				    game.Players:Chat(("Gotcha!"))
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 5, 0), 0)
  local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        wait(0.5)
        f1(1, "Normal", "BurstEffect", Vector3.new(0, 5, 0), 0)
          local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        wait(0.5)
        f1(1, "Normal", "BurstEffect", Vector3.new(0, 5, 0), 0)
          local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        wait(0.5)
        f1(1, "Normal", "BurstEffect", Vector3.new(30, 5, 30), 0)
    end
			end)
			
			local mouse = game.Players.LocalPlayer:GetMouse() --шестая атака
mouse.KeyDown:Connect(function(k) 
    if k == "y" then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3756843230"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
wait(1.5)
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    local CFrameX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
    local CFrameY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
    local CFrameZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
    local Bone = game:GetService("ReplicatedStorage").Effects.BlockBones.Bone:Clone()
    Bone.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    Bone.CFrame = CFrame.new(CFrameX, CFrameY, CFrameZ)
    Bone.Size = Vector3.new(5, 100, 5)
    Bone.Transparency = 0
    Bone.Anchored = true
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 52
    wait(0.5)
            local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
    Bone:destroy()
    end
end)

local mouse = game.Players.LocalPlayer:GetMouse() --седьмая атака
mouse.KeyDown:Connect(function(k) 
    if k == "h" then
        game.Players:Chat(("Heh heh"))
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Telekinesis",
                [3] = "Special",
                [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
end
end)

