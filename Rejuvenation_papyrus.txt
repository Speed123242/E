game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Created By VoVaMSK#8388", Text = "I hope you like it!)"})

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1
music.SoundId = "rbxassetid://457591400"
music.Looped = true
music:Play()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "150/150"
game.Players.LocalPlayer.Character.Data.Attack.Value = "10"
game.Players.LocalPlayer.Character.Data.Defense.Value = "50"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Rejuvenation Papyrus"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 165, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 165, 0)

function setChat(id)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 4.5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://"..id
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.2)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()
end

local Player = game.Players.LocalPlayer

Player.Chatted:Connect(function(Chat)
wait(0.05)
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = (Chat), 
      [4] = Color3.fromRGB(255, 140, 45)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end)

setChat("5342465893")


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4900761581"
v.Animations.Run.AnimationId = "rbxassetid://4370518984"
v.Animations.Block.AnimationId = "rbxassetid://5657245133"
v.Animations.Walk.AnimationId = "rbxassetid://4370512420"
print('e')
end
end

local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do
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
 
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack
 
wait()
original:Destroy()
end)

game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456894133"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4456901030"
wait(1)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "z" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(50,50,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

--Attack 2
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(50,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "c" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)


-- Phase 2

repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 400
spawn(function()
music:Stop()
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

game.Players:Chat(("..."))
wait(2)
game.Players:Chat(("*Wh... What happend?*"))
wait(2)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "Error/Error"
game.Players.LocalPlayer.Character.Data.Attack.Value = "Error"
game.Players.LocalPlayer.Character.Data.Defense.Value = "Error"

game.Players:Chat(("*No Effect*"))
wait(6)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(30)
end)

game.Players:Chat(("*No Effect*"))
wait(1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(3)
end)

game.Players:Chat(("*...*"))
wait(1)
game.Players:Chat(("*I'm to myself*"))
wait(3)
game.Players:Chat(("*I know what happened*"))
wait(3)
game.Players:Chat(("*I know what Sans was talk ing about now...*"))
wait(3)
game.Players:Chat(("*This... Feeling...*"))
wait(3)
game.Players:Chat(("*It's Hatred*"))
wait(3)
game.Players:Chat(("*Hatred for the person who has taken everyone from me*"))
wait(3)
game.Players:Chat(("*That is what has gotten you this far, Isn't it?*"))
wait(3)
game.Players:Chat(("*YOUR INCREDIBLE HATRED TOWARDS OTHERS.*"))
wait(4)
game.Players:Chat(("*But now that i know this...*"))
wait(3)
game.Players:Chat(("*Now that I Know the reason You FIGHT.*"))
wait(4)
game.Players:Chat(("*I understand You, human*"))
wait(3)
game.Players:Chat(("*I WILL HELP YOU BE GOOD!*"))
wait(3)
game.Players:Chat(("*I AM DETERMINEDTO SEE IT THROUGH!*"))
wait(4)
game.Players:Chat(("*AND THAT IS HOW I WILL DEFEAT YOU.*"))
wait(4)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://4929415522"
music.Looped = true
music:Play()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4725460334"
v.Animations.Walk.AnimationId = "rbxassetid://5658603994"
v.Animations.Run.AnimationId = "rbxassetid://5657151699"
print('e')
end
end
 
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do
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
 
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack
 
wait()
original:Destroy()
end)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "???/???"
game.Players.LocalPlayer.Character.Data.Attack.Value = "1000"
game.Players.LocalPlayer.Character.Data.Defense.Value = "10000"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "determination Papyrus"
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

spawn(function()
repeat wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "changeEye",
        [3] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
until false
end)
spawn(function()
repeat wait(0.1)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'Beam' then
v.Color = ColorSequence.new(Color3.fromRGB(255,176,0))
end
end
end)


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
end
end
end)
until false
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'Trail' then
v.Color = ColorSequence.new(Color3.fromRGB(255,176,0))
end
end
end)

-- N
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["N"] then
        wait(0.1)
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

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["B"] then
        bonespam = true
        spawn(function()
        repeat wait(0.1)
            local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        until bonespam == false
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOneBig",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(4)
        bonespam = false
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["G"] then
    wait(0.1)
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

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["B"] then
        bonespam = true
        spawn(function()
        repeat wait(0.1)
            local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        until bonespam == false
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOneBig",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(3)
        bonespam = false
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["M"] then
        bonespam = true
        spawn(function()
        repeat wait(0.1)
            local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Telekinesis",
                [3] = "Telekinesis1",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        until bonespam == false
                  local args = {
                [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "AirSpawn2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(0.1)
        bonespam = false
    end
end)

--mercy...
repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 1000
spawn(function()
music:Stop()
end)

game.Players:Chat(("*Man I'm giving you one last chance...*"))
wait(2)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Stop(3)
end)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text ="-99999999/???"
game.Players.LocalPlayer.Character.Data.Attack.Value = "0"
game.Players.LocalPlayer.Character.Data.Defense.Value = "0"

spawn(function()
    wait(0.4)
char['Right Arm'].Transparency = 0.1 
wait(0.1)
char['Right Arm'].Transparency = 0.2 
wait(0.1)
char['Right Arm'].Transparency = 0.3
wait(0.1)
char['Right Arm'].Transparency = 0.4 
wait(0.1)
char['Right Arm'].Transparency = 0.5 
wait(0.1)
char['Right Arm'].Transparency = 0.6 
wait(0.1)
char['Right Arm'].Transparency = 0.7 
wait(0.1)
char['Right Arm'].Transparency = 0.8 
wait(0.1)
char['Right Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.4)
char['Left Arm'].Transparency = 0.1 
wait(0.1)
char['Left Arm'].Transparency = 0.2 
wait(0.1)
char['Left Arm'].Transparency = 0.3
wait(0.1)
char['Left Arm'].Transparency = 0.4 
wait(0.1)
char['Left Arm'].Transparency = 0.5 
wait(0.1)
char['Left Arm'].Transparency = 0.6 
wait(0.1)
char['Left Arm'].Transparency = 0.7 
wait(0.1)
char['Left Arm'].Transparency = 0.8 
wait(0.1)
char['Left Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Right Leg'].Transparency = 0.1 
wait(0.1)
char['Right Leg'].Transparency = 0.2 
wait(0.1)
char['Right Leg'].Transparency = 0.3
wait(0.1)
char['Right Leg'].Transparency = 0.4 
wait(0.1)
char['Right Leg'].Transparency = 0.5 
wait(0.1)
char['Right Leg'].Transparency = 0.6 
wait(0.1)
char['Right Leg'].Transparency = 0.7 
wait(0.1)
char['Right Leg'].Transparency = 0.8 
wait(0.1)
char['Right Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Left Leg'].Transparency = 0.1 
wait(0.1)
char['Left Leg'].Transparency = 0.2 
wait(0.1)
char['Left Leg'].Transparency = 0.3
wait(0.1)
char['Left Leg'].Transparency = 0.4 
wait(0.1)
char['Left Leg'].Transparency = 0.5 
wait(0.1)
char['Left Leg'].Transparency = 0.6 
wait(0.1)
char['Left Leg'].Transparency = 0.7 
wait(0.1)
char['Left Leg'].Transparency = 0.8 
wait(0.1)
char['Left Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.2)
char['Torso'].Transparency = 0.1 
wait(0.1)
char['Torso'].Transparency = 0.2 
wait(0.1)
char['Torso'].Transparency = 0.3
wait(0.1)
char['Torso'].Transparency = 0.4 
wait(0.1)
char['Torso'].Transparency = 0.5 
wait(0.1)
char['Torso'].Transparency = 0.6 
wait(0.1)
char['Torso'].Transparency = 0.7 
wait(0.1)
char['Torso'].Transparency = 0.8 
wait(0.1)
char['Torso'].Transparency = 0.9
end)

spawn(function()
char['Head'].Transparency = 0.1 
wait(0.1)
char['Head'].Transparency = 0.2 
wait(0.1)
char['Head'].Transparency = 0.3
wait(0.1)
char['Head'].Transparency = 0.4 
wait(0.1)
char['Head'].Transparency = 0.5 
wait(0.1)
char['Head'].Transparency = 0.6 
wait(0.1)
char['Head'].Transparency = 0.7 
wait(0.1)
char['Head'].Transparency = 0.8 
wait(0.1)
char['Head'].Transparency = 0.9
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0.1
wait(0.1)
v.Transparency = 0.2
wait(0.1)
v.Transparency = 0.3
wait(0.1)
v.Transparency = 0.4
wait(0.1)
v.Transparency = 0.5
wait(0.1)
v.Transparency = 0.6
wait(0.1)
v.Transparency = 0.7
wait(0.1)
v.Transparency = 0.8
wait(0.1)
v.Transparency = 0.9
wait(0.1)
end
end


game.Players:Chat(("*...*"))
wait(10)

char['Head'].Transparency = 0
char['Torso'].Transparency = 0
char['Left Arm'].Transparency = 0
char['Right Arm'].Transparency = 0
char['Left Leg'].Transparency = 0
char['Right Leg'].Transparency = 0
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0
end
end

wait(1.5)


game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text ="-99999999/???"
game.Players.LocalPlayer.Character.Data.Attack.Value = "100"
game.Players.LocalPlayer.Character.Data.Defense.Value = "1000"

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://4929415522"
music.Looped = true
music:Play(5)





--end???
repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
spawn(function()
end)

spawn(function()
    wait(0.4)
char['Right Arm'].Transparency = 0.1 
wait(0.1)
char['Right Arm'].Transparency = 0.2 
wait(0.1)
char['Right Arm'].Transparency = 0.3
wait(0.1)
char['Right Arm'].Transparency = 0.4 
wait(0.1)
char['Right Arm'].Transparency = 0.5 
wait(0.1)
char['Right Arm'].Transparency = 0.6 
wait(0.1)
char['Right Arm'].Transparency = 0.7 
wait(0.1)
char['Right Arm'].Transparency = 0.8 
wait(0.1)
char['Right Arm'].Transparency = 0.9
wait(0.1)
char['Right Arm'].Transparency = 1
end)

game.Players:Chat(("What?..."))
wait(1)

--end???
repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 200
spawn(function()
music:Stop()
end)

spawn(function()
    wait(0.4)
char['Left Arm'].Transparency = 0.1 
wait(0.1)
char['Left Arm'].Transparency = 0.2 
wait(0.1)
char['Left Arm'].Transparency = 0.3
wait(0.1)
char['Left Arm'].Transparency = 0.4 
wait(0.1)
char['Left Arm'].Transparency = 0.5 
wait(0.1)
char['Left Arm'].Transparency = 0.6 
wait(0.1)
char['Left Arm'].Transparency = 0.7 
wait(0.1)
char['Left Arm'].Transparency = 0.8 
wait(0.1)
char['Left Arm'].Transparency = 0.9
wait(0.1)
char['Left Arm'].Transparency = 1
end)

game.Players:Chat(("*My limit is over*"))
wait(3)

spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
print("debug3-5")
wait(5)
k:Stop(10)
end)

spawn(function()
    wait(0.6)
char['Right Leg'].Transparency = 0.1 
wait(0.9)
char['Right Leg'].Transparency = 0.2 
wait(0.9)
char['Right Leg'].Transparency = 0.3
wait(0.9)
char['Right Leg'].Transparency = 0.4 
wait(0.9)
char['Right Leg'].Transparency = 0.5 
wait(0.9)
char['Right Leg'].Transparency = 0.6 
wait(0.9)
char['Right Leg'].Transparency = 0.7 
wait(0.9)
char['Right Leg'].Transparency = 0.8 
wait(0.9)
char['Right Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Left Leg'].Transparency = 0.1 
wait(0.9)
char['Left Leg'].Transparency = 0.2 
wait(0.9)
char['Left Leg'].Transparency = 0.3
wait(0.9)
char['Left Leg'].Transparency = 0.4 
wait(0.9)
char['Left Leg'].Transparency = 0.5 
wait(0.9)
char['Left Leg'].Transparency = 0.6 
wait(0.9)
char['Left Leg'].Transparency = 0.7 
wait(0.9)
char['Left Leg'].Transparency = 0.8 
wait(0.9)
char['Left Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.2)
char['Torso'].Transparency = 0.1 
wait(0.9)
char['Torso'].Transparency = 0.2 
wait(0.9)
char['Torso'].Transparency = 0.3
wait(0.9)
char['Torso'].Transparency = 0.4 
wait(0.9)
char['Torso'].Transparency = 0.5 
wait(0.9)
char['Torso'].Transparency = 0.6 
wait(0.9)
char['Torso'].Transparency = 0.7 
wait(0.9)
char['Torso'].Transparency = 0.8 
wait(0.9)
char['Torso'].Transparency = 0.9
end)

spawn(function()
char['Head'].Transparency = 0.1 
wait(0.9)
char['Head'].Transparency = 0.2 
wait(0.9)
char['Head'].Transparency = 0.3
wait(0.9)
char['Head'].Transparency = 0.4 
wait(0.9)
char['Head'].Transparency = 0.5 
wait(0.9)
char['Head'].Transparency = 0.6 
wait(0.9)
char['Head'].Transparency = 0.7 
wait(0.9)
char['Head'].Transparency = 0.8 
wait(0.9)
char['Head'].Transparency = 0.9
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0.1
wait(0.9)
v.Transparency = 0.2
wait(0.9)
v.Transparency = 0.3
wait(0.9)
v.Transparency = 0.4
wait(0.9)
v.Transparency = 0.5
wait(0.9)
v.Transparency = 0.6
wait(0.9)
v.Transparency = 0.7
wait(0.9)
v.Transparency = 0.8
wait(0.9)
v.Transparency = 0.9
wait(0.9)
end
end

char['Head'].Transparency = 0
char['Torso'].Transparency = 0
char['Left Arm'].Transparency = 0
char['Right Arm'].Transparency = 0
char['Left Leg'].Transparency = 0
char['Right Leg'].Transparency = 0
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0
end
end

game.Players:Chat(("*THIS IS NOT THE END*"))
wait(3)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1
music.SoundId = "rbxassetid://6654413437"
music.Looped = true
music:Play()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "50/50"
game.Players.LocalPlayer.Character.Data.Attack.Value = "100"
game.Players.LocalPlayer.Character.Data.Defense.Value = "300"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "???"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "v" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776249806"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776249806"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776249806"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776249806"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.01)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776235173"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.3)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(0.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InlokeServer(v1, v2, v3)
end
end)

--end???
repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 100
spawn(function()
music:Stop()
end)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://6485273824"
music.Looped = true
music:Play()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "0/50"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.001, 1, 0.25, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "0/50"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.001, 1, 0.25, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 255, 0)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "0/50"
game.Players.LocalPlayer.Character.Data.Attack.Value = "0"
game.Players.LocalPlayer.Character.Data.Defense.Value = "0"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "die"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)


spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4460182501"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.1)
wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4416715001"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
print("debug3-5")
wait(5)
k:Stop(999)
end)

game.Players:Chat(("*well then*"))
wait(1)
game.Players:Chat(("*I guess this is the end...*"))
wait(3)
game.Players:Chat(("*I know.*"))
wait(4)
game.Players:Chat(("*That I let everyone down...*"))
wait(5)
game.Players:Chat(("*Sans, Gaster, All, Asgore.*"))
wait(6)
game.Players:Chat(("*forgive me...*"))
wait(7)
game.Players:Chat(("*You man defeated me.*"))
wait(8)
game.Players:Chat(("*I'm coming to you...*"))
wait(9)

spawn(function()
    wait(0.4)
char['Right Arm'].Transparency = 0.1 
wait(2)
char['Right Arm'].Transparency = 0.2 
wait(2)
char['Right Arm'].Transparency = 0.3
wait(2)
char['Right Arm'].Transparency = 0.4 
wait(2)
char['Right Arm'].Transparency = 0.5 
wait(2)
char['Right Arm'].Transparency = 0.6 
wait(2)
char['Right Arm'].Transparency = 0.7 
wait(2)
char['Right Arm'].Transparency = 0.8 
wait(2)
char['Right Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.4)
char['Left Arm'].Transparency = 0.1 
wait(2)
char['Left Arm'].Transparency = 0.2 
wait(2)
char['Left Arm'].Transparency = 0.3
wait(2)
char['Left Arm'].Transparency = 0.4 
wait(2)
char['Left Arm'].Transparency = 0.5 
wait(2)
char['Left Arm'].Transparency = 0.6 
wait(2)
char['Left Arm'].Transparency = 0.7 
wait(2)
char['Left Arm'].Transparency = 0.8 
wait(2)
char['Left Arm'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Right Leg'].Transparency = 0.1 
wait(2)
char['Right Leg'].Transparency = 0.2 
wait(2)
char['Right Leg'].Transparency = 0.3
wait(2)
char['Right Leg'].Transparency = 0.4 
wait(2)
char['Right Leg'].Transparency = 0.5 
wait(2)
char['Right Leg'].Transparency = 0.6 
wait(2)
char['Right Leg'].Transparency = 0.7 
wait(2)
char['Right Leg'].Transparency = 0.8 
wait(2)
char['Right Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Left Leg'].Transparency = 0.1 
wait(2)
char['Left Leg'].Transparency = 0.2 
wait(2)
char['Left Leg'].Transparency = 0.3
wait(2)
char['Left Leg'].Transparency = 0.4 
wait(2)
char['Left Leg'].Transparency = 0.5 
wait(2)
char['Left Leg'].Transparency = 0.6 
wait(2)
char['Left Leg'].Transparency = 0.7 
wait(2)
char['Left Leg'].Transparency = 0.8 
wait(2)
char['Left Leg'].Transparency = 0.9
end)

spawn(function()
    wait(0.6)
char['Torso'].Transparency = 0.1 
wait(2)
char['Torso'].Transparency = 0.2 
wait(2)
char['Torso'].Transparency = 0.3
wait(2)
char['Torso'].Transparency = 0.4 
wait(2)
char['Torso'].Transparency = 0.5 
wait(2)
char['Torso'].Transparency = 0.6 
wait(2)
char['Torso'].Transparency = 0.7 
wait(2)
char['Torso'].Transparency = 0.8 
wait(2)
char['Torso'].Transparency = 0.9
end)

spawn(function()
     wait(0.6)
char['Head'].Transparency = 0.1 
wait(2)
char['Head'].Transparency = 0.2 
wait(2)
char['Head'].Transparency = 0.3
wait(2)
char['Head'].Transparency = 0.4 
wait(2)
char['Head'].Transparency = 0.5 
wait(2)
char['Head'].Transparency = 0.6 
wait(2)
char['Head'].Transparency = 0.7 
wait(2)
char['Head'].Transparency = 0.8 
wait(2)
char['Head'].Transparency = 0.9
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'Handle' then
v.Transparency = 0.1
wait(2)
v.Transparency = 0.2
wait(2)
v.Transparency = 0.3
wait(2)
v.Transparency = 0.4
wait(2)
v.Transparency = 0.5
wait(2)
v.Transparency = 0.6
wait(2)
v.Transparency = 0.7
wait(2)
v.Transparency = 0.8
wait(2)
v.Transparency = 0.9
wait(2)
end
end

wait(0.1)
    local v1 = {
                [1] = getrenv()._G.Pass, 
                [2] = "Damage", 
                [3] = math.huge, 
                [4] = game.Players.LocalPlayer.Character
            }
            local event = game:GetService("ReplicatedStorage").Remotes.Events
            event:FireServer(v1) 

wait(0.1)
    local v1 = {
                [1] = getrenv()._G.Pass, 
                [2] = "Damage", 
                [3] = math.huge, 
                [4] = game.Players.LocalPlayer.Character
            }
            local event = game:GetService("ReplicatedStorage").Remotes.Events
            event:FireServer(v1)

