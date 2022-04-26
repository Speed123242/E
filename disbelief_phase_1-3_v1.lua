-- Disbelief.

local player = game.Players.LocalPlayer
local char = player.Character

print("debug23")

function Vignette()
    local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = 'ScreenEffect'
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageTransparency = 1-- You can change the transparency of the Vignette effect
ImageLabel.Image = "http://www.roblox.com/asset/?id=5306992782"
wait()
ImageLabel.Size = UDim2.new(0, 2000, 0, 1080)
ImageLabel.Position = UDim2.new(0,-200,0,-200)
wait(0.1)
ImageLabel.ImageTransparency = 1
wait(0.1)
ImageLabel.ImageTransparency = 0.9
wait(0.1)
ImageLabel.ImageTransparency = 0.8
wait(0.1)
ImageLabel.ImageTransparency = 0.7
wait(0.1)
ImageLabel.ImageTransparency = 0.6
wait(0.1)
ImageLabel.ImageTransparency = 0.5
wait(0.1)
ImageLabel.ImageTransparency = 0.4
wait(0.1)
ImageLabel.ImageTransparency = 0.3
wait(0.1)
ImageLabel.ImageTransparency = 0.2
wait(0.1)
ImageLabel.ImageTransparency = 0.1
wait(0.1)
ImageLabel.ImageTransparency = 0
wait(22)
ImageLabel.ImageTransparency = 1
end

function KnockbackAura(val)
    kbAura = true
if kbAura == true then
repeat wait(1.1)
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.workspace:GetChildren()) do

if v:FindFirstChildOfClass('Humanoid') then
if v:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude
if range <15 and v.Name ~= player.Name then
print("debug23837")
spawn(function()
local A_1 = getrenv()._G.Pass
local A_2 = v
local A_3 =  {
      ["Type"] = "Knockback", 
      ['HitEffect'] = 'HeavyHitEffect',
      ["HitTime"] = 2, 
      ["Velocity"] = Vector3.new(0,35,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75,
      ["VictimCFrame"] = CFrame.new(), 
      ['CombatInv'] = true,
      ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end)
end
end
end
end

until kbAura == false
end
end

function inv(val)
if (val) == true then

getrenv()._G.P = true
getrenv()._G.PP = true
function st(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
spawn(function()
while wait() and getrenv()._G.P do
local ohTable1 = {
	[1] = getrenv()._G.Pass,
	[2] = "InvFrames",
	[3] = 0.2
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end
end)
spawn(function()
while wait() and getrenv()._G.PP do
xpcall(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "InvDeleting" then
print("YEET "..v.Parent.Name)
v.Parent=nil
elseif st(v.Name, "Hit") or st(v.Name, "InCutscene") or st(v.Name, "StatsDebuff") or st(v.Name, "Damage") or st(v.Name, "StayGrounded") or st(v.Name, "Hitt") or st(v.Name, "netOwner") then
print("YEETEEY "..v.Name)
v.Parent=nil
end
for _,v2 in pairs(v:GetChildren()) do
if v2.Name == "InvDeleting" then
print("YEET "..v2.Parent.Name)
v2.Parent=nil
end
end
end
end, function(e)
print(e)
end)
end
end)
wait()
elseif (val) == false then
        getrenv()._G.P = false
        getrenv()._G.PP = false
end
end

function Autoblock()
    spawn(function()
    autoblocking = true
    print("debug1")
    if autoblocking == true then
    repeat wait(0.1)
        local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Blocking",
        [3] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
until autoblocking == false
end
end)
end

function Chat(text)
if dead == true then return end
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = text, 
	[4] = Color3.fromRGB(255, 140, 45)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end

function Chat2(text)
if dead == true then return end
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = text, 
	[4] = Color3.fromRGB(255, 255, 255)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end

function normalHit()
    spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["Karma"] = 30,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
        ["Velocity"] = Vector3.new(0, 0.1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
        ["Damage"] = 8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end

function stunHit()
    spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["Velocity"] = Vector3.new(0, 0.1, 0),
        ["Damage"] = 0
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end

function upHit()
    spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["Karma"] = 30,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
        ["Velocity"] = Vector3.new(0, 50, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Burst,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end


function areaHit()
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.workspace:GetChildren()) do

if v:FindFirstChildOfClass('Humanoid') then
if v:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude
if range <7 and v.Name ~= player.Name then
local args = {
    [1] = getrenv()._G.Pass,
    [2] = v,
    [3] = {
        ["HitTime"] = 0.6,
        ["Type"] = "Normal",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["Karma"] = 30,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 0.1, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end
end
end
end)
end

function areaHit2()
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.workspace:GetChildren()) do

if v:FindFirstChildOfClass('Humanoid') then
if v:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude
if range <7 and v.Name ~= player.Name then
local args = {
    [1] = getrenv()._G.Pass,
    [2] = v,
    [3] = {
        ["HitTime"] = 0.6,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["Karma"] = 30,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
        ["Velocity"] = Vector3.new(0, 15, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 20
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end
end
end
end)
end

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

function createbone()
    bonesword = true
repeat if game.Players.LocalPlayer.Character.Bone.Transparency ~= 0 then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpawnBone", 
	[3] = true, 
	[4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end
wait(0.2)
until bonesword == false
end

function createbone2()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetChildren()) do
if v.Name == 'Bone' then
clone = v:Clone()
clone.Parent = v.Parent
clone.Bone:Destroy()
clone.Anchored = false
weld = Instance.new('Weld',clone)
weld.Part0 = clone
weld.Part1 = char['Left Arm']
clone.Name = 'Bone2'
weld.C0 = CFrame.new(-0.3,.55,1.5)*CFrame.Angles(0,-0.5,0)
clone.Transparency = 0
clone.Trail.Color = ColorSequence.new(Color3.fromRGB(255,176,0))
end
end
end

function deletebone()
    bonesword = false
    local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpawnBone", 
	[3] = false 
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end

function Autoblock()
    spawn(function()
    autoblocking = true
    print("debug1")
    if autoblocking == true then
    repeat wait(0.1)
        local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Blocking",
        [3] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
until autoblocking == false
end
end)
end


print("Chat color loaded.")
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(200, 120, 50)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 150, 20)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Disbelief"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "10000/10000"
game.Players.LocalPlayer.Character.Data.Attack.Value = "80"
game.Players.LocalPlayer.Character.Data.Defense.Value = "20"
wait(0.5)
game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.TextStrokeColor3 = Color3.fromRGB(255, 176, 0)
setChat("5342465893")

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

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://1046135187"
music.Looped = true
music:Play()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://5096023358"
v.Animations.Run.AnimationId = "rbxassetid://4370518984"
v.Animations.Block.AnimationId = "rbxassetid://5973908948"
print('e')
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
end)

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
v.Color = ColorSequence.new(Color3.fromRGB(255,176,0))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255,176,0))
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


wait(1)
Chat("I am so sorry.")
wait(2)
Chat("Even though you did so many bad things...")
wait(4)
Chat("I promised myself to always forgive.")
wait(3.3)
Chat("Everyone deserves a second chance.")
wait(5)
Chat("That included sans.")
wait(3)

spawn(function()
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3925938042"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(2)
    wait(0.6)
    createbone()
    Autoblock()
end)

-- Z
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Z"] then
        spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4820817300"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.75)
wait(5)
k:Stop()
end)
wait(0.3)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit()
wait(0.5)
areaHit2()
end
end)
-- X
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["X"] then
        spawn(function()
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4602568239"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.2)
        wait(6)
        k:Stop()
        end)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonSpecial",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
    end
end)
-- C
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
        wait(0.1)
        normalHit()
        wait(0.3)
        normalHit()
        wait(0.3)
        normalHit()
        wait(0.3)
        normalHit()
        wait(0.3)
        normalHit()
        wait(0.3)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "Ground2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        wait(0.5)
        upHit()
        wait(0.5)
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

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Seven"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 2400
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["R"] then
        wait(0.1)
        print("TP")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
    end
end)

repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 150
inv(true)
spawn(function()
KnockbackAura(true)
end)
deletebone()
music:Stop()

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Sounds.Knife_Slash, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 623904185
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
end)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "8628/10000"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.39, 1, 0.25, 0)
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
wait(3)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3877055653"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
wait(10)
k:Stop()
end)
wait(1)
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://1046137668"
music.Looped = true
music:Play()
wait(2.5)
Chat("That's it.")
wait(3.5)
Chat("No more games.")
wait(2.5)
Chat("No more puzzles.")
wait(4)
Chat("We end this, right now.")
inv(false)
spawn(function()
createbone()
createbone2()
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://5096023358"
v.Animations.Run.AnimationId = "rbxassetid://4370518984"
v.Animations.Block.AnimationId = "rbxassetid://5085801130"
print('e')
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
end)

kbAura = false
wait(4)
setChat("4630736961")
Chat2("*Looks like you've made him angry.")
wait(2)
setChat("5342465893")

spawn(function()
wait()
createbone2()
wait(5)
createbone2()
--[[wait(1)
createbone2()
wait(1)
createbone2()
wait(1)
createbone2()]]
end)
-- V
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
        normalHit()
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
-- B
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
-- G
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["G"] then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
        wait(0.1)
        stunHit()
        Chat("How can I be sorry?")
        wait(2.5)
        stunHit()
        Chat("After all you did..")
        spawn(function()
        wait(2)
        stunHit()
        wait(2.4)
        stunHit()
        end)
        spawn(function()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonSpecial",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(6)
        Chat("YOU DESERVE THIS!")
        wait(1.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
        wait(0.5)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        normalHit()
        wait(0.2)
        spawn(function()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Special3",
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(9)
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
repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 150
inv(true)
deletebone()
spawn(function()
KnockbackAura(true)
end)
clone:Destroy()
clone:Destroy()
clone:Destroy()
music:Stop()

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
wait(80)
k:Stop()
end)
wait(4)
Chat("I...")
wait(3)
Chat("I can't do it!")
wait(4)
Chat("So that's what it is...")
wait(4)
Chat("The first thing I've been defeated at..")
wait(5)
Chat("Is killing.")
wait(4)
Chat("No wonder why sans said it would be dumb.")
wait(5)
Chat("Oh sans, you've always been so smart.")
wait(4.5)
Chat("You lazybones, I wish you were here.")
wait(4.5)
Chat("I'm not dumb, I know that isn't possible...")
wait(4)
Chat("It's not like it matters, It's too late now, Isn't it?")
wait(5)
Chat("I've already given up.")
wait(5)
Chat("I'm sorry sans...")
wait(5)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://1046150894"
music.Looped = true
music:Play()

spawn(function()
Vignette()
end)
wait(8)
setChat("4630736961")
Chat2([[Within the depths of the great papyrus' soul,
something is resonating!]])
wait(3)
setChat("5342465893")
