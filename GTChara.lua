game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar").Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar").Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar").Frame.HealthLabel:Destroy()
game.Players.LocalPlayer.Character:WaitForChild("RealKnife"):Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://6416819199"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://6492501335"

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
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "RealKnife" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Name = "RealKnife"
                    sword2.HandleC0.Part0 = char["Left Arm"]
                    sword2.HandleC0.C0 = CFrame.new(0, -0.8, 0) * CFrame.Angles(0, math.rad(0), 0)
                end
            end
local attack = Instance.new('NumberValue')
attack.Name = 'Weapon'
attack.Parent = game.Players.LocalPlayer.Character
attack.Value = 0
wait()
_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ GT Chara ]\n' ..Chat, 
          [4] = Color3.new(1, 0, 0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)
wait()
local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then


			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else


			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)
    local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 60

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.One then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then
for i= 1,5 do
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.3)
end
wait(0.3)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
for i = 1,3 do
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348287123"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 20
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait()
end
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348788816"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 30, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 15
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait()
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348323561"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 25
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "z" then
local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = [[[ GT Chara ] *
Parry]],
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(0.5)

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255,0,0),
[5] = CFrame.Angles(0,-1,-0.6)})
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
wait(1.6)
local A_1 = 
{
	[1] = getrenv()._G.Pass,
	[2] = "Blocking", 
	[3] = false
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(A_1)
               end
            end
        )
               game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Two then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then 
for i = 1,6 do
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657141412"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                        ["CombatInv"] = true,
                        ["Damage"] = 8
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait()
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657142368"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1,
                        ["CombatInv"] = true,
                        ["Damage"] = 8
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
end
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then  
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4348323561"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30,
                        ["CombatInv"] = true,
                        ["Damage"] = 7
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
for i = 1,5 do
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3752218582"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, -2, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectilePurple", -- есть другие (KnifeProjectileOrange;KnifeProjectileYellow;KnifeProjectileDarkRed;KnifeProjectilePurple)
                [3] = "Spawn",
                [4] = r2.p
            }
        }
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
wait(0.1)
end
end
end
               end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Three then
local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then 
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait(0.2)
local char = game.Players.LocalPlayer.Character
Clone      = game.ReplicatedStorage.Effects.SpearJusticeExplosion:Clone()
Clone:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0))
Clone.Parent = char.Effects
for i=1,17 do
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 0.0001, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = math.random(5,17)
                    }

                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
end
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348788816"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(2.1)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255,0,0),
[5] = CFrame.Angles(0,-1,1.6)})
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 15, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 25
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255,0,0),
[5] = CFrame.Angles(0,-1,-0.6)})
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 17,
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
for i = 1,6 do
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3752218582"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, -2, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectile", -- есть другие (KnifeProjectileOrange;KnifeProjectileYellow;KnifeProjectileDarkRed;KnifeProjectilePurple)
                [3] = "Spawn",
                [4] = r2.p
            }
        }
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
wait(0.2)
end 
end
end
               end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Four then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then 
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait(0)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 5,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60 + Vector3.new(0, 30, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(1.4)
local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3)
        wait(0.1)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait(0)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -1, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657143572"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
 for i = 1,3 do
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
end
for i = 1,2 do
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3752218582"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, -2, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectilePurple", -- есть другие (KnifeProjectileOrange;KnifeProjectileYellow;KnifeProjectileDarkRed;KnifeProjectilePurple)
                [3] = "Spawn",
                [4] = r2.p
            }
        }
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
wait(0.2)
end
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(1)
local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3)
wait(0.2)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3756843230"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(2.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
end
end
               end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Five then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5657458641"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90 + Vector3.new(0, 10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(1.3)
local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3)
wait(0.2)
for i = 1,4 do
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 35
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.4)
end
wait(0.4)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://5657458641"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 173 + Vector3.new(0, 100, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348788816"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, 50, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(1.5)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 90,
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
for i = 1,3 do
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3752218582"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, -2, 0)
        end
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeProjectilePurple", -- есть другие (KnifeProjectileOrange;KnifeProjectileYellow;KnifeProjectileDarkRed;KnifeProjectilePurple)
                [3] = "Spawn",
                [4] = r2.p
            }
        }
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)

end
wait(1.0)
local uis = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer
		local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()
		player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 3)
wait(0.2)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3756843230"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(2.5)
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
wait(0.2)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://3222536064"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60 + Vector3.new(0, 30, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = 40
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(
            function(k)
                if k == "m" then
local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeHeal"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
        local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
 
               end
            end
        )
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Six then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then
local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = [[[ GT Chara ] *
GameOver...Betty]],
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5657146851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = "nan"
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = [[[ GT Chara ] *
It's My...FINAL ATTACK]],
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
local Anim = Instance.new("Animation")
    Anim.AnimationId = "rbxassetid://4348323561"
    local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
    k:Play()
    k:AdjustSpeed(0.5)
wait()
local A_1 = getrenv()._G.Pass
                    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    local A_3 = {
                        ["HitTime"] = 0.5,
                        ["Type"] = "Knockback",
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                        ["Velocity"] = Vector3.new(0, -10, 0),
                        ["CombatInv"] = true,
                        ["Damage"] = "nan"
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                    Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadOne then
if game.Players.LocalPlayer.Character.Weapon.Value == 1 then
game.Players.LocalPlayer.Character.Weapon.Value = 0
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7004737889"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait(2.45)

game.Players.LocalPlayer.Character.GTShut:Destroy()
game.Players.LocalPlayer.Character.GTSword:Destroy()
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "RealKnife" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.Name = "RealKnife"
game.Players.LocalPlayer.Character.RealKnife.Blade.Particle.Transform1Start.Enabled = true
                    sword2.HandleC0.Part0 = char["Left Arm"]
                    sword2.HandleC0.C0 = CFrame.new(0, -0.8, 0) * CFrame.Angles(0, math.rad(0), 0)
                end
            end
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4333546395"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348265296"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4348323561"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
wait(1)
game.Players.LocalPlayer.Character.RealKnife.Blade.Particle.Transform1Start.Enabled = false 
    local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 60

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10
elseif game.Players.LocalPlayer.Character.Weapon.Value == 0 then
game.Players.LocalPlayer.Character.Weapon.Value = 1
game.Players.LocalPlayer.Character.RealKnife.Blade.Particle.Transform1Start.Enabled = true
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7004737889"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
wait(2.45)
game.Players.LocalPlayer.Character.RealKnife.Blade.Particle.Transform1Start.Enabled = false
game.Players.LocalPlayer.Character.RealKnife:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5657141412"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5657142368"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5657143572"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5657144478"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5657145846"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskShield" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskShield:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Left Arm"]
                    sword2.Name = "GTShut"
                    sword2.Color = Color3.fromRGB(255, 0, 0)
                    weld.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(0, math.rad(-90), 0)
                    sword2.Transparency = 0.6
                end
            end
for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
                if v.Name == "GTFriskSword" then
                    local char = game.Players.LocalPlayer.Character
                    sword2 = v:Clone()
                    sword2.Parent = char
                    sword2.GTFriskSword:Destroy()
                    sword2.Anchored = false
                    weld = Instance.new("Weld", sword2)
                    weld.Part0 = sword2
                    weld.Part1 = char["Right Arm"]
                    sword2.Name = "GTSword"
                    sword2.Color = Color3.fromRGB(255, 0, 0)
                    weld.C0 = CFrame.new(0.95, -1.7, -0) * CFrame.Angles(1.6, 0, -1.6)
                    sword2.Transparency = 0
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 45

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10
end
end
end
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.KeypadTwo then
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = [[[ GT Chara ] *
Heh you Surviving]],
          [4] = Color3.new(1, 0, 0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait()
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://7515642035"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
    end
end)