
hidechat = true --Set this to false if u dont want ur messages hidden

visualizer = true -- Change true to false to get rid of the visualizer

    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
    wait(1)
local healthbar = game.Players.LocalPlayer.Character.Head.HealthBar
healthbar:Destroy()
wait(0.5)
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://4458849950"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://4495592637"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://6136042922"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://7817430473"
wait(0.5)
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://1173681504" -- id of the music you want
Sound.Name = "bodyguard" -- name of the music you want
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
    inst[i] = v
end
return inst
end

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 300
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 200
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
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[True bunny god]\n' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)
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
wait(1)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1.Position = UDim2.new(999, 5, 0, 500) -- Moves Position Can be Anything you can delete this if you don't want custom moves position
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves2.Position = UDim2.new(999, 5, 0, 500) -- Moves Position Can be Anything
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3.Position = UDim2.new(999, 5, 0, 500) -- Moves Position Can be Anything
game.Players.LocalPlayer.Character.Head.Voice.PlaybackSpeed = 1
game.Players.LocalPlayer.PlayerGui.UI.Ui.Settings.Position = UDim2.new(0, 0, 0, 0) -- settings gui position
game.Players.LocalPlayer.PlayerGui.UI.Ui.SettingsButton.Position = UDim2.new(0, 0, 0, 1051) -- settings button position
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Position = UDim2.new(0.37, 1, 0.87, 0.3) -- stamina bar position
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Position = UDim2.new(0.35, 0.5, 0.89, 0) -- mana bar position
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.ImageLabel:Destroy() -- this will delete the stamina bar guy thing
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Position = UDim2.new(0.03, 0.45, 0.94, 0) -- attack position
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Position = UDim2.new(0.03, 0.45, 0.90, 0) -- defense position
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- stamina bar Color
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Size = UDim2.new(0.24, 0.1, 0.01, 0) -- size of the stamina bar
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- mana bar Color
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Size = UDim2.new(0.3, 0.1, 0.01, 0) -- size of the mana bar
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack: ???" -- Text of Attack you can delete this
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.TextColor3 = Color3.fromRGB(255, 0, 0) -- color of the text you can delete this
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense: ???" -- Text of Defense you can delete this
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.TextColor3 = Color3.fromRGB(255, 0, 0)-- color of the text you can delete this
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo:Destroy() -- delete this
--lmb
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4906030889"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4906045655"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4906056809"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4906072632"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906092495"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves").ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4906104364"
--firstattack
--firstattack
for _, v in pairs(game.ReplicatedStorage.RemoteSecurity:GetChildren()) do
    if v:IsA("ObjectValue") and v.Name == "remade by karma" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "z" then
game.Players:Chat(("Watch out!"))

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7020204634"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
for i = 1,40 do
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Normal", 
        ["HitEffect"] = "LightHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
        ["Velocity"] = Vector3.new(0,-1,0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Punch,
        ["Damage"] = 8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","SpeedLines",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
end
end
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5861141100"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:AdjustSpeed(2)
k:Play()
wait(0.8)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.6, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
        ["Velocity"] = Vector3.new(0,-10,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit,
        ["Damage"] = "10"
    }
}
 
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","SpearJusticeExplosion",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
end
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "x" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348788816"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
game.Players:Chat(("You are goin pay kid"))

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = "NaN"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800436094"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4800436094"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 1, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = Vector3.new(0,-1,0),
["CombatInv"] = true,
["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)

local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "BurstEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
        ["Velocity"] = Vector3.new(0,-10,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 30, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.GroundHit,
        ["Damage"] = "30"
    }
}
 
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","SpearJusticeExplosion",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
end
end
end
)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "c" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4906108508"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
game.Players:Chat(("Is it cool that karma made this script?"))

local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
["HitTime"] = 0.5, 
["Type"] = "Knockback", 
["HitEffect"] = "KnifeHitEffect",
["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
["CombatInv"] = true,
["Damage"] = "20"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "v" then

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://8752158190" -- id of the music you want
Sound.Name = "omniking2"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://7004737889"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
game.Players:Chat(("PHASE 2 MADE BY KARMA!!"))

local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Neon,
    Color = Color3.fromRGB(255, 255, 255),
    Transparency = 0
    }
        times = 0
        _G.soulmode = 1
    _G.closed = false
    local effects = game.Players.LocalPlayer.Character.Effects
    local rs = game:GetService("RunService")

            local player = game.Players.LocalPlayer
    local Character = player.Character
    local args = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeProjectileOrange",
            [3] = "Spawn",
            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
        }
    }
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    local projectiles = game.Players.LocalPlayer.Character.Attacks
    for i,v in pairs(projectiles:GetChildren()) do
    if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
        v:WaitForChild("BodyVelocity"):Destroy()
        v:WaitForChild("ParticleEmitter"):Destroy()
        coroutine.resume(coroutine.create(function() 


    while 
    wait(0.05)
    do
        if _G.closed then
            break
            end
        times = times + 1
        if 
        times == 6
        then 
        times = 0
        end
        if times == 1 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,40,0)
    elseif times == 2 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(10,40,0)
    elseif times == 3 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,10)
    elseif times == 4 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,30,-10)
    elseif times == 5 then
        v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10,30,0)
        end


    local args1 = {
        [1] = {
            [1] = getrenv()._G.Pass,
            [2] = "KnifeProjectileOrange",
            [3] = "Hit",
            [4] = v,
            [5] = v.CFrame,
            [6] = perseverance
        }
    }


    if _G.soulmode == 1 then
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
    end
    end
    end))
    end
    end

    ScreenBlurFlash()
    Hair7:Destroy()
wait(0)
Hair7 = Instance.new("Part")
Hair7.Parent = char
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Sand"
Hair7.BrickColor = BrickColor.new("Pink")
Hair7.CFrame = char.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0


Weld1 = Instance.new("Weld")
Weld1.Parent = char.Head
Weld1.Part0 = char.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(-0.1, 1.1, -0.2) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))
end
end)
local userInputService = game:GetService("UserInputService")  
userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.B then
              
         --player is typing
         
     
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
						["HitTime"] = 0.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,  
						["Velocity"] = Vector3.new(0, -1, 0),
						["CombatInv"] = true,
						["Damage"] = 20
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				repeat
				         Event:InvokeServer(A_1, A_2, A_3)	
                                               Event:InvokeServer(A_1, A_2, A_3)
                                               Event:InvokeServer(A_1, A_2, A_3)                              
                                               Event:InvokeServer(A_1, A_2, A_3)                                     
                                                                                                                                                                                                                                                                 		
				until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
          end
  end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
	if k == "n" then
        local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "Damage",
                [3] = math.huge,
                [4] = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Events:FireServer(unpack(args))
end
end)
function talk(msg)
  local A_1 = {
     [1] = getrenv()._G.Pass,
     [2] = "Chatted",
     [3] = msg,
     [4] = Color3.fromRGB(255,0,0)
  }
  local Event = game:GetService("ReplicatedStorage").Remotes.Events
  Event:FireServer(A_1)
end


talk("Here i was.......... thinking that you where nice...")
wait(6)
talk("And all tho's time YOU SLAYED them all....")
wait(3)
talk("You are going to suffer...")
wait(3)
talk("F O R A L L Y O U H A V E DONE")