game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
wait(2)

--remotes n stuff
local pass = getrenv()._G.Pass
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local Name = game:GetService("Players").LocalPlayer.Name
local mouse = game.Players.LocalPlayer:GetMouse()
local person = name
local chatEvent = game.ReplicatedStorage.Remotes.Events
local Effect = game.ReplicatedStorage.Remotes.Effects
local UIS = game:GetService("UserInputService")
local humanoid = localPlayer.Character:WaitForChild("Humanoid")
local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND  = "Stunned"
CAS:UnbindAction(FREEZE_COMMAND)

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

spawn(function()
player = game.Players.LocalPlayer

player.PlayerGui:WaitForChild('GameOver')
player.PlayerGui.GameOver.Sound.SoundId = 'rbxassetid://6485273824'--- changes game over music
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Script:Destroy()--destroys original the local script you want to modify or change completely
local function SCRIPT_JPEX75_FAKESCRIPT()--- making it into a function so that you can compile it into a local script
script = Instance.new('LocalScript', player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel)-- creates a new local script instance
 player = game.Players.LocalPlayer
char = player.Character
mouse = player:GetMouse()
sound = Instance.new("Sound", script)
sound.Name = 'Voice'
sound.SoundId = 'rbxassetid://5416491219'---voice id you want
space = [[ 
]]

repeat wait()
char = player.Character
until char.Humanoid.Health <= 0.2---waits until you are dead
wait(6)
local word = "It's alright sans. You did your best."
local length = string.len(word) 
for i = 1, length do
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end
wait(1)
word = "Better luck next time."
length = string.len(word) 
for i = 1, length do---you can aas many dialouges 
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end---with these lines
local mous-- to define mous so you can disconnect the connect function inside the connect function
mous = mouse.Button1Down:Connect(function()
Instance.new("StringValue", player.Character).Name = "Confirmed"
mous:Disconnect()
end)
end
coroutine.resume(coroutine.create(SCRIPT_JPEX75_FAKESCRIPT))
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.LocalScript.Name = "Script"
end)


local plr = game.Players.LocalPlayer.Character
plr.Bone:Remove()

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://5726439755"
music.Looped = true
music:Play()


game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "1287/1287"
game.Players.LocalPlayer.Character.Data.Attack.Value = "150"
game.Players.LocalPlayer.Character.Data.Defense.Value = "500"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "DustTrust"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(126, 0, 230)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(126, 0, 230)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(126, 0, 230)

game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456894133"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4456901030"

wait(1)







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

--attack recolor
local char = game:GetService("Players").LocalPlayer.Character
local effects = char.Effects
local stuff = {"Bone"}
local colors = {Color3.fromRGB(126, 0, 230)}
local function check(part)
    for i = 1, #stuff do
        if part.Name == stuff[i] then
            part.Color = colors[i]
        end
    end
end

effects.DescendantAdded:Connect(check) 
local char = game:GetService("Players").LocalPlayer.Character
local beams = char
local stuff = {"Eye", "Back", "Middle", "CircleEffect", "E", "ExplosionEffect", "BeamSmoke"}
local colors = {Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230), Color3.fromRGB(126, 0, 230)}
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
local colors = {Color3.fromRGB(126, 0, 230)}
local function check(part)
    for i = 1, #stuff do
        if part.Name == stuff[i] then
            part.Color = colors[i]
        end
    end
end
attacks.DescendantAdded:Connect(check) 


local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657849029"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.2)




game.Players:Chat(("so, we're finally here."))
wait(4)
game.Players:Chat(("both of us are here, standing alone in a broken world."))
wait(5)
game.Players:Chat(("with the same goal in mind..."))
wait(5)
game.Players:Chat(("destroying eachother, and everyone we cared about."))
wait(5)
game.Players:Chat(("but who said you'd be allowed to finish this world off?"))
wait(4)
game.Players:Chat(("nobody did."))
wait(3)
game.Players:Chat(("i'll make sure I'M the ONLY one who finishes the job!"))
wait(3)
k:Stop()


local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3204744488"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)


local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword3 = v:Clone()
sword3.Parent = char
sword3.GTFriskSword:Destroy()
sword3.Anchored = false
weld = Instance.new('Weld',sword3)
weld.Part0 = sword3
weld.Part1 = char['Left Arm']
sword3.Name = 'Sword'
sword3.Color = Color3.fromRGB(126, 0, 230)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword3.Transparency = 0.8
wait(0.1)
sword3.Transparency = 0.7
wait(0.1)
sword3.Transparency = 0.5
wait(0.1)
sword3.Transparency = 0
end
end


local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Right Arm']
sword2.Name = 'Sword'
sword2.Color = Color3.fromRGB(126, 0, 230)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0.8
wait(0.1)
sword2.Transparency = 0.7
wait(0.1)
sword2.Transparency = 0.5
wait(0.1)
sword2.Transparency = 0
end
end

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4900761581"
v.Animations.Run.AnimationId = "rbxassetid://4370518984"
v.Animations.Block.AnimationId = "rbxassetid://4456894133"
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
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
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
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)

local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Blocking", 
		[3] = true
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["K"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 2100
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.KeypadOne then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5657458641"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.2, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(100,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GTSlash2,
    ["CombatInv"] = true,
    ["Damage"] = 40
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.KeypadTwo then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
    ["CombatInv"] = true,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)


-- N
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadZero"] then
        wait(0.1)
    Anim.AnimationId = "rbxassetid://3768536190"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonSpecial",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
       k:Stop()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadFour"] then
    Anim.AnimationId = "rbxassetid://3768536190"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
        bonespam = true
        spawn(function()
        repeat wait(0.1)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 50
    wait(0.1)
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
                [2] = "GasterBlasters",
                [3] = "SummonOneBig",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonOne",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "Ground",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        until bonespam == false
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Bones",
                [3] = "Ground2",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
        end)
        wait(4)
bonespam = false
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
k:Stop()
    end
end)

repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
spawn(function()
music:Stop()
end)

sword2:Destroy()
sword3:Destroy()

game:GetService("ContextActionService"):BindActionAtPriority("CantAttack", function()
  return Enum.ContextActionResult.Sink
end, false, Enum.ContextActionPriority.High.Value, Enum.KeyCode.E, Enum.KeyCode.Q, Enum.KeyCode.R, Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six, Enum.KeyCode.Seven, Enum.KeyCode.Eight, Enum.KeyCode.Nine, Enum.KeyCode.Zero)
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1
music.SoundId = "rbxassetid://6069012922"
music.Looped = true
music:Play()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "770/1287"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.001, 1, 0.25, 0)
game.Players.LocalPlayer.Character.Data.Attack.Value = "500"
game.Players.LocalPlayer.Character.Data.Defense.Value = "100"

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "DustTrust"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(126, 0, 230)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(126, 0, 230)

local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5657849029"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.2)

wait(1)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == fakedamage then
v:Destroy()
print("debug3-6")
end
end


game.Players:Chat(("!?"))
wait(4)
game.Players:Chat(("you think you're strong enough to kill me in one blow?"))
wait(5)
game.Players:Chat(("i'm not that weak."))
wait(3)
game.Players:Chat(("you'll have to do more than hit me with that rusty knife."))
wait(5)
k:Stop()


local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword2 = v:Clone()
sword2.Parent = char
sword2.GTFriskSword:Destroy()
sword2.Anchored = false
weld = Instance.new('Weld',sword2)
weld.Part0 = sword2
weld.Part1 = char['Left Arm']
sword2.Name = 'Sword'
sword2.Color = Color3.fromRGB(126, 0, 230)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.6,0,-1.6)
sword2.Transparency = 0.8
wait(0.1)
sword2.Transparency = 0.7
wait(0.1)
sword2.Transparency = 0.5
wait(0.1)
sword2.Transparency = 0
end
end

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4900761581"
v.Animations.Run.AnimationId = "rbxassetid://4370518984"
v.Animations.Block.AnimationId = "rbxassetid://4456894133"
v.Animations.Walk.AnimationId = "rbxassetid://4370512420"
print('e')
end
end

for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","XEventEffect",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
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
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
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
v.Color = ColorSequence.new(Color3.fromRGB(126, 0, 230))
end
end
end)

local A_1 = 
	{
		[1] = getrenv()._G.Pass,
		[2] = "Blocking", 
		[3] = true
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(function(k)
            if k == "r" then
                function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
            end
        end)

local function FunnyHit()
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456890962"
    local Funny = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    Funny:Play()
    Funny:AdjustSpeed(1.2)
    local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.5, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BoneHitEffect", 
        ["CombatInv"] = true,
        ["Karma"] = 50,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ShieldBreak,
        ["Damage"] = 20
    }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.3)
Funny:Stop()
end

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "z" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.8, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["CombatInv"] = true,
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.7, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.6, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.5, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.4, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.3, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.2, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456894133"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()

local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(100,100,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
    ["CombatInv"] = true,
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "x" then 
     local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4456901030"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "", 
                [4] = Color3.new(0, 0, 255)
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
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
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
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
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
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0, 200), 
                ["Damage"] = 40
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
    end
end)

game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.V then
local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4456894133"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
            local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 0.1,
                ["Type"] = "Knockback",
                ["HitEffect"] = "BoneHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
                ["Velocity"] = Vector3.new(90, 90, 0),
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
                ["Damage"] = 40
            }
        }
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    wait(0.1)
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

    wait(2)
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


game.Players.LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.G then
local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4456894133"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
            local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["HitTime"] = 0.2,
                ["Type"] = "Knockback",
                ["HitEffect"] = "BoneHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
                ["Velocity"] = Vector3.new(0, 15, 0),
                ["CombatInv"] = true,
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
                ["Damage"] = 40
            }
        }
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    wait(0.1)

        wait(0.1)
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonEight",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "b" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4456901030"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(-30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(30,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(90,90,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "n" then 
     local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4456890962"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
        local A_1 = 
            {
                [1] = getrenv()._G.Pass,
                [2] = "Chatted", 
                [3] = "", 
                [4] = Color3.new(0, 0, 0)
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        wait(0.5)
        KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
        KG.Volume = 9
        KG.SoundId = "rbxassetid://357417055"
        KG.Looped = false
        KG:Play()
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0, 0.1), 
                ["Damage"] = 40
            }
        game.Players:Chat(("MY REAL POWER!"))
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
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
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
            {
                ["HitTime"] = 0.1, 
                ["Type"] = "Knockback", 
                ["HitEffect"] = "BoneHitEffect", 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
                ["CombatInv"] = true,
                ["Velocity"] = Vector3.new(0, 0.1, 0), 
                ["Damage"] = 10
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
    end
end)

mouse.Button2Down:connect(function()
        FunnyHit()
    end)

repeat wait()
until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 200
spawn(function()
music:Stop()
end)

sword2:Destroy()

game.Players:Chat(("!"))
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

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "0/1287"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.Size =  UDim2.new(0.001, 1, 0.25, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

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

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "-9999/1287"


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
wait(71)
k:Stop()
end)

wait(1)

wait(5)
player = game.Players.LocalPlayer
char = player.Character

spawn(function()
for _,v in pairs(game.ReplicatedStorage.Resources.OtherEffects:GetChildren()) do
spawn(function()
DeathParticle = v.Name
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

end)
print("debug2")
spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
    local sound = Instance.new('Sound',char.Head)
    local id = 539792706
    sound.Volume = 1
    sound.SoundId = 'rbxassetid://'..id
    sound:Play()
end)
end
wait(1.5)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == DeathParticle then
v:Destroy()
wait(0.2)
end
end
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

wait(3.5)
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.2
music.SoundId = "rbxassetid://6460012412"
music.Looped = false
music:Play()

game.Players:Chat(("Alphys' determination shines bright inside Sans' soul."))
wait(1)

wait(29)
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

-- Bar Test

spawn(function()
created = false
val = 1
timeRemaining = 419

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.SoundId = "rbxassetid://6969433492"
music.Looped = true
music.Volume = 1.5
music:Play()

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.Ui:GetDescendants()) do
if v.Name == 'StaminaBar' then
if created == false then
clone = v:Clone()
clone.Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui
clone.Position = UDim2.new(0.05, 0, 0.901, 0)
clone.Bar.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
clone.ImageLabel:Destroy()
clone.LocalScript:Destroy()
clone.Name = 'DeterminationBar'
print("DT Bar Created")
created = true
end
end
end
end)
wait()
DTbar = game.Players.LocalPlayer.PlayerGui.UI.Ui.DeterminationBar
print(DTbar.Bar.Size)

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BackgroundTransparency = 1.00
TextLabel.Position = UDim2.new(-0.000625994056, 0, .81, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 75)
TextLabel.Font = Enum.Font.Arcade
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000
TextLabel.TextWrapped = true
TextLabel.Text = 'Time: '..(timeRemaining)


        repeat wait(1)
        val = val-0.00238663
        timeRemaining = timeRemaining - 1
        DTbar.Bar.Size = UDim2.new(val, 0, 1, 0)
        TextLabel.Text = 'Time: '..(timeRemaining)
        until TextLabel.Text == 'Time: 0'
        wait(0.2)
        DTbar.Bar.Size = UDim2.new(0, 0, 1, 0)
        TextLabel.Text = 'Time: 0'
        print("DT Emptied.")
camfix4 = 15

spawn(function()
local player = game.Players.LocalPlayer
    local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 4615103543
        sound.Volume = 4
        sound.Pitch = 0.9
        sound.TimePosition = 0.5
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
game.Lighting.Blur.Size = 15
wait(0.3)
game.Lighting.Blur.Size = 14
wait(0.3)
game.Lighting.Blur.Size = 13
wait(0.2)
game.Lighting.Blur.Size = 12
wait(0.2)
game.Lighting.Blur.Size = 11
wait(0.2)
game.Lighting.Blur.Size = 10
wait(0.2)
game.Lighting.Blur.Size = 9
wait(0.2)
game.Lighting.Blur.Size = 8
wait(0.2)
game.Lighting.Blur.Size = 7
wait(0.2)
game.Lighting.Blur.Size = 6
wait(0.2)
game.Lighting.Blur.Size = 5
wait(0.2)
game.Lighting.Blur.Size = 4
wait(0.2)
game.Lighting.Blur.Size = 3
wait(0.2)
game.Lighting.Blur.Size = 2
wait(0.2)
game.Lighting.Blur.Size = 1
wait(0.2)
game.Lighting.Blur.Size = 0
wait(0.2)
end)

spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local Humanoid = char.Humanoid
for i = 1, 25 do
    local x = math.random(-200,100)/100
    local y = math.random(-100,200)/100
    local z = math.random(-300,100)/100
    Humanoid.CameraOffset = Vector3.new(x,y,z)
    print(i)
    wait()
end
wait(0)
Humanoid.CameraOffset = Vector3.new(0,0,0)
end)

spawn(function()
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, camfix4, camfix4)
wait()
camfix4 = camfix4 + 5
until camfix4 == 255
if camfix4 == 255 then
    camfix4 = 15
end
print("debug3-3")
end)

spawn(function()
    game.Lighting.Brightness = 25
wait(0.05)
game.Lighting.Brightness = 24
wait(0.05)
game.Lighting.Brightness = 23
wait(0.05)
game.Lighting.Brightness = 22
wait(0.05)
game.Lighting.Brightness = 21
wait(0.05)
game.Lighting.Brightness = 20
wait(0.05)
game.Lighting.Brightness = 19
wait(0.05)
game.Lighting.Brightness = 18
wait(0.05)
game.Lighting.Brightness = 17
wait(0.05)
game.Lighting.Brightness = 16
wait(0.05)
game.Lighting.Brightness = 15
wait(0.05)
game.Lighting.Brightness = 14
wait(0.05)
game.Lighting.Brightness = 13
wait(0.05)
game.Lighting.Brightness = 12
wait(0.05)
game.Lighting.Brightness = 11
wait(0.05)
game.Lighting.Brightness = 10
wait(0.05)
game.Lighting.Brightness = 9
wait(0.05)
game.Lighting.Brightness = 8
wait(0.05)
game.Lighting.Brightness = 7
wait(0.05)
game.Lighting.Brightness = 6
wait(0.05)
game.Lighting.Brightness = 5
wait(0.05)
game.Lighting.Brightness = 4
wait(0.05)
game.Lighting.Brightness = 3
wait(0.05)
end)
wait(0.1)
music.TimePosition = 413
music.Volume = 1.5
music.Looped = false
spawn(function()

wait(0.1)
    local v1 = {
                [1] = getrenv()._G.Pass, 
                [2] = "Damage", 
                [3] = math.huge, 
                [4] = game.Players.LocalPlayer.Character
            }
            local event = game:GetService("ReplicatedStorage").Remotes.Events
            event:FireServer(v1)

    clone:Destroy()
    TextLabel:Destroy()
end)
end)

game.Players:Chat(("So... this is the power of *determination* papyrus was talking about."))
wait(7)
game.Players:Chat(("I'm surprised. Suprised someone so small could hold such. great. power."))
wait(7)

local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3877055653"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.2)

game.Players:Chat(("But that doesnt matter, not anymore."))
wait(5)
game.Players:Chat(("That little *power* of yours is going to become obsolete compared to mine."))
wait(6)
game.Players:Chat(("But because i am so kind..."))
wait(4)
game.Players:Chat(("I'm going to share some of that power with you."))
wait(4)
game.Players:Chat(("Ready? Dirty Murderer."))
wait(1.5)
k:Stop()


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://4900761581"
v.Animations.Run.AnimationId = "rbxassetid://6136042922"
v.Animations.Block.AnimationId = "rbxassetid://3203734026"
v.Animations.Walk.AnimationId = "rbxassetid://4370512420"
print('e')
end
end

for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","SpearJusticeExplosion",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
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

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "t" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3815756705"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,30,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4057804140"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(70,0,70),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
    ["CombatInv"] = true,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "j" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3201755772"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(60,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "u" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3201755772"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,100,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "h" then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,-1,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice, 
    ["Damage"] = 10
}
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4800440761"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(100,0,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
    ["CombatInv"] = true,
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end
end)
