
local sans = game.ReplicatedStorage.Remotes.SansMoves
local Playerss = game:GetService("Players")
local Playerr = Playerss.LocalPlayer
local Characterr = Playerr.Character

-- Music:
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 0.7
music.SoundId = "rbxassetid://6991614344"
music.Looped = true
music:Play()
print("musik gone")
	
--OWO
local pass = getrenv()._G.Pass
local mouse = game.Players.LocalPlayer:GetMouse()
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.Players.LocalPlayer.Chatted:connect(function(arg_1)
local SW_4 = getrenv()._G.Pass
local SW_5 = "Chatted"
local SW_6 = arg_1
local SW_7 = Color3.fromRGB(128, 0, 128)
game.ReplicatedStorage.Remotes.Events:FireServer({SW_4,"Chatted",SW_6,Color3.fromRGB(0,179,243,255)})
end)
--game.Players:Chat(("Let our battle begin...."))
wait(2.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197.42025756836, 209.88452148438, -307.62548828125)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Underswap!Sans"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(5,63,93)
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0,45,75,255)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(11,153,200,255)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play() -- the animation script


local ClickAnimations = game:GetService("Players").LocalPlayer.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat
ClickAnimations.Light1.AnimationId = "rbxassetid://4357851278"
ClickAnimations.Light2.AnimationId = "rbxassetid://5973918259"
ClickAnimations.Light3.AnimationId = "rbxassetid://4375879535"
ClickAnimations.Light4.AnimationId = "rbxassetid://4375890815"
ClickAnimations.Light5.AnimationId = "rbxassetid://5776260400"

game.Players.LocalPlayer.Character.Bone.Color = Color3.fromRGB(197,229,250)
sans:InvokeServer({pass, "SpawnBone", true})
game.Players.LocalPlayer.Character.Head.Voice.PlaybackSpeed = 1.2

local function SpawnDialogue()
game.Players:Chat(("Are you proud of what you're doing here?"))
wait(3.5)
game.Players:Chat(("I know there are alternate timelines where all my friends are suffering"))
wait(3.5)
game.Players:Chat(("And now you've ruined the only place where all of us were happy..."))
sans:InvokeServer({pass, "changeEye", true})
wait(3.5)
game.Players:Chat(("Let me guess... You're frustrated, aren't you?"))
wait(4.2)
game.Players:Chat(("Hurting others won't heal whatever has happened to you."))
wait(3.5)
game.Players:Chat(("I want to help you..."))
wait(3)
game.Players:Chat(("But I cannot believe in you."))
end
--Custom Attacks
local function FunnyHit()
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5097128983"
    local Funny = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    sans:InvokeServer({pass, "SpawnBone", true})
    Funny:Play()
    Funny:AdjustSpeed(3)
    local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.5, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "HeavyHitEffect", 
        ["CombatInv"] = true,
        ["Karma"] = 50,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,
        ["Damage"] = 35
    }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
Funny:Stop()
sans:InvokeServer({pass, "SpawnBone", false})
end
mouse.Button2Down:connect(function()
        FunnyHit()
end)

local function BlueAttack()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5079319635"
    local Funny = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    game.Players.LocalPlayer.Character.Bone.Color = Color3.fromRGB(0,0,150)
    sans:InvokeServer({pass, "SpawnBone", true})
    Funny:Play()
    Funny:AdjustSpeed(1)
    local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "HeavyHitEffect", 
        ["CombatInv"] = true,
        ["Karma"] = 50,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1,
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Hurt,
        ["Damage"] = 5
     }
    }
    game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
    Funny:Stop()
    sans:InvokeServer({pass, "SpawnBone", false})
    game.Players.LocalPlayer.Character.Bone.Color = Color3.fromRGB(197,229,250)
    game.Players:Chat(("You're blue now!"))
    sans:InvokeServer({pass, "Bones", "Ground2", target})
    sans:InvokeServer({pass, "Bones", "AirSpawn2", target})
    sans:InvokeServer({pass, "Bones", "AirSpawn", target})
    game.Players:Chat(("M w e h  heh heh! Pretty cool.. right?"))
end

local function BonePattern1()
    local gettem = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    tostring(gettem)
    local epic = game.Workspace[tostring(gettem)]
    local target = epic.Torso.Position
    sans:InvokeServer({pass, "Bones", "Ground2", target})
    wait(0.1)
    sans:InvokeServer({pass, "Bones", "Ground", target})
    wait(0.2)
    sans:InvokeServer({pass, "Bones", "AirSpawn2", target})
    wait(0.2)
    sans:InvokeServer({pass, "Bones", "AirSpawn", target})
    sans:InvokeServer({pass, "GasterBlasters", "SummonOne", target})
    game.Players:Chat(("Ah! Whoops! Sorry.."))
    wait(3)
    game.Players:Chat(("Don't know what got over me there.."))
end

local function StandtallUnderswap()
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
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 50
    wait(0.5)
    sans:InvokeServer({pass, "Bones", "AirSpawn", target})
    sans:InvokeServer({pass, "Bones", "AirSpawn2", target})
    local A_1 = 
{
	[1] = pass, 
	[2] = "Telekinesis", 
	[3] = "Special2", 
	[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
}

    sans:InvokeServer(A_1)
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
    Bone:destroy()
    end 

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.KeypadFive then
	    BlueAttack()
	end
end)
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.KeypadOne then
	    BonePattern1()
	end
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.KeypadTwo then
	    StandtallUnderswap()
	end
end)

SpawnDialogue()
