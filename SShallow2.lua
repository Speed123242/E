game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Hollow"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(210, 90, 0)
------------------------------

--SecondLife Destroy

game.Players.LocalPlayer.Character.SecondLife:Destroy()
game:GetService("Players").LocalPlayer.Character.DeltaJetPack:Destroy()
game:GetService("Players").LocalPlayer.Character.RArmGauntlet:Destroy()

-----------------------------Animation

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4684237024"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)


------------------------------Text 

game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://6525359642"

local Player = game.Players.LocalPlayer
Player.Chatted:Connect(function(Chat)
wait()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = (Chat), 
      [4] = Color3.fromRGB(207,96,96)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end)


----------------------------------

KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
KG.Volume = 2.5
KG.SoundId = "rbxassetid://6041356616"
KG.Looped = true
KG:Play()

game.Players.LocalPlayer.StarterPlaylist["1"]:Destroy()

------------------------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "[Punch= Fire In Heaven]", 
				[4] = Color3.new(207, 96, 96)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4300091335"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4300091335"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776251749"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776251749"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5973918259"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 4
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5973918259"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 3
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4820780935"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect3",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2,
				["Damage"] = 3
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 3
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5657143572"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 3
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5657143572"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 3
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4612209624"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "YellowHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion,
				["Damage"] = 4
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		wait(0.7)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4910106480"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Knockback",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 80, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)


-----------------------


game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.X then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5776256280"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
                ["Velocity"] = Vector3.new(0.00100000005, 0.00100000005, 0.00100000005), 
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["Damage"] = 40
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
        wait(1)
        k:Stop()
    end
end)


-------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
local v1 = {
    [1] = getrenv()._G.Pass,  
    [2] = "Blasters2"
}
local rem = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves

rem:InvokeServer(v1)
end
end)

------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5770352035"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, 50, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776256280"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
----------------------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
	    wait(2.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5770352035"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, 50, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
	    wait(2.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776256280"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
	    wait(2.5)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(2.8)
	    wait(2.5)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then wait(3)
	    wait(2.5)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,
				["Velocity"] = Vector3.new(0, -0.1, 0), 
				["CombatInv"] = true,
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

----------------------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "b" then game.Players.LocalPlayer:GetMouse()
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "[Punch = Critical Blow]", 
				[4] = Color3.new(255,255,255)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3816275001"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = { 
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1,
				["Type"] = "Knockback",
				["HitEffect"] = "BoneHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, 200),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 40
			}
		}


		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(99999)
		k:Stop()
	end
end)

------------------------- Spec

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "[Punch = Spirt Flame]", 
				[4] = Color3.new(207, 96, 36)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776258610"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Earthquake,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776256280"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.BassDrop,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5776260400"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4300091335"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Rumble,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4920871999"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.CrossGasterFire,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3815846344"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3815846344"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeSlow,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3815846344"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.GTDarkSound,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3815846344"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3815846344"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5411106079"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5411106079"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5411106079"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaExplosion,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaBallBurst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://6136150963"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaBallBurst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaBallBurst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://6136150963"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaBallBurst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5079845969"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.DeltaBallBurst,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4063930148"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Knockback",
				["HitEffect"] = "BurstEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.FinalDeltaAttack,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)


-------------------------------

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "[Special = Carved Power!]", 
				[4] = Color3.new(50,50,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4807935308"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "BurstEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.PurpleCharge,
				["Velocity"] = Vector3.new(0, 0, -1), 
				["CombatInv"] = true,
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "YellowHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.PurpleCharge,
				["Velocity"] = Vector3.new(0, 0, -1), 
				["CombatInv"] = true,
				["Damage"] = 20
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then wait(0.2)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "YellowHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.PurpleCharge,
				["Velocity"] = Vector3.new(0, 0, -1), 
				["CombatInv"] = true,
				["Damage"] = 20
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)


-------------------------------


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
local v1 = {
    [1] = getrenv()._G.Pass,  
    [2] = "Blasters1"
}
local rem = game:GetService("ReplicatedStorage").Remotes.DeltaSansMoves

rem:InvokeServer(v1)
end
end)
