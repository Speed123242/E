game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
wait(1)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HP:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel:Destroy()



local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4928592851"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
         k:AdjustSpeed()
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(3)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(0)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(4)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(5)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "Back to work",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(8)
    local A_1 = {
        [1] = getrenv()._G.Pass,
        [2] = "Chatted",
        [3] = "",
        [4] = Color3.new(1, 1, 1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
wait(1)



game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [Charlie] ' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

wait(1)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "You dont need information"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "about me"



local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 100
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 10
wait(1)
    
    

    
    

        
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://5122364527"
music.Looped = true
music:Play()

wait(1)

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
local LoseMoves = remotes:WaitForChild("CharaMoves")
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
PName.BackgroundColor3 = Color3.fromRGB(0, 100, 0) --цвет обводки
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0) --позиция
PName.Size = UDim2.new(3, 0, 1, 0) 
PName.Font = Enum.Font.Arcade
PName.Text = "Charlie" --имя
PName.TextColor3 = Color3.fromRGB(0, 255, 0) --цвет
PName.TextScaled = true
PName.TextSize = 5.000 --размер
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
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


       


game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Idle.AnimationId = "rbxassetid://4900761581"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Run.AnimationId = "rbxassetid://4370518984"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Block.AnimationId = "rbxassetid://5973908948"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Block2.AnimationId = "rbxassetid://4370554050"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Run2.AnimationId = "rbxassetid://5657151699"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Idle2.AnimationId = "rbxassetid://4725460334"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").XSansMoves.Animations.Walk2.AnimationId = "rbxassetid://5658603994"
        

local mouse = game.Players.LocalPlayer:GetMouse() --нож
                mouse.KeyDown:Connect(function(k) 
                if k == "e" then
game.Players:Chat(("Alright lets do it fast."))
end
end)

		        local mouse = game.Players.LocalPlayer:GetMouse() --первая атака
                mouse.KeyDown:Connect(function(k) 
                if k == "z" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4910106480"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                game.Players:Chat(("Try to parry this mate"))
                k:AdjustSpeed(1.5)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SlideOnGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60 + Vector3.new(0,0,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4910172271"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.5)
                wait(0.3)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "12")*5
                wait(1.63)
                vel:Destroy()
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 0, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4910232706"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.InGround,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 60 + Vector3.new(0,0,0), 
						["CombatInv"] = true,
						["Damage"] = 20
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                end
                end)
    
    
    
    
                
                
                
                local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
                mouse.KeyDown:Connect(function(k) 
                if k == "x" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4911279815"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(0.80)
                char = game.Players.LocalPlayer.Character
                local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
                vel.Name = 'Client'
                vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
                vel.P = math.huge
                vel.Velocity = (Vector3.new(0,3,0))*4 -- change the velocity
                wait(0.5)
                vel:Destroy()
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
                playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0) --idk i didnt test this
               game.Players:Chat(("My turn!"))
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.3)
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.3)
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 100 + Vector3.new(50,30,50), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                end
                end)
                
                
                
                --третья атака
                 local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "c" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4918877276"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.50)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.3)
				                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,50,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4919502087"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                wait(1.87)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,0.1,0), 
						["CombatInv"] = true,
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
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0 + Vector3.new(0,100,0), 
						["CombatInv"] = true,
						["Damage"] = 40
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				end
                end)
                
                
                 local mouse = game.Players.LocalPlayer:GetMouse() --четвартая атака AHAHAHAHAHAHAHA
                mouse.KeyDown:Connect(function(k) 
                if k == "v" then
                local AnimationId = "5861141100"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
game.Players:Chat(("AHAHAHAHAHAHAHA"))
k:AdjustSpeed(1)
local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 20
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 16
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 15
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 15
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 15
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
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
						["Velocity"] = Vector3.new(0,-1,0), 
						["CombatInv"] = true,
						["Damage"] = 15
}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                end
			end)


local mouse = game.Players.LocalPlayer:GetMouse()--пятая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "t" then 
                    game.Players:Chat(("This getting bored"))
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 0.5, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = "NaN"
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --шестая атака (хилка)
                mouse.KeyDown:Connect(function(k) 
                if k == "g" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "Overwrite", 
    [3] = "Heal"
}
local Event = game:GetService("ReplicatedStorage").Remotes.XSansMoves
Event:InvokeServer(A_1)
        end
    end) 

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