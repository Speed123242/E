--made by 2a23andr#8879 u are fucking skid ez
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
wait(1)



wait(1)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ SKID ]\n' ..Chat, 
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
            v.TextColor3 = Color3.fromRGB(255, 0, 0) --цвет
        end
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Made by 2a23andr#8879", Text = "u are skid ez"})


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
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --цвет обводки
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0) --позиция
PName.Size = UDim2.new(3, 0, 1, 0) 
PName.Font = Enum.Font.Arcade
PName.Text = "SKID" --имя
PName.TextColor3 = Color3.fromRGB(255, 0, 255) --цвет
PName.TextScaled = true
PName.TextSize = 5.000 --размер
PName.TextStrokeColor3 = Color3.fromRGB(255, 255, 0)
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


--атаки и прочая хуйня
 local mouse = game.Players.LocalPlayer:GetMouse() --ez
mouse.KeyDown:Connect(function(k) 
    if k == "v" then
        game.Players:Chat(("AHAHAHAHAHHA EZ"))
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,50,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
    ["CombatInv"] = true, 
    ["Damage"] = 30
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)

for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
    end
 local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "GasterBlasters",
                [3] = "SummonFour",
                [4] = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name).Torso.Position
            }
        }
        game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))

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
    end
end)



 local mouse = game.Players.LocalPlayer:GetMouse() --ez
                mouse.KeyDown:Connect(function(k) 
                    if k == "c" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = "Bad",
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
                    ["HitTime"] = 1,
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
                
                
                
                local pass = getrenv()._G.Pass -- ez
local player = game.Players.LocalPlayer
local character = player.Character
local uis = game:GetService("UserInputService")
local function spamk()

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
		["Damage"] = 0
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Damage
	Event:InvokeServer(A_1, A_2, A_3)

end

game:GetService("UserInputService").InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.X then
	    game.Players:Chat(("cry"))

		while wait(0.05) do

			spamk()

		end

	end

end)


game:GetService("UserInputService").InputBegan:Connect(function(inp) --ez
    if inp.KeyCode == Enum.KeyCode.Z then
         game.Players:Chat(("your mom is mine forever, cry about it."))
wait(0.1)
        local A_1 = getrenv()._G.Pass
        local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "HeavyHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
                        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Charge,
                        ["CombatInv"] = true,
                        ["Damage"] = 5
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)

    end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --ez
mouse.KeyDown:Connect(function(k) 
    if k == "h" then
        game.Players:Chat(("Leave, like ur dad XD"))
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


local mouse = game.Players.LocalPlayer:GetMouse()--пятая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "g" then 
                    game.Players:Chat(("furry"))
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