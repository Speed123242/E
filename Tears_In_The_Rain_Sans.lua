--made by 2a23andr healpers MAnitosik#0548 CharaTheBets=>#8388
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Enabled = false

game.Players.LocalPlayer.MenuPlaylist["1Menu"].TimePosition = 0
game.Players.LocalPlayer.MenuPlaylist["1Menu"].SoundId = "rbxassetid://320354175"
wait(0.5)
game.Players.LocalPlayer.MenuPlaylist["1Menu"].Volume = 1


local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Size = UDim2.new(1, 0, 1, 0)

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderColor3 = Color3.fromRGB(255, 255, 255)
Credits.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Credits.Size = UDim2.new(0.899999976, 0, 0.200000003, 0)
Credits.Font = Enum.Font.Arcade
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

local function CRQDKY_fake_script() 
	local script = Instance.new('Script', Credits)

	local credits = script.Parent
	local text
	
	function SoundEffect ()
		local Sound = Instance.new("Sound",Workspace)
		Sound.Name = "TextSound"
		Sound.SoundId = "http://www.roblox.com/asset/?id=3188795283"
		Sound.PlaybackSpeed = 1
		Sound.Volume = 1
		Sound:Play()
		coroutine.resume(coroutine.create(function()
			wait(1)
			Sound:Destroy()
		end))
	end
	
	function setText(word)
		text = word
		for i = 1, #text do
			credits.Text = string.sub(text, 1, i)
			SoundEffect()
			wait(0.04)
		end
	end
	
	
	setText("heya.")
	wait(2)
	setText("you've been busy, huh?")
	wait(2)
	setText("well, y've got a question for ya.")
    wait(2)
    setText("wanna get to the point?")
end
coroutine.wrap(CRQDKY_fake_script)()
wait(13)
MainFrame:Destroy()
Credits:Destroy()

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "SansBadTime"
wait(1)


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

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Created By 2a23andr#8879", Text = "GET DUNKED ON!"})


game.Players:Chat(("y'know, it's not the best of days outside."))
wait(3)
game.Players:Chat(("the flowers are dripping, birds are cowaring away..."))
wait(3)
game.Players:Chat(("but on says like these..."))
wait(3)
game.Players:Chat(("when the rain beats down..."))
wait(3)
game.Players:Chat(("YOUR TEARS WILL FOLLOW."))

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
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --манитосик пидарас
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0) --позиция
PName.Size = UDim2.new(3, 0, 1, 0) 
PName.Font = Enum.Font.Arcade
PName.Text = "Tears In The Rain Sans" --имя
PName.TextColor3 = Color3.fromRGB(255, 255, 255) --цвет
PName.TextScaled = true
PName.TextSize = 5.000 --размер
PName.TextStrokeColor3 = Color3.fromRGB(255, 255, 255) -- цвет обводки
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

wait(1)
 --чат и прочая хуйня
 game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ Tears In The Rain Sans ]\n' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(v)
    if v.Name == "TextBar" then
        v:WaitForChild("TextLabel")
        for _,v in pairs(v:GetChildren()) do
            game:GetService("RunService").Heartbeat:wait()
            v.TextColor3 = Color3.fromRGB(255, 255, 255) --цвет
        end
    end
end)

--атаки

local mouse = game.Players.LocalPlayer:GetMouse()--первая атака
                mouse.KeyDown:Connect(function(k) 
                    if k == "z" then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters1",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
				local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters2",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()--вторая атака
                mouse.KeyDown:Connect(function(k) 
                    if k == "x" then
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters3",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
				local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
end)
			
			
local mouse = game.Players.LocalPlayer:GetMouse() --третья атака
mouse.KeyDown:Connect(function(k) 
    if k == "c" then
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,70,0),
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
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
			end
			local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 30
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,100,0),
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BoneHit,
    ["CombatInv"] = true, 
    ["Damage"] = 30
}
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
wait(1)
local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Special1",
					[3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
		end
	end)
			
 game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["J"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 1800 --количетсво стамины
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)



repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 1800 --вторая фаза

game.Workspace.ServerEffects.ServerCooldown:Destroy()
        game.Players.LocalPlayer:GetMouse():Destroy()

game.Players:Chat(("heh."))
wait(3)
game.Players:Chat(("so... you won again, huh?"))
wait(2)
game.Players:Chat(("..."))
wait(3)
game.Players:Chat(("heheheh"))
wait(5)
game.Players:Chat(("that's what you think."))
wait(5)
game.Players:Chat(("everything has changed"))
wait(5)
game.Players:Chat(("i will not waste this opportunity."))
wait(5)
game.Players:Chat(("i will not give up."))
wait(5)
game.Players:Chat(("i'm not going to let you win 'the game' that easy."))
wait(5)
game.Players:Chat(("so, prepare yourself kid"))
wait(5)
game.Players:Chat(("'cause now you'll know what it's like..."))
wait(5)
game.Players:Chat(("to burn in hell."))
--атаки



local mouse = game.Players.LocalPlayer:GetMouse() --первая атака
mouse.KeyDown:Connect(function(k) 
    if k == "z" then
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,70,0),
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
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters2",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
			end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters1",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones3",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones5",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
end
end)


local mouse = game.Players.LocalPlayer:GetMouse() --вторая атака
mouse.KeyDown:Connect(function(k) 
    if k == "x" then
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,70,0),
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
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters3",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
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
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Knockback", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 30
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Special1",
					[3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
		end
	end)

local mouse = game.Players.LocalPlayer:GetMouse() --третья атака
            mouse.KeyDown:Connect(function(k) 
                if k == "c" then
                local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                   local A_1 = 
                {
                    [1] = getrenv()._G.Pass, 
                    [2] = "Bones3",
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
            Event:InvokeServer(A_1)
              local A_1 = 
                {
                    [1] = getrenv()._G.Pass, 
                    [2] = "Bones4",
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
            Event:InvokeServer(A_1)
            local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
              local A_1 = 
                {
                    [1] = getrenv()._G.Pass, 
                    [2] = "Blasters3",
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
            Event:InvokeServer(A_1)
             local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
    local A_1 = 
                {
                    [1] = getrenv()._G.Pass, 
                    [2] = "Blasters4",
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
            Event:InvokeServer(A_1)
            local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
end
end)

 function f1(hittime, rtype, hiteffect, velocity, damage)--четвертая атака
    local A_1 = getrenv()._G.Pass
        local A_2 = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        local A_3 = {
            ["HitTime"] = hittime,
            ["Type"] = rtype,
            ["HitEffect"] = hiteffect,
            ["VictimCFrame"] = CFrame.new(Vector3.new(0,0,0)),
            ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
            ["Velocity"] = velocity,
            ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
            ["Damage"] = damage
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
end
 local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "g" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3816275001"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Knockback", "BurstEffect", Vector3.new(0, 0, 100), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3815846344"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, -10, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057804140"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(10, 0, 0), 0)
wait(0.1)
               local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057815259"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(-10, 0, 0), 0)
wait(0.1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4057830287"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Normal", "BurstEffect", Vector3.new(0, 10, 0), 0)
wait(0.1)
local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3816275001"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1) 
				    f1(1, "Knockback", "BurstEffect", Vector3.new(0, 0, 100), 0)
wait(0.1)
end
end)


repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 3400 --special 2
local mouse = game.Players.LocalPlayer:GetMouse() --первая атака
mouse.KeyDown:Connect(function(k) 
    if k == "v" then
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,70,0),
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
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters2",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
			end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters1",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones3",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
    v:Fire({"Model","CrossLineBones",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
			local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Bones5",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
end
local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters3",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
local A_1 = getrenv()._G.Pass
                local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
                        ["CombatInv"] = true,
                        ["Damage"] = 10
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
                local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Blasters4",
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                local A_3 = 
                    {
                        ["HitTime"] = 1, 
                        ["Type"] = "Normal", 
                        ["HitEffect"] = "KnifeHitEffect",
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * "1", 
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
                        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
                        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
                        ["Velocity"] = Vector3.new(0,50,0),
                        ["CombatInv"] = true,
                        ["Damage"] = 30
                    }
                local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                Event:InvokeServer(A_1, A_2, A_3)
local A_1 = 
				{
					[1] = getrenv()._G.Pass, 
					[2] = "Special2",
					[3] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.SansBadTimeMoves
			Event:InvokeServer(A_1)
		end
	end)