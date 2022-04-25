
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1
music.SoundId = "rbxassetid://7048527009"
music.Looped = true
music:Play()

game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(220,0,0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(130,0,0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(150,0,0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(50,0,0)

local Player = game.Players.LocalPlayer
Player.Chatted:Connect(function(Chat)
wait()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = (Chat), 
      [4] = Color3.fromRGB(125,0,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5101202405"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0.1)

boneCloned2 = false
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Workspace.BlockingDummy:GetChildren()) do
if v.Name == 'Head' then
clone = v:Clone()
clone.Parent = char
clone.HealthBar:Destroy()
clone.Anchored = false
clone.CanCollide = false
weld = Instance.new('Weld',clone)
weld.Part0 = clone
weld.Part1 = char['Left Arm']
clone.Name = 'Head2'
An = {0,0,-20}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0.4,1.3,0)*Angle
clone.Transparency = 0
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' and boneCloned2 == false then
    boneCloned2 = true
    print("f")
clone = v:Clone()
clone.Color = Color3.new(1,1,1)
clone.Parent = char
clone.Anchored = false
clone.CanCollide = false
weld = Instance.new('Weld',clone)
weld.Part0 = clone
weld.Part1 = char['Left Arm']
An = {0,0,110}
clone.Size = clone.Size/4
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0,0,0)*Angle
weld.C0 = weld.C0*CFrame.new(-0.3,1.5,0)
clone.Name = 'SpkBone2'
clone.Transparency = 0
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects:GetChildren()) do
if v.Name == 'OverwriteButton' then
clone = v:Clone()
clone.Parent = char
clone.HumanoidRootPart.Anchored = false
clone.OverwriteButton.CanCollide = false
clone.HumanoidRootPart.CanCollide = false
clone.OverwriteButton.Anchored = false
weld = Instance.new('Weld',clone.OverwriteButton)
weld.Part0 = clone.OverwriteButton
weld.Part1 = char['HumanoidRootPart']
An = {0,85,-35}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(-0.1,1.5,3)*Angle
weld.C0 = weld.C0*CFrame.new(1,1.7,-.3)

clone.OverwriteButton.Color = Color3.fromRGB(255,200,0)
clone.OverwriteButton.PointLight.Color = Color3.fromRGB(255,255,0)
end
end
end)
wait()

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.OverwriteButton.OverwriteButton:GetChildren()) do
if v.Name == 'ParticleEmitter' then
    print("h")
    v:Destroy()
end
end

for _,v in pairs(char.OverwriteButton.OverwriteButton:GetDescendants()) do
    print("2 "..v.Name)
if v.Name == 'SurfaceGui' then
    print("found")
    v.ImageLabel.ImageColor3 = Color3.fromRGB(255,200,0)
end
end


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Z"] then
boneCloned = false
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3731949745"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.25)
k:AdjustSpeed(0)
wait(0.2)
spawn(function()
ez = true
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' and boneCloned == false then
    boneCloned = true
clone = v:Clone()
clone.Parent = char
clone.Anchored = true
clone.Name = 'SpkBone'
clone.Transparency = 0
clone.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,-9,-4)
end
end
end)
wait(0.3)
spawn(function()
    repeat wait()
        clone.CFrame = clone.CFrame*CFrame.new(0, 3, 0)
    until ez == false
end)
wait(0.1625)
ez = false
wait(1.3)
spawn(function()
    repeat wait()
        clone.Transparency = clone.Transparency + 0.15
    until ez2 == false
end)
wait(0.2)
ez2 = false
wait()
clone:Destroy()
end)
spawn(function()
wait(0.2)
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 3731906158
sound.Volume = 3
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)
spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.65,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 45, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
wait(0.2)
k:AdjustSpeed(1.5)
end
end)

spawn(function()
char = game.Players.LocalPlayer.Character
eye = char:WaitForChild("BadTimeEye")
clone = char.BadTimeEye.Part.Beam:Clone()
clone.Parent = char.BadTimeEye.Part
char.BadTimeEye.Part.Beam:Destroy()
wait()
spawn(function()
    repeat wait()
        spawn(function()
            game.Players.LocalPlayer.Character.BadTimeEye.Part.Beam.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
        end)
        spawn(function()
        for _,v in pairs(char.BadTimeEye:GetDescendants()) do
            if v.Name == 'ParticleEmitter' then
            v.Color = ColorSequence.new(Color3.fromRGB(255, 1, 1))
            end
        end
        end)
    until false
end)
end)

char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara:GetChildren()) do
if v.Name == 'SlashEffect' then
clone = v:Clone()
clone.Parent = char.Torso
end
end

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4283811527"-- change specifc animations to whatever you want
v.Animations.Walk.AnimationId = "rbxassetid://4289083840"
v.Animations.Run.AnimationId = "rbxassetid://4283916488"
v.Animations.Block.AnimationId = "rbxassetid://4358889112"
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

char.Bone:Destroy()

local player = game:GetService("Players").LocalPlayer
local ClickAnimations = player.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat

ClickAnimations.Light1.AnimationId = "rbxassetid://4800254068"
ClickAnimations.Light2.AnimationId = "rbxassetid://4800262463"
ClickAnimations.Light3.AnimationId = "rbxassetid://4800258366"
ClickAnimations.Light4.AnimationId = "rbxassetid://4800266314"

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["T"] then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4064726792"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.9)
end
end)


game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["X"] then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3222536064"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.6, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GTSlash2,
        ["Damage"] = 30
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800266314"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["V"] then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348287123"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.3)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
        ["Velocity"] = Vector3.new(0, -0.5, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Stab,
        ["Damage"] = 20
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["B"] then
boneCloned = false
wait(0.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3756843230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.6)
wait(0.4)
spawn(function()
ez = true
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
for _,b in pairs(game.workspace:GetChildren()) do

if b:FindFirstChildOfClass('Humanoid') then
if b:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - b.PrimaryPart.Position).Magnitude
if range <15 and b.Name ~= player.Name then
print("debug1")
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Effects.UnderswapPapyrusBones:GetChildren()) do
if v.Name == 'Bone' then
    print("debug2")
clone = v:Clone()
clone.Parent = char
clone.Anchored = true
clone.Name = 'SpkBone'
clone.Transparency = 0
clone.CFrame = (game.Workspace:FindFirstChild(b.Name)).HumanoidRootPart.CFrame*CFrame.new(0,-9,-1)
print("debug3")
end
end
end
end
end
end
end)
wait(0.3)
spawn(function()
    repeat wait()
        print("debug4")
char = game.Players.LocalPlayer.Character
        for _,v in pairs(char:GetDescendants()) do
        if v.Name == 'SpkBone' then
            print("debug5")
        v.CFrame = v.CFrame*CFrame.new(0, 3, 0)
        end
        end
    until ez == false
end)
print("debug6")
wait(0.1625)
ez = false
wait(1.3)
print("debug7")
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetDescendants()) do
        if v.Name == 'SpkBone' then
            print("debug8")
        v.Transparency = v.Transparency + 0.15
        end
        end
    until ez2 == false
end)
print("debug9")
wait(0.2)
ez2 = false
wait()
for _,v in pairs(char:GetChildren()) do
        if v.Name == 'SpkBone' then
            print("debug10")
v:Destroy()
end
end
end)
spawn(function()
wait(0.2)
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 3731906158
sound.Volume = 3
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)

local player = game.Players.LocalPlayer
local char = player.Character
for _,name in pairs(game.workspace:GetChildren()) do

if name:FindFirstChildOfClass('Humanoid') then
if name:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - name.PrimaryPart.Position).Magnitude
if range <15 and name.Name ~= player.Name then
spawn(function()
local args = {
    [1] = getrenv()._G.Pass,
    [2] = name,
    [3] = {
        ["HitTime"] = 0.65,
        ["Type"] = "Knockback",
        ["HitEffect"] = "BoneHitEffect",
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
        ["Velocity"] = Vector3.new(0, 45, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
        ["Damage"] = 35
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end)
end
end
end
end

end
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'RelKnife' then
clone1 = v:Clone()
clone1.Name = 'Knife'
clone1.ToyKnife:Destroy()
clone1.Parent = char
clone1.Anchored = false
clone1.Mesh.Scale = clone1.Mesh.Scale/1.5
weld = Instance.new('Weld',clone1)
weld.Part0 = clone1
weld.Part1 = char['Right Arm']
clone1.Name = 'Knife'
An = {90,0,0}
Angle = CFrame.fromEulerAnglesXYZ(math.rad(An[1]), math.rad(An[2]),math.rad(An[3]))
weld.C0 = CFrame.new(0,-0.8,0.8)*Angle
clone1.Transparency = 0
end
end

char = game.Players.LocalPlayer.Character
local point1 = Instance.new('Attachment',char['Knife'])
point1.Name = 'Point1'
point1.Position = Vector3.new(0, -5, 0)---set point 1 for attachment
local point2 = Instance.new('Attachment',char['Knife'])
point2.Name = 'Point2'
point2.Position = Vector3.new(0, 4, 0)---set point 2 for attachment
local glowt = Instance.new('Trail',char['Knife'])
glowt.Name = 'Passive Trail'
glowt.Lifetime = 0.3
glowt.MinLength = 0
glowt.MaxLength = 500
glowt.WidthScale = NumberSequence.new(0.2)
glowt.Transparency = NumberSequence.new(0.5)
---------------------Basically decides how 'tall' your particles are
glowt.Attachment0 = point1
glowt.Attachment1 = point2
-----------------------------------------
glowt.LightInfluence = 0
glowt.LightEmission = 1
glowt.FaceCamera = false
glowt.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
