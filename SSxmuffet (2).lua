local plr = game.Players.LocalPlayer.Name
game.Workspace:WaitForChild(plr)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Muffet"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(230, 0, 255)
-- Animations
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5101233182"

local playAnim = humanoid:LoadAnimation(anim)
function button()
	playAnim:Play()
end


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5101202405"

local playAnim = humanoid:LoadAnimation(anim)
function HandOut()
	playAnim:Play()
end
function HandStop()
	playAnim:Stop()
end

--Remove Bone

local Player = game.Players.LocalPlayer

local Backpack = Player.Backpack

Player.Character.CrossBone:Remove()

wait()
-- Background Chat
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Chat")
wait(2)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(0.8, 0, 1)
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Theme"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 2
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6183455278" 
Sound.Name = "XMuffet"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run.AnimationId = "rbxassetid://6136042922"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle.AnimationId = "rbxassetid://6136039008"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk.AnimationId = "rbxassetid://6136040526"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Block.AnimationId = "rbxassetid://4088050522"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Block2.AnimationId = "rbxassetid://4088050522"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run2.AnimationId = "rbxassetid://6136042922"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle2.AnimationId = "rbxassetid://6136039008"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk2.AnimationId = "rbxassetid://6136040526"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Block3.AnimationId = "rbxassetid://4088050522"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run3.AnimationId = "rbxassetid://5863504160"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Idle3.AnimationId = "rbxassetid://5863360968"
game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Walk3.AnimationId = "rbxassetid://5863504160"

local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Overwrite", 
		[3] = "Summon"
	}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://4459132147"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 0.7
wait(0.5)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "... The fact that there is another you is a threat.. ", 
		[4] = Color3.new(1, 0, 0)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(6)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "I promise.. one of us will remain", 
		[4] = Color3.new(1, 0, 0)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(6)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "and it won't be YOU", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(1.5)
local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Overwrite", 
		[3] = "UnSummon"
	}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.N then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "Time have stopped..", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2, 
				["Type"] = "Normal", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop2, 
				["Damage"] = 0
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)



local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.M then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "Time may move again..", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop, 
				["Damage"] = 0
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()


local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://3786809782"

mouse.KeyDown:connect(function(key)
	if key == "b" then
		local playAnim = humanoid:LoadAnimation(anim)
		playAnim:Play()
		wait(8)
		playAnim:Stop()

	end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "b" then
		if db == true then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "Summon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "Unsummon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			wait(6)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Well.. I always wanted a pet.. ", 
					[4] = Color3.new(1, 0.25, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			wait(3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect",  
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab, 
					["VictimCFrame"] = CFrame.new(), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(8)
			db = true
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "h" then
		if db == true then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "Summon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			wait(0.5)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Heh.. Well goodbye..", 
					[4] = Color3.new(0.8, 0, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "HeavyHitEffect", 
					["HurtAnimation"] = game.Players.LocalPlayer.Backpack.Main.XSansMoves.Animations.Run, 
					["Velocity"] = Vector3.new(-35, 0, 35), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "UnSummon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "v" then
		if db == true then
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "LightHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "... Well..", 
					[4] = Color3.new(1, 1, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			wait(2)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Hmm... Heh", 
					[4] = Color3.new(1, 1, 1)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			wait(3)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "There goes.. My final attack.. ", 
					[4] = Color3.new(0.5, 0.32, 0.3)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			wait(5)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Chatted", 
					[3] = "Goodbye.", 
					[4] = Color3.new(0.5, 0.32, 0.3)
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
			Event:FireServer(A_1)
			wait(3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
			local A_3 = 
				{
					["HitTime"] = 2, 
					["Type"] = "Normal", 
					["HitEffect"] = "KnifeHitEffect", 
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
					["Velocity"] = Vector3.new(0, 0.000001, 0), 
					["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
					["Damage"] = 10
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(1)
			db = true
		end
	end
end)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://5667194069"
local playAnim = humanoid:LoadAnimation(anim)
function finish()
	playAnim:Play()
	playAnim:AdjustSpeed(0.5)
end
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://4800436094"
local playAnim = humanoid:LoadAnimation(anim)
function mudamuda()
	playAnim:Play()
	playAnim.TimePosition = 0.5
	playAnim:AdjustSpeed(1)
end

function mudastop()
	playAnim:Stop()
end
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, isTyping)
	if not isTyping then
		if input.KeyCode == Enum.KeyCode.G then
			if not pressed then
				pressed = true
				local A_1 = 
					{
						[1] = getrenv()._G.Pass, 
						[2] = "Chatted", 
						[3] = "Shadow Barrage..", 
						[4] = Color3.new(0.8, 0, 1)
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Events
				Event:FireServer(A_1)
				repeat wait()
					local A_1 = getrenv()._G.Pass
					local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
						{
							["HitTime"] = 2.5, 
							["Type"] = "Normal", 
							["HitEffect"] = "KnifeHitEffect", 
							["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
							["Velocity"] = Vector3.new(0, 0.00001, 0), 
							["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
							["Damage"] = 10
						}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					Event:InvokeServer(A_1, A_2, A_3)
					mudamuda()
				until not pressed
			end
		end
	end
end)


userInputService.InputEnded:Connect(function(input, isTyping)
	if not isTyping then
		if input.KeyCode == Enum.KeyCode.G then
			pressed = false
			mudastop()
			print("Barrage done")
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "p" then
		if db == true then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "UnSummon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)
local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "z" then
		if db == true then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "Summon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			wait(0.6)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Overwrite", 
					[3] = "Heal"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			wait(1)
			local A_1 = 
				{
					[1] = getrenv()._G.Pass,
					[2] = "Overwrite", 
					[3] = "UnSummon"
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
			Event:InvokeServer(A_1)
			db = false
			wait(1)
			db = true
		end
	end
end)

--Random Skill

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

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 10),

				["Damage"] = 13

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

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
				["HitTime"] = 1,

				["Type"] = "Normal",

				["HitEffect"] = "KnifeHitEffect",

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 10

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

--ACT Overwrite

local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(k)

	if k == "y" then 

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "Summon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)

		local A_1 = 

			{
				[1] = getrenv()._G.Pass,

				[2] = "Chatted",

				[3] = "ACT = [Explosion]*",

				[4] = Color3.new(0.8, 0, 1)

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "Unsummon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)

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

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.AreaAttackBurst,

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

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 50, 0),

				["Damage"] = 40

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(k)

	if k == "t" then 

		local A_1 = 

			{
				[1] = getrenv()._G.Pass,

				[2] = "Chatted",

				[3] = "I'll play by my own Rules.",

				[4] = Color3.new(0.08,0,1)

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 200),

				["Damage"] = 20

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

--Second phase



game.Players.LocalPlayer:WaitForChild("DeathPlaylist")

game.Players.LocalPlayer.DeathPlaylist["1Theme"]:Destroy()

local Sound = Instance.new("Sound")

Sound.Parent = game.Players.LocalPlayer.DeathPlaylist

Sound.Volume = 2

Sound.Playing = true

Sound.Looped = true

Sound.SoundId = "rbxassetid://5126469548"

Sound.Name = "Xgaster"

--Aura
coroutine.resume(coroutine.create(function()
	while true do
		game:GetService("ReplicatedStorage").Remotes.Events:FireServer({[1] = getrenv()._G.Pass,[2] = "SlashEffect",[3] = game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.Slash.Swing1,[4] = Color3.fromRGB(0, 0, 0),[5] = CFrame.Angles(0, 0, math.rad(-33))})
		game:GetService("ReplicatedStorage").Remotes.Events:FireServer({[1] = getrenv()._G.Pass,[2] = "SlashEffect",[3] = game:GetService("Players").LocalPlayer.Backpack.Main.XSansMoves.ModuleScript.Animations.Slash.Swing2,[4] = Color3.fromRGB(0, 0, 0),[5] = CFrame.Angles(0, 0, math.rad(33))})
		wait(0.235)
	end
end))

--Lock Key
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND = "CantAttack"

CAS:BindActionAtPriority(

	FREEZE_COMMAND,

	function() 

		return Enum.ContextActionResult.Sink

	end,

	false,

	Enum.ContextActionPriority.High.Value,

	Enum.KeyCode.C,

	Enum.KeyCode.X,

	Enum.KeyCode.G,

	Enum.KeyCode.H,

	Enum.KeyCode.V,

	Enum.KeyCode.B,

	Enum.KeyCode.N,

	Enum.KeyCode.M,

	Enum.KeyCode.T,

	Enum.KeyCode.R
)

--Other Stuff
local plr = game.Players.LocalPlayer.Name
game.Workspace:WaitForChild(plr)
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "XGaster"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(51, 0, 120)

wait(30)

--XGaster Talk
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "I knew this wold happen...", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)

wait(8)

local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "This...Interesting!", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)

wait(6)

local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "But...That enough.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)

wait(10)

local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "U just gave me a good reason to work in complete confidence.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(13)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "CIVILIZED CONVERSATIONS ARE POINTLESS.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(8)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "A WORLD WITH SUCK INEQUALITY CANNOT BE SHARED WITH THE IGNORANT.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(10)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "OTHERWISE, IT WILL NEVER BE SOMETHING PERFECT.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(10)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "I WILL PLAY BY MY OWN RULES.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(8)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "THE RESOURCES THIS UNIVERSE OFFERS WILL BE A WASTE NO MORE.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(13)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "AND ONLY THOSE WHO ARE TRULY WORTH LIVING WILL STAY.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(8)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "THIS IS THE MATCH POINT FOR ETERNITY.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(8)
local A_1 = 
	{
		[1] = getrenv()._G.Pass, 
		[2] = "Chatted", 
		[3] = "THIS IS REALITY.", 
		[4] = Color3.new(1, 0, 1)
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
--Final ACT

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "p" then 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3786809782"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(2)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 0, -1),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit,
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
	if k == "9" then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://6564956178"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2.5,
				["Type"] = "Knockback", 
				["HitEffect"] = "BoneHitEffect",
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
				["CameraShake"] = "BigExplosion",
				["Velocity"] = Vector3.new(0, 0, 0),
				["CombatInv"] = true,
				["Damage"] = 35
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "9" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "Summon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "ACT = [Delete]*", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

		wait(3)

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "UnSummon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)
	end
end)
game:GetService("UserInputService").InputBegan:Connect(function(key, gpe)
	if gpe then return
	elseif key.KeyCode == Enum.KeyCode.Q then
		local summon = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite",
				[3] = "Summon"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(unpack(summon))

		local v21 = require(game:GetService("ReplicatedStorage").ClientModules.MainModule)
		local enemyname = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local tplocation = function()
			if not enemyname then
				return CFrame.new(game.Players.LocalPlayer:GetMouse().Hit.Position, game.Players.LocalPlayer:GetMouse().Hit.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 5);
			end
			return CFrame.new(enemyname.HumanoidRootPart.Position + v21.getSpot(enemyname, enemyname.HumanoidRootPart.CFrame, 5).lookVector * 5, enemyname.HumanoidRootPart.Position);
		end
		local args = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "XCharaTeleport",
				[3] = tplocation()
			}
		}
		game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(unpack(args))

		local unsummon = {
			[1] = {
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite",
				[3] = "UnSummon"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.XSansMoves:InvokeServer(unpack(unsummon))

	end
end)

--Xtale Unit

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.K then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Muffet]: Time have stopped..", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 2, 
				["Type"] = "Normal", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop2, 
				["Damage"] = 0
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)



local Player = game.Players.LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.J then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Muffet]: Time may move again..", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 1, 
				["Type"] = "Normal", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
				["Velocity"] = Vector3.new(0, 0.0001, 0), 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.TimeStop, 
				["Damage"] = 0
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "8" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Met taton]: Now that I think about it...", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

		KG.Volume = 3

		KG.SoundId = "rbxassetid://4898185564"

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
				["HitTime"] = 0.3,

				["Type"] = "Normal",

				["HitEffect"] = "KnifeHitEffect",

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,

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

		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

		KG.Volume = 3

		KG.SoundId = "rbxassetid://4898185564"

		KG.Looped = false

		KG:Play()

		local A_1 = getrenv()._G.Pass

		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

		local A_3 = 

			{
				["HitTime"] = 0.3,

				["Type"] = "Normal",

				["HitEffect"] = "KnifeHitEffect",

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,

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

		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

		KG.Volume = 3

		KG.SoundId = "rbxassetid://4898185564"

		KG.Looped = false

		KG:Play()

		local A_1 = getrenv()._G.Pass

		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

		local A_3 = 

			{
				["HitTime"] = 0.3,

				["Type"] = "Normal",

				["HitEffect"] = "KnifeHitEffect",

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,

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

		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

		KG.Volume = 3

		KG.SoundId = "rbxassetid://4898185564"

		KG.Looped = false

		KG:Play()

		local A_1 = getrenv()._G.Pass

		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

		local A_3 = 

			{
				["HitTime"] = 0.3,

				["Type"] = "Normal",

				["HitEffect"] = "KnifeHitEffect",

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,

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

		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

		KG.Volume = 3

		KG.SoundId = "rbxassetid://4898185564"

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

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,

				["Velocity"] = Vector3.new(0, 30, 0),

				["Damage"] = 18

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "5" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "Summon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Frisk]: I'm so disappointed in you...", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

		wait(3)

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Overwrite", 
				[3] = "UnSummon"
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
		Event:InvokeServer(A_1)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "3" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Asriel]: But..Nobody came.", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "2" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Alphys]: You're defend and attack might be low.", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(k)

	if k == "7" then 

		local A_1 = 

			{
				[1] = getrenv()._G.Pass,

				[2] = "Chatted",

				[3] = "[Toriel/Asgore]: DONT TOUCH THE CHILD.",

				[4] = Color3.new(0.8, 0, 1)

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

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

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.AreaAttackBurst,

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

				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,

				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 50, 0),

				["Damage"] = 40

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Cross/Papyrus]: We're The saviours.", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "4" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Chara]: Just one world..With the best of the others.", 
				[4] = Color3.new(1, 0, 0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		wait(10)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass, 
				[2] = "Chatted", 
				[3] = "[Chara]: Just one Universe.", 
				[4] = Color3.new(0.8, 0, 1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "6" then 

		local A_1 = 

			{
				[1] = getrenv()._G.Pass,

				[2] = "Chatted",

				[3] = "[Un dy ne]: NO ONE IN THIS WORLD NEEDS YOU ANYMORE.",

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 0.1),

				["Damage"] = 20

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

				["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.DaggerHit,

				["CombatInv"] = true,

				["Velocity"] = Vector3.new(0, 0, 200),

				["Damage"] = 20

			}

		local Event = game:GetService("ReplicatedStorage").Remotes.Damage

		Event:InvokeServer(A_1, A_2, A_3)

	end
end)

