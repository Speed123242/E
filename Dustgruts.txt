game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Asriel"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()
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
wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.StaminaBar:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:INF"
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:INF"
wait(3)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = ' [ ASRIEL DREEMURR ]\n' ..Chat, 
          [4] = Color3.fromRGB(255,255,255)
   }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)
wait(1)
local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

local ya = getrawmetatable(game)
local mum = ya.__namecall
setreadonly(ya, false)
ya.__namecall =
    newcclosure(
    function(name, ...)
        local tabs = {...}
        if getnamecallmethod() == "InvokeServer" and tostring(name) == "Damage" then
            tabs[3]["HitEffect"] = "HeavyHitEffect" -- any hit effect (use dex if u not know any)
            tabs[3]["Damage"] = "NaN" -- 40 max for knockback, 10 max for normal hits
            tabs[3]["Type"] = "Knockback" -- type (knockback or normal)
            tabs[3]["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 175 -- m1 knockback go brrrr
        end
        return mum(name, unpack(tabs))
    end
)
local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "z" then
local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "StarBlazing",
            [3] = "Start",
            [4] = "Galacta"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "x" then
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "ShockerBreaker",
            [3] = "Start",
            [4] = " II"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadTwo"] then
local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "HyperBeam",
            [3] = "Fire"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["KeypadThree"] then
local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "HyperGoner",
            [3] = "Start"
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
        wait(1)
        game.Players.LocalPlayer.Character.HyperGonered:Destroy()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
            mouse.KeyDown:Connect(function(k) 
                if k == "c" then
local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "AsrielBarrageMove",
            [3] = "Fire",
            [4] = 10
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.AsrielMoves
        Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "h" then
game.Players:Chat(("You cant move your body"))
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
end
end)

