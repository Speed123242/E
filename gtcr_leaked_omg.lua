game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://rbxassetid://5079250270"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4370512420"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://4576074471"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId = "rbxassetid://6136050723"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId = "rbxassetid://6136052357"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://3203734026"

wait(1)

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
local uic = Instance.new("UICorner",game.Players.LocalPlayer.PlayerGui.UI.Ui.HealthBar)

BackHealth.Name = "BackHealth"
BackHealth.Parent = HealthBar
BackHealth.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
BackHealth.BorderSizePixel = 0
BackHealth.Position = UDim2.new(0, 600, 0, 940)
BackHealth.Size = UDim2.new(0, 700, 0, 10)

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

game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "60"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Position = UDim2.new(0, 90000, 0, 900000)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar.ImageLabel:Destroy(
game:GetService("Players").LocalPlayer.PlayerScripts.Music.Stop:Fire())
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Position = UDim2.new(0, 600, 0, 1025)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Size = UDim2.new(0, 700, 0, 10)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Position = UDim2.new(0, 530, 0, 1000)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Size = UDim2.new(0, 850, 0, 20)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Position = UDim2.new(0, 820, 0, 885)
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help.Transparency = 1
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Position = UDim2.new(0, 0, 0, 1032)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Position = UDim2.new(0, 800, -0.1, 1032)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Determination"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "GTCR"
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.SettingsButton:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 220, 75)

wait(15)
local Player = game.Players.LocalPlayer
local Backpack = Player.Backpack
Player.Character.HateArm:Remove()
Player.Character.HeartLocket:Remove()
    local v1 = {
                [1] = getrenv()._G.Pass, 
                [2] = "Damage", 
                [3] = math.huge, 
                [4] = game.Players.LocalPlayer.Character
            }
            local event = game:GetService("ReplicatedStorage").Remotes.Events
            event:FireServer(v1) 
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Position = UDim2.new(0.4,0,0.95,0 )
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help.Position = UDim2.new(0.4,0,0.90,0 )local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
		table.insert(slashes,child) -- we put our slash inside the table
	end
end)

local ez = Instance.new("StringValue")
ez.Name = "Battling"
ez.Parent = p.Character
local Anim = Instance.new("Animation") Anim.AnimationId = "rbxassetid://rbxassetid://5079250270" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim) k:Play() k:AdjustSpeed(2.5)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "99"
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 7
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://4630736961"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local args = {
	[1] = {
		[1] = getrenv()._G.Pass,
		[2] = "KnifeColor",
		[3] = "ChangeColor",
		[4] = Color3.fromRGB(255,0,0),
		[5] = 0,
		[6] = "RedMode"
		
	}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
for i,v in pairs(game.Players.LocalPlayer.Character.RealKnife.Blade:GetChildren()) do
    if v.Name == "SpecialHell" then
        if v.Rate ~= 5 then
            v:Destroy()
        end
        end
end
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(255,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456894133"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776258610"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"


player = game.Players.LocalPlayer
char = player.Character
targeet = ''
sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
	spawn(function()
		targeet = player.Name
		sound =  game:GetService("ReplicatedStorage").Sounds['BattleStart']
		local A_1 =  {
			[1] = getrenv()._G.Pass, 
			[2] = "PlaySound", 
			[3] = sound, 
			[4] = game:GetService("Workspace")[player.Name].Head
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.Functions
		Event:InvokeServer(A_1)
	end)
end

wait(0.13)
player = game.Players.LocalPlayer
char = player.Character
targeet = ''
sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
	spawn(function()
		targeet = player.Name
		sound =  game:GetService("ReplicatedStorage").Sounds['BattleStart']
		local A_1 =  {
			[1] = getrenv()._G.Pass, 
			[2] = "PlaySound", 
			[3] = sound, 
			[4] = game:GetService("Workspace")[player.Name].Head
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.Functions
		Event:InvokeServer(A_1)
	end)
end

wait(0.13)
player = game.Players.LocalPlayer
char = player.Character
targeet = ''
sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
	spawn(function()
		targeet = player.Name
		sound =  game:GetService("ReplicatedStorage").Sounds['BattleEnd']
		local A_1 =  {
			[1] = getrenv()._G.Pass, 
			[2] = "PlaySound", 
			[3] = sound, 
			[4] = game:GetService("Workspace")[player.Name].Head
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.Functions
		Event:InvokeServer(A_1)
	end)
end
local mode = "DT"
spawn(function()
local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
local dt = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255,0,0),
Transparency = 0
}

local justice = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255,255,0),
Transparency = 0
}

local bravery = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255, 110, 0),
Transparency = 0
}
local patience = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(5, 252, 236),
Transparency = 0
}

local integrity = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0, 60, 255),
Transparency = 0
}

local kindness = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0, 255, 13),
Transparency = 0
}
local perseverance = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(194, 3, 252),
Transparency = 0
}

local hate = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0,0,0),
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
        [6] = dt
    }
}

local args2 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = justice
    }
}

local args3 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = bravery
    }
}

local args4 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = patience
    }
}

local args5 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = integrity
    }
}

local args6 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = kindness
    }
}

local args7 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = perseverance
    }
}

local args8 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = hate
    }
}
if _G.soulsmode == 1 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
elseif _G.soulsmode == 2 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args2))
elseif _G.soulsmode == 3 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args3))
elseif _G.soulsmode == 4 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args4))
elseif _G.soulsmode == 5 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args5))
elseif _G.soulsmode == 6 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args6))
elseif _G.soulsmode == 7 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args7))
elseif _G.soulsmode == 8 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args8))
end
end
end))
end
end

spawn(function()

while wait(0.01) do
if mode == "hate" then
                        local args = {
                                [1] = {
                                    [1] = getrenv()._G.Pass,
                                    [2] = "KnifeColor",
                                    [3] = "ChangeColor",
                                    [4] = Color3.fromRGB(0,0,0),
                                    [5] = 0,
                                    [6] = "SpecialHell"
                                }
                            }
                            
         game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
         game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Hate"
                         while mode == "hate" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end

         elseif mode == "DT" then
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeColor",
                    [3] = "ChangeColor",
                    [4] = Color3.fromRGB(255,0,0),
                    [5] = 0,
                    [6] = "RedMode"
                }
            }
            
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Determination"
    local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        while mode == "DT" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    
         elseif mode == "justice" then
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Justice"
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(247, 234, 53) --[[Color3]],
                [5] = 0.3,
                [6] = "YellowMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        
                while mode == "justice" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "perseverance" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(210, 39, 245) --[[Color3]],
                [5] = 0.3,
                [6] = "PurpleMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Karma"
                while mode == "perseverance" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.2)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "bluemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 10, 248)--[[Color3]],
                [5] = 0,
                [6] = "BlueMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Integrity"
                while mode == "bluemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "kindness" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 248, 38)--[[Color3]],
                [5] = 0,
                [6] = "GreenMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Kindness"
                        while mode == "kindness" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
        
    elseif mode == "orangemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(255, 89, 0),
                [5] = 0,
                [6] = "OrangeMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Bravery"
                        while mode == "orangemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "lightbluemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 248, 228),
                [5] = 0,
                [6] = "LightBlueMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Patience"
                        while mode == "lightbluemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    end-- the end of if
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
    if k == "e" then wait(0)
     if mode == "hate" then
     
        mode = "DT"
        _G.soulsmode = 1
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "Reverse"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        wait(0.5)
    

        Player = game.Players.LocalPlayer.Name
    AnimationId = "7004737889"
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "DT" then
    mode = "justice"
    _G.soulsmode = 2
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "justice" then
    mode = "orangemode"
    _G.soulsmode = 3
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "orangemode" then
    mode = "lightbluemode"
    _G.soulsmode = 4
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "lightbluemode" then
    mode = "bluemode"
    _G.soulsmode = 5
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "bluemode" then
    mode = "kindness"
    _G.soulsmode = 6
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "kindness" then
    mode = "perseverance"
    _G.soulsmode = 7
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "perseverance" then
    mode = "hate"
    _G.soulsmode = 8
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
    end
    end
    end)
 local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
    if k == "q" then wait(0)
     if mode == "hate" then
         _G.soulsmode = 7
        mode = "perseverance"
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "Reverse"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        wait(0.5)
    

        Player = game.Players.LocalPlayer.Name
    AnimationId = "7004737889"
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "perseverance" then
    mode = "kindness"
    _G.soulsmode = 6
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "kindness" then
    mode = "bluemode"
    _G.soulsmode = 5
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "bluemode" then
    mode = "lightbluemode"
    _G.soulsmode = 4
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "lightbluemode" then
    mode = "orangemode"
    _G.soulsmode = 3
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "orangemode" then
    mode = "justice"
    _G.soulsmode = 2
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "justice" then
    mode = "DT"
    _G.soulsmode = 1
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "DT" then
    mode = "hate"
    _G.soulsmode = 8
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
end
end
end)
end)
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
AnimationId = "7500900190"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.4)
local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 0.8,
            ["Type"] = "Normal",
            ["HitEffect"] = "LightHitEffect3",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
            ["Velocity"] = Vector3.new(0, 28, 0),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
            ["Damage"] = 10
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
wait(0.3)
AnimationId = "7500930517"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.3)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 24.8    
wait(0.2)
        AnimationId = "7500930517"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
            ["Type"] = "Normal",
            ["HitEffect"] = "HeavyHitEffect",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
            ["Velocity"] = Vector3.new(0, 0, 0.001),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
            ["Damage"] = 5
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        AnimationId = "7500930517"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
            ["Type"] = "Normal",
            ["HitEffect"] = "HeavyHitEffect",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
            ["Velocity"] = Vector3.new(0, 49, 0.001),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,            
            ["Damage"] = 5
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        wait(0.3)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 80
                local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
            ["Type"] = "Normal",
            ["HitEffect"] = "HeavyHitEffect",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
            ["Velocity"] = Vector3.new(0, 0, 0.001),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,            
            ["Damage"] = 5
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        AnimationId = "7500930517"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        wait(1)
                local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
            ["Type"] = "Normal",
            ["HitEffect"] = "HeavyHitEffect",
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
            ["Velocity"] = Vector3.new(0, 0, 0.001),
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,            
            ["Damage"] = 5
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        AnimationId = "7500930517"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
wait(1.5)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0      
end
end) 
--skill Z
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "z" then
		local A_1 =
			{
				[1] = getrenv()._G.Pass, 
				[2] = "YellowBeam", 
				[3] = "Fire",
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end)
--skill X
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "x" then
	   	    local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Chatted", 
		[3] = "Escape this.", 
		[4] = Color3.new(255,0,0)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1) 
wait(0.8)
	    	local mouse = game.Players.LocalPlayer:GetMouse()
		function getlockchar()
			local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			return char
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,3)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = Vector3.new(50,10,50)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(-50,10,-50)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectilePurple",
        [3] = "Spawn",
        [4] = Vector3.new(-50,10,50)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(50,10,50)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(-100,10,-80)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectilePurple",
        [3] = "Spawn",
        [4] = Vector3.new(-70,10,70)
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end
end)

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
--skill C
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "c" then
	game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectilePurple", "Spawn", Vector3.new(50,0,-50)})
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectilePurple", "Spawn", Vector3.new(-50,0,50)})
			game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileOrange", "Spawn", Vector3.new(0,50,0)})
	end
end)
--heal Lmao
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "m" then
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


--teleport hit by ur mom
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "r" then
local lock = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[tostring(lock)].Torso.CFrame
    end
        end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "g" then
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 50
local Anim = Instance.new("Animation") Anim.AnimationId = "rbxassetid://3197645614" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim) k:Play() k:AdjustSpeed(1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileDarkRed",
        [3] = "Spawn"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileDarkRed",
        [3] = "Spawn"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileDarkRed",
        [3] = "Spawn"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(1)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
wait(3)
local args = {
	[1] = {
		[1] = getrenv()._G.Pass,
		[2] = "KnifeColor",
		[3] = "ChangeColor",
		[4] = Color3.fromRGB(255,0,0),
		[5] = 0,
		[6] = "RedMode"
		
	}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
for i,v in pairs(game.Players.LocalPlayer.Character.RealKnife.Blade:GetChildren()) do
    if v.Name == "SpecialHell" then
        if v.Rate ~= 5 then
            v:Destroy()
        end
        end
end
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(255,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end
end)
--autoblock made by ur ass
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
if k == "," then
if not game.Players.LocalPlayer.Character.Data.Blocking.Value then
local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Blocking", 
                [3] = true
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Functions
        Event:InvokeServer(A_1)
local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "AutoBlock = Enabled", 
                [4] = Color3.new(255, 0, 0),
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
else
local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Blocking", 
                [3] = false
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Functions
        Event:InvokeServer(A_1)
local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "AutoBlock = Disabled", 
                [4] = Color3.new(255, 0, 0),
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
end
end)
--change combat styles
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadFive then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = DEFAULT]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456894133"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776258610"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"
end
end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadOne then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = GT!CHARA]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4333546395"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348265296"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
end
end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadThree then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = UT!ASRIEL]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776230796"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776233108"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5776235173"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5776238345"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776240672"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776243290"
end
end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadTwo then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = IDK]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4906030889"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4906045655"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4906056809"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4906072632"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906104364"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776243290"
wait(1.1)
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 NOW PLAYING "Galaxy Collapse"]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["1Megalo Strike Back"].Name = "Music"
game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.COLLAPSE:Destroy()
game.Players.LocalPlayer.DeathPlaylist["1Megalo Strike Back"].SoundId = "rbxassetid://3401292474"
        end
    end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadFour then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = GOKU PHASE 2]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4929676573"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4929681477"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4929684994"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4929688526"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906104364"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776260400"
wait(1.1)
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 NOW PLAYING "RAGE"]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
game.Players.LocalPlayer.DeathPlaylist["1Megalo Strike Back"].SoundId = "rbxassetid://6047666012"
        end
    end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadSix then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = ULTRATAIL!SANS]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5667194069"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5667196296"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5667206665"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5667210178"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5667215116"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776243290"
end
end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadZero then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = DISABLED (CLICKING YOUR MOUSE WILL BREAK THE S CRIPT BE WARNED)]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://0"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://0"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://0"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://0"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://0"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://0"
end
end)
wait(0.1)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadSeven then
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[SCRIPT]
 COMBAT STYLE = Time Witch]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
        wait(0.1)
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://6154047231"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://6154049326"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://6154050876"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://6154055740"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://6154060166"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"
wait(1)
        local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = [[[Time Witch]
 "You will die not knowing what power this is."]],
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v:IsA('Sound') then
        if v.Parent ~= "Music" and v.Name ~= "Sound2" and v.Name ~= "Sound" and v.Name ~= "Wind" and v.Name ~= "1Song" and v.Name ~= "2Song" and v.Name ~= "3Song" and v.Name ~= "4Song" and v.Name ~= "5Song" and v.Name ~= "6Song" then
        v:Destroy()
        local music = Instance.new("Sound")
        music.Parent = game.Players.LocalPlayer
        music.Name = "THE WORLD"
        music.Volume = 0.9
        music.SoundId = "rbxassetid://3831294602"
        music.Looped = true
        music:Play()
        end
    end
end
end
end)

local Loop = Instance.new("BoolValue")
Loop.Parent = game.Lighting
Loop.Value = false
Loop.Name = "Looped"
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "-" then
        game.Lighting.Looped.Value = not game.Lighting.Looped.Value
while game.Lighting.Looped.Value == true do
    wait()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, 1, 0, 1, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end
end
end)

local Loop = Instance.new("BoolValue")
Loop.Parent = game.Lighting
Loop.Value = false
Loop.Name = "Looped"
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "-" then
        game.Lighting.Looped.Value = not game.Lighting.Looped.Value
while game.Lighting.Looped.Value == true do
    wait()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0.5, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0.5, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, 1, 0, 1, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end
end
end)

local Loop = Instance.new("BoolValue")
Loop.Parent = game.Lighting
Loop.Value = false
Loop.Name = "Looped"
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "-" then
        game.Lighting.Looped.Value = not game.Lighting.Looped.Value
while game.Lighting.Looped.Value == true do
    wait()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(math.random(), math.random(), math.random()),  
    [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(math.random(), math.random(), math.random()), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, 1, 0, 1, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end
end
end)

--skill V
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "v" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "Welcome to my special HELL =)", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = {
			["HitTime"] = 2.5, 
			["Type"] = "Normal", 
			["HitEffect"] = "LightHitEffect", 
			["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
			["Velocity"] = Vector3.new(4.6485786437988, 1, -1.8413898944855), 
			["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
			["Damage"] = 2
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "KnifeColor", 
				[3] = "ChangeColor", 
				[4] = Color3.new(1, 0, 0), 
				[5] = 2, 
				[6] = "RedMode"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "SliceEffect", 
				[3] = true, 
				[4] = "RealKnife"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.SwordHandler
		Event:FireServer(A_1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "AreaAttack", 
				[3] = "Start"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "SliceEffect", 
				[3] = false, 
				[4] = "RealKnife"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.SwordHandler
		Event:FireServer(A_1)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "b" then
		local args = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "PatienceAttack",
				[3] = Vector3.new(-441.81924438477, 0.99999982118607, 113.85330200195),
				[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "PatienceAttack2",
				[3] = Vector3.new(-628.52520751953, 1.0000152587891, -411.28753662109),
				[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
	if key == "n" then
local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://3746476750"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(3)  
_G.cdr = false
if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)
--char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
--wait(.1)
amm = 5
--char.HumanoidRootPart.Position + Vector3.new(0,10000,0)
for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileYellow", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
val = Instance.new('NumberValue',player)
val.Name = 'YellowBlast Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'YellowBlast' then
am = am + 1
val.Value = am
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
tab2 = {}
for _,v in pairs(char.Attacks:GetChildren()) do
if v.Name == 'YellowBlast' then
    v:WaitForChild('BodyVelocity'):Destroy()
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
v2 = Instance.new('BodyGyro',v)
fol = Instance.new('Folder',v2)
v2.Name = 'Client'
v2.MaxTorque = Vector3.new(1,1,1)*10000
v2.D = 0
v2.P = 3000
v2.CFrame = char.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(90),0,0)
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
table.insert(tab2,v)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
end
wait(.5)
for i = 1,#tab do
    m.TargetFilter = game.workspace.Terrain
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-1,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileYellow", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
end
end)	    
		
	end
end)
--comfirme mode
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
if key == "-" then
local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://7004737889"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local music = Instance.new("Sound")
        music.Parent = game.Players.LocalPlayer
        music.Name = "Mode Confirm"
        music.Volume = 10
        music.PlaybackSpeed = 0.5
        music.SoundId = "rbxassetid://4615152991"
        music.Looped = false
        music:Play()
        newRad1 = 0

end
    end)
wait(10)
local Animss = Instance.new("Animation") Animss.AnimationId = "rbxassetid://4900761581" local kss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Animss) kss:Play() kss:AdjustSpeed(2.5)
repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
Spawn(function()
while wait() do
game.Players.LocalPlayer.Character.Humanoid.Health = 100000
end
end)
local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4463529700"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)

local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Wow....",
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Dont try too hard, Or you will break your keyboard.",
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "You have probably heard this before.",
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(4)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Chatted", 
    [3] = "Before you kill me, ill show you something even better.",
    [4] = Color3.fromRGB(190, 20, 50)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
k:Stop()
wait(0.2)
local Anims = Instance.new("Animation")
		Anims.AnimationId = "rbxassetid://7004737889"
		local ks = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anims)
		ks:Play()
		ks:AdjustSpeed(1)
wait(5)
ks:Stop()
local music = Instance.new("Sound")
        music.Parent = game.Players.LocalPlayer
        music.Name = "COLLAPSE"
        music.Volume = 3
        music.SoundId = "rbxassetid://3401292474"
        music.Looped = true
        music:Play()
wait(1)


 spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://3786720640"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://4196684102"
v.Animations.Run.AnimationId = "rbxassetid://4196684102"
v.Animations.Block.AnimationId = "rbxassetid://3203734026"
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end
 
for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v
 
end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack
 
wait()
original:Destroy()---destroys so you can play the animations
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4929676573"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4929681477"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4929684994"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4929688526"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906104364"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5776260400"

local mode = "DT"

local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
local dt = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255,0,0),
Transparency = 0
}

local justice = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255,255,0),
Transparency = 0
}

local bravery = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(255, 110, 0),
Transparency = 0
}
local patience = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(5, 252, 236),
Transparency = 0
}

local integrity = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0, 60, 255),
Transparency = 0
}

local kindness = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0, 255, 13),
Transparency = 0
}
local perseverance = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(194, 3, 252),
Transparency = 0
}

local hate = {
Parent = game.workspace,
Name = 'ye',
Material = Enum.Material.Neon,
Color = Color3.fromRGB(0,0,0),
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
        [6] = dt
    }
}

local args2 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = justice
    }
}

local args3 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = bravery
    }
}

local args4 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = patience
    }
}

local args5 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = integrity
    }
}

local args6 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = kindness
    }
}

local args7 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = perseverance
    }
}

local args8 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = hate
    }
}
if _G.soulsmode == 1 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
elseif _G.soulsmode == 2 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args2))
elseif _G.soulsmode == 3 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args3))
elseif _G.soulsmode == 4 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args4))
elseif _G.soulsmode == 5 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args5))
elseif _G.soulsmode == 6 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args6))
elseif _G.soulsmode == 7 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args7))
elseif _G.soulsmode == 8 then
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args8))
end
end
end))
end
end

spawn(function()

while wait(0.01) do
if mode == "hate" then
                        local args = {
                                [1] = {
                                    [1] = getrenv()._G.Pass,
                                    [2] = "KnifeColor",
                                    [3] = "ChangeColor",
                                    [4] = Color3.fromRGB(0,0,0),
                                    [5] = 0,
                                    [6] = "SpecialHell"
                                }
                            }
                            
         game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
         game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Hate"
         game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                         while mode == "hate" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end

         elseif mode == "DT" then
            local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "KnifeColor",
                    [3] = "ChangeColor",
                    [4] = Color3.fromRGB(255,0,0),
                    [5] = 0,
                    [6] = "RedMode"
                }
            }
            
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Determination"
    game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        while mode == "DT" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 0, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    
         elseif mode == "justice" then
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Justice"
    game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(247, 234, 53) --[[Color3]],
                [5] = 0.3,
                [6] = "YellowMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        
                while mode == "justice" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(255, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "perseverance" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(210, 39, 245) --[[Color3]],
                [5] = 0.3,
                [6] = "PurpleMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Karma"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(88, 0, 129)
                while mode == "perseverance" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.2)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.1)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(88, 0, 129), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "bluemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 10, 248)--[[Color3]],
                [5] = 0,
                [6] = "BlueMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Integrity"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
                while mode == "bluemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 0, 255), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "kindness" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 248, 38)--[[Color3]],
                [5] = 0,
                [6] = "GreenMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Kindness"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                        while mode == "kindness" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 255, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
        
    elseif mode == "orangemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(255, 89, 0),
                [5] = 0,
                [6] = "OrangeMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Bravery"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 89, 0)
                        while mode == "orangemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.fromRGB(255, 89, 0), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    elseif mode == "lightbluemode" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "ChangeColor",
                [4] = Color3.fromRGB(6, 248, 228),
                [5] = 0,
                [6] = "LightBlueMode"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Patience"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 180, 250)
        
                        while mode == "lightbluemode" do
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 0.866025388, -3, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.3)
                local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                [4] = Color3.new(0, 180, 250), 
                [5] = CFrame.new(0, 0, 0, 1.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        end
    end-- the end of if
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
    if k == "e" then wait(0)
     if mode == "hate" then
     
        mode = "DT"
        _G.soulsmode = 1
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "Reverse"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        wait(0.5)
    

        Player = game.Players.LocalPlayer.Name
    AnimationId = "7004737889"
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "DT" then
    mode = "justice"
    _G.soulsmode = 2
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "justice" then
    mode = "orangemode"
    _G.soulsmode = 3
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "orangemode" then
    mode = "lightbluemode"
    _G.soulsmode = 4
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "lightbluemode" then
    mode = "bluemode"
    _G.soulsmode = 5
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "bluemode" then
    mode = "kindness"
    _G.soulsmode = 6
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "kindness" then
    mode = "perseverance"
    _G.soulsmode = 7
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "perseverance" then
    mode = "hate"
    _G.soulsmode = 8
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
    end
    end
    end)
 local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
    if k == "q" then wait(0)
     if mode == "hate" then
         _G.soulsmode = 7
        mode = "perseverance"
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeColor",
                [3] = "Reverse"
            }
        }
        
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
        wait(0.5)
    

        Player = game.Players.LocalPlayer.Name
    AnimationId = "7004737889"
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "perseverance" then
    mode = "kindness"
    _G.soulsmode = 6
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "kindness" then
    mode = "bluemode"
    _G.soulsmode = 5
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "bluemode" then
    mode = "lightbluemode"
    _G.soulsmode = 4
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "lightbluemode" then
    mode = "orangemode"
    _G.soulsmode = 3
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "orangemode" then
    mode = "justice"
    _G.soulsmode = 2
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "justice" then
    mode = "DT"
    _G.soulsmode = 1
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
elseif mode == "DT" then
    mode = "hate"
    _G.soulsmode = 8
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeColor",
            [3] = "Reverse"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

wait(0.5)
        
Player = game.Players.LocalPlayer.Name
AnimationId = "7004737889"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)
end
end
end)
--comfirme mode
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key) 
if key == "-" then
local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://7004737889"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local music = Instance.new("Sound")
        music.Parent = game.Players.LocalPlayer
        music.Name = "Mode Confirm"
        music.Volume = 10
        music.PlaybackSpeed = 0.5
        music.SoundId = "rbxassetid://4615152991"
        music.Looped = false
        music:Play()
        newRad1 = 0

end
end)
player = game.Players.LocalPlayer
char = player.Character
local kill = false
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "." then
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = [[KILL_AURA]
TOGGLED]],
      [4] = Color3.fromRGB(0, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)

        kill = not kill
        while kill == true do wait(0.3)
            for _,v in pairs(game.workspace:GetChildren()) do
                if v:FindFirstChildOfClass('Humanoid') and v ~= char and v:FindFirstChild('HumanoidRootPart') then
                    mag = (char.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
                    if mag <= 10 then
                        spawn(function()
                            local A_1 = getrenv()._G.Pass
                            local A_2 = v
                            local A_3 =  {
                                ["Type"] = "Normal",
                                ["HitEffect"] = "HeavyHitEffect", 
                                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.Clashing, 
                                ["Velocity"] = Vector3.new(0, -0.1, 0), 
                                ["HitTime"] = 0, 
                                ["CombatInv"] = true, 
                                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge, 
                                ["Damage"] = 4
                            }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
                        end)
                    end
                end
            end
        end
        end
    end)
wait(10)
repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "heh you thought you can kill me?", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(4)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "funny", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(4)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "you can't win", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(3)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "you have 2 choices give up and run away or stay and die", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(7)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "So get ready because im no longer gonna miss around", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(2)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = [[[Play]
Rage]], 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(3)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "heh", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Loop = Instance.new("BoolValue")
Loop.Parent = game.Lighting
Loop.Value = false
Loop.Name = "Looped"
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.Keyboard then
    if key.KeyCode == Enum.KeyCode["P"] then
        wait(3.5)    
        game.Lighting.Looped.Value = not game.Lighting.Looped.Value
while game.Lighting.Looped.Value == true do
    wait()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0.5, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "SlashEffect", 
    [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
    [4] = Color3.new(0.5, 0, 0), 
    [5] = CFrame.new(0, 0, 0, 0.866025388, 1, 0, 1, 0.866025388, 0, 0, 0, 1)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end
end
end
end)
local uis = game:GetService("UserInputService")


local player = game.Players.LocalPlayer
local char = player.Character
local pass = getrenv()._G.Pass
local activated = false

uis.InputBegan:Connect(function(i,s)
    if s then return end
    if key.KeyCode == Enum.KeyCode["P"] then
 activated = not activated
        if activated then
        local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7004737889"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()
wait(3.5)
       
            while activated do wait(0.4)
                for _,v in pairs(game.workspace:GetChildren()) do
                    if v:FindFirstChildOfClass('Humanoid') and v ~= char and v:FindFirstChild('HumanoidRootPart') then
                        local mag = (char.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
                        if mag <= 10 then
                            spawn(function()
                                local A_1 = pass
                                local A_2 = v
                                local A_3 =  {
                                    ["Type"] = "Normal",
                                    ["HitEffect"] = "HeavyHitEffect", 
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.Clashing, 
                                    ["Velocity"] = Vector3.new(0, -0.1, 0), 
                                    ["HitTime"] = 2.5, 
                                    ["CombatInv"] = true, 
                                    ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneDischarge, 
                                    ["Damage"] = 4
                                }
                                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                                Event:InvokeServer(A_1, A_2, A_3)
                            end)
                        end
                    end
                end
            end
        end
    end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then 
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.4)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileOrange", 
	[3] = "Spawn", 
	[4] = Vector3.new(0, 3000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "8" then

	CV="Eggplant"
	p = game.Players.LocalPlayer
	char = p.Character
	local txt = Instance.new("BillboardGui", char)
	txt.Adornee = char .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-17, 8, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Arcade"
	text.TextStrokeColor3 = Color3.new(0,0,0)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=p.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=char.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(255, 255, 0)
	v.Shape="Block"
	wait()
	text.Text = "15"
	wait(1)
	text.Text = "14"
	wait(1)
	text.Text = "13"
	wait(1)
	text.Text = "12"
	wait(1)
	text.Text = "11"
	wait(1)
	text.Text = "10"
	wait(1)
	text.Text = "9"
	wait(1)
	text.Text = "8"
	wait(1)
	text.Text = "7"
	wait(1)
	text.Text = "6"
	wait(1)
	text.Text = "5"
	wait(1)
	text.Text = "4"
	wait(1)
	text.Text = "3"
	wait(1)
	text.Text = "2"
	wait(1)
	text.Text = "1"
	wait(1)
	text.Text = " "
	end
end)
end)