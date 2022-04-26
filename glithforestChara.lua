game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Chara =)"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
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
    [3] = "Lets go =)",
    [4] = Color3.fromRGB(255, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(0.2)
--Music

game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 2
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6174702663" 
Sound.Name = "No More Deals"
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then 
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "HAHA =)", 
                [4] = Color3.new(1,0,0)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.5)
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 1
        KG.SoundId = "rbxassetid://357417055"
        KG.Looped = false
        KG:Play()
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.2, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "HeavyHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0, 0.1), 
                ["Damage"] = 40
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.2, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "HeavyHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0, 0.1), 
                ["Damage"] = 40
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.2, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "HeavyHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0, 200), 
                ["Damage"] = 40
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
    end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "z" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 5
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.5)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.2)
		wait(0.4)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 50), 
				["Damage"] = 20
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

--Pull back

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3780057422"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 10), 
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

--Random thing

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://406913243"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5667210178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.6)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 5
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

--Slash barrage
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348265296"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348265296"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.3, 
				["Type"] = "Normal", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 3
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348788816"
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
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch, 
				["Velocity"] = Vector3.new(0, 30, 50), 
				["Damage"] = 18
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
--Second phase

game.Players.LocalPlayer:WaitForChild("DeathPlaylist")
game.Players.LocalPlayer.DeathPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.DeathPlaylist
Sound.Volume = 2
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6811501993" 
Sound.Name = "Second Phase No More Deals Chara"
wait(0.5)
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
		[3] = "Really, did you think I'll just die like the others?", 
		[4] = Color3.new(1,1,1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(4)
local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Chatted", 
		[3] = "You're sorely mistaken", 
		[4] = Color3.new(1,1,1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3)
local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Chatted", 
		[3] = "Did you forget what I told you?", 
		[4] = Color3.new(1,1,1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(3.5)
local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Chatted", 
		[3] = "Since when were you the one in control?", 
		[4] = Color3.new(1,0,0)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929570007"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

--Heart Locket explosion
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "You see a heart locket out of no where..*", 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(4)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "It exploded.*", 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://6338482322"
		KG.Looped = false
		KG:Play()
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["Velocity"] = Vector3.new(0, 50, 0), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

--Very strong slash
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "n" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "=)", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(0.5)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 200), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

--Strong Slash (Ultimate)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then 
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5, 
				["Type"] = "Normal", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 0
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "In case you forgot...", 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(2.3)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 3
		KG.SoundId = "rbxassetid://4898185564"
		KG.Looped = false
		KG:Play()
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "You made your choice long ago.", 
				[4] = Color3.new(1,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(0.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3788765583"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 10
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 3
		KG.SoundId = "rbxassetid://406913243"
		KG.Looped = false
		KG:Play()
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		wait(0.1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.5, 
				["Type"] = "Knockback", 
				["HitEffect"] = "KnifeHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 100), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then 
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
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
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
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
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
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
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
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
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
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
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "DIE!!!", 
				[4] = Color3.new(1,0,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3207868272"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 20,
				["Type"] = "Normal",
				["HitEffect"] = "HeavyHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
				["Damage"] = 10
			}
		}

		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(1)
		k:Stop()
	end
end)

wait()local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "g" then
		if db == true then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Chatted", 
					[3] = "DIE!!!", 
					[4] = Color3.new(255,0,0)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1) wait(0.3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "HeavyHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(0.4)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "HeavyHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, -15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
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
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 15, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(1.5)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 1, 
					["Type"] = "Normal", 
					["HitEffect"] = "Wind", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Velocity"] = Vector3.new(0, 200, 0), 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(0.6)
			db = true
		end
	end
end)