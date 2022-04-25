game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)

game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)
wait(0.1)

game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://4196684102"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://4652743075"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4196634355"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId = "rbxassetid://3198665507"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId = "rbxassetid://3198653548"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://3203734026"
wait(1)

game.Players.LocalPlayer.Character.HateArm:Destroy()
game.Players.LocalPlayer.Character.HeartLocket:Destroy()
game.Players.LocalPlayer.Character.RealKnife:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower:Destroy()
wait(1)

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:Angelic"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:Angelic"
wait(1)

local CAS = game:GetService("ContextActionService")
            local FREEZE_COMMAND = "CantAttack"
            CAS:BindActionAtPriority(
                FREEZE_COMMAND,
                function()
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.ContextActionPriority.High.Value,
                Enum.KeyCode.One,
                Enum.KeyCode.Two,
                Enum.KeyCode.Three,
                Enum.KeyCode.Four,
                Enum.KeyCode.Five,
                Enum.KeyCode.Six
                )

game:GetObjects("rbxassetid://9338992122")[1].Parent = game.Workspace
game.Workspace.Ultra.Name = "aura"
local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
 
local pa1 = Instance.new("Motor",game.Players.LocalPlayer.Character["Torso"])
pa1.Name = "UltraInsctinctAura"
pa1.Part0 = game.Workspace.aura.Torso
pa1.Part1 = game.Players.LocalPlayer.Character["Torso"]
pa1.C0 = cf0:Inverse()

local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

local pa2 = Instance.new("Motor",game.Players.LocalPlayer.Character["Left Arm"])
pa2.Name = "UltraInsctinctAura"
pa2.Part0 = game.Workspace.aura["Left Arm"]
pa2.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
pa2.C0 = cf0:Inverse()

local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

local pa2 = Instance.new("Motor",game.Players.LocalPlayer.Character["Right Arm"])
pa2.Name = "UltraInsctinctAura"
pa2.Part0 = game.Workspace.aura["Right Arm"]
pa2.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
pa2.C0 = cf0:Inverse()

local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

local pa3 = Instance.new("Motor",game.Players.LocalPlayer.Character["Right Leg"])
pa3.Name = "UltraInsctinctAura"
pa3.Part0 = game.Workspace.aura["Right Leg"]
pa3.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
pa3.C0 = cf0:Inverse()

local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

local pa4 = Instance.new("Motor",game.Players.LocalPlayer.Character["Left Leg"])
pa4.Name = "UltraInsctinctAura"
pa4.Part0 = game.Workspace.aura["Left Leg"]
pa4.Part1 = game.Players.LocalPlayer.Character["Left Leg"]
pa4.C0 = cf0:Inverse()

local cf0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

local pa4 = Instance.new("Motor",game.Players.LocalPlayer.Character["Head"])
pa4.Name = "UltraInsctinctAura"
pa4.Part0 = game.Workspace.aura["Head"]
pa4.Part1 = game.Players.LocalPlayer.Character["Head"]
pa4.C0 = cf0:Inverse()
wait(1)

game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ MUI Whis ]\n' ..Chat, 
          [4] = Color3.fromRGB(255, 0, 0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(v)
    if v.Name == "TextBar" then
        v:WaitForChild("TextLabel")
        for _,v in pairs(v:GetChildren()) do
            game:GetService("RunService").Heartbeat:wait()
            v.TextColor3 = Color3.fromRGB(242, 243, 243) 
        end
    end
end)

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then

			print("mouse cframe teleport")

			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else

			print("player cframe teleport")

			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)



local mouse = game.Players.LocalPlayer:GetMouse() 
                mouse.KeyDown:Connect(function(k) 
                    if k == "x" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "[ MUI Whis] DISAPPEAR",
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
                local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BiggerBurstEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["HitTime"] = 4,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                    ["Damage"] = 0
                }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(1.5)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
            end
                end)
                
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
    ["HitTime"] = 1, 
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
    ["HitTime"] = 1, 
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
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4300091335"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
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
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5776253664"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
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
    ["HitTime"] = 1, 
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
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5667196296"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
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
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "LightHitEffect", 
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,  
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.StarBlazingHit, 
    ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = 1,
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
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 16    
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
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
    ["HitTime"] = 1, 
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
    ["HitTime"] = 1, 
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
    ["HitTime"] = 1, 
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
wait(0.3)
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://7019288804"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
    ["Type"] = "Normal", 
    ["HitEffect"] = "HeavyHitEffect", 
    ["Velocity"] = Vector3.new(0,0,2),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
    ["Damage"] = 10
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(1)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 1, 
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
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
	end
end)

local pass = getrenv()._G.Pass
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spam()

	local target = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value

	local A_1 = pass
	local A_2 = target
	local A_3 = {
		["HitTime"] = 1,
		["Type"] = "Knockback", 
		["HitEffect"] = "KnifeHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
		["CombatInv"] = true,
		["Velocity"] = Vector3.new(0, -1, 0),
		["Damage"] = "NaN"
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.C then

		spam()

	end

end)

local Keybinds = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Keybind1 = Instance.new("TextLabel")
local Keybind2 = Instance.new("TextLabel")
local Keybind3 = Instance.new("TextLabel")
local Keybind4 = Instance.new("TextLabel")
local Keybind5 = Instance.new("TextLabel")
local Keybind6 = Instance.new("TextLabel")

Keybinds.Name = "Keybinds"
Keybinds.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = Keybinds
Frame.Position = UDim2.new(0, 0, 0, 410)
Frame.Size = UDim2.new(0, 200, 0, 273)
Frame.Style = Enum.FrameStyle.RobloxRound

Keybind1.Name = "Keybind1"
Keybind1.Parent = Frame
Keybind1.Position = UDim2.new(0, 89, 0, 50)
Keybind1.Font = Enum.Font.ArialBold
Keybind1.Text = "z - combo"
Keybind1.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind1.TextSize = 18.000

Keybind2.Name = "Keybind2"
Keybind2.Parent = Frame
Keybind2.Position = UDim2.new(0, 85, 0, 15)
Keybind2.Font = Enum.Font.ArialBold
Keybind2.Text = "Keybinds"
Keybind2.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind2.TextSize = 24.000

Keybind3.Name = "Keybind3"
Keybind3.Parent = Frame
Keybind3.Position = UDim2.new(0, 90, 0, 130)
Keybind3.Font = Enum.Font.ArialBold
Keybind3.Text = "c - just DIE!"
Keybind3.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind3.TextSize = 24.000

Keybind4.Name = "Keybind4"
Keybind4.Parent = Frame
Keybind4.Position = UDim2.new(0, 90, 0, 170)
Keybind4.Font = Enum.Font.ArialBold
Keybind4.Text = "t - fly,unfly"
Keybind4.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind4.TextSize = 18.000

Keybind5.Name = "Keybind5"
Keybind5.Parent = Frame
Keybind5.Position = UDim2.new(0, 90, 0, 90)
Keybind5.Font = Enum.Font.ArialBold
Keybind5.Text = "x - DISAPPER "
Keybind5.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind5.TextSize = 18.000

Keybind6.Name = "Keybind6"
Keybind6.Parent = Frame
Keybind6.Position = UDim2.new(0, 90, 0, 210)
Keybind6.Font = Enum.Font.ArialBold
Keybind6.Text = "g - Fly away"
Keybind6.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybind6.TextSize = 18.000

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
local LoseMoves = remotes:WaitForChild("SansMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

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
local LoseMoves = remotes:WaitForChild("SansMoves")
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
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Arcade
PName.Text = "MUI Whis"
PName.TextColor3 = Color3.fromRGB(255, 255, 255)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
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

 repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 200
local speed = 150

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "t" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "g" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://5776233108"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.5)
                wait(0.1)
                for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
                v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        		end
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,1,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4800436094"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.5)
                wait(0.1)
                for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
                v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        		end
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,1,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
                v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        		end
				Event:InvokeServer(A_1, A_2, A_3)
				for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
                v:Fire({"Model", "BigWindEffect", game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
				end
    		    local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4800440761"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.5)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.5, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(0,100,0), 
						["CombatInv"] = true,
						["Damage"] = 5
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				end
end)
