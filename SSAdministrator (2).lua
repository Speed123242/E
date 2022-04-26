
--setup
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
sdis = false
count = 0
local done = {}
local pass = 0
local dead = 0
local first = true
local looped = 0
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()

_G.closed = true
--_G
_G.hidechat = true
_G.customchat = true
_G.Mode = 0
_G.Trans = false

--anims

                local swordequip = Instance.new("Animation") 
swordequip.AnimationId = "rbxassetid://3204744488" 
local swordequipplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(swordequip)
              
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4929570007"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)     
--GUI-- Gui to Lua
-- Version: 3.2

-- Instances:

local MekoHub = Instance.new("ScreenGui")
local BG = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local NameHider = Instance.new("TextButton")
local Val = Instance.new("TextLabel")
local NameHider_Roundify_12px = Instance.new("ImageLabel")
local CustomChat = Instance.new("TextButton")
local Val_2 = Instance.new("TextLabel")
local CustomChat_Roundify_12px = Instance.new("ImageLabel")
local Color = Instance.new("Frame")
local Green = Instance.new("TextBox")
local Blue = Instance.new("TextBox")
local ColorValue = Instance.new("Frame")
local Red = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")

--Properties:

MekoHub.Name = "MekoHub"
MekoHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

BG.Name = "BG"
BG.Parent = MekoHub
BG.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BG.BackgroundTransparency = 1.000
BG.Position = UDim2.new(0.42813918, 0, 0.246200606, 0)
BG.Size = UDim2.new(0, 515, 0, 270)
BG.Image = "rbxassetid://3570695787"
BG.ImageColor3 = Color3.fromRGB(29, 29, 29)
BG.ScaleType = Enum.ScaleType.Slice
BG.SliceCenter = Rect.new(100, 100, 100, 100)
BG.SliceScale = 0.120
BG.Draggable = true
BG.Active = true
BG.Selectable = true

ScrollingFrame.Parent = BG
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0194174759, 0, 0.140740737, 0)
ScrollingFrame.Size = UDim2.new(0, 494, 0, 226)

NameHider.Name = "NameHider"
NameHider.Parent = ScrollingFrame
NameHider.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
NameHider.BackgroundTransparency = 1.000
NameHider.BorderSizePixel = 0
NameHider.Position = UDim2.new(0.068825908, 0, 0.0527925752, 0)
NameHider.Size = UDim2.new(0, 145, 0, 35)
NameHider.ZIndex = 2
NameHider.Font = Enum.Font.Antique
NameHider.Text = "NameHide:"
NameHider.TextColor3 = Color3.fromRGB(0, 0, 0)
NameHider.TextScaled = true
NameHider.TextSize = 14.000
NameHider.TextWrapped = true
NameHider.TextXAlignment = Enum.TextXAlignment.Left

Val.Name = "Val"
Val.Parent = NameHider
Val.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Val.BackgroundTransparency = 1.000
Val.BorderSizePixel = 0
Val.Position = UDim2.new(0.710843384, 0, 0, 0)
Val.Size = UDim2.new(0, 48, 0, 35)
Val.ZIndex = 2
Val.Font = Enum.Font.Antique
Val.Text = "On"
Val.TextColor3 = Color3.fromRGB(31, 255, 7)
Val.TextScaled = true
Val.TextSize = 14.000
Val.TextWrapped = true

NameHider_Roundify_12px.Name = "NameHider_Roundify_12px"
NameHider_Roundify_12px.Parent = NameHider
NameHider_Roundify_12px.Active = true
NameHider_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
NameHider_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHider_Roundify_12px.BackgroundTransparency = 1.000
NameHider_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
NameHider_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
NameHider_Roundify_12px.Image = "rbxassetid://3570695787"
NameHider_Roundify_12px.ImageColor3 = Color3.fromRGB(63, 63, 63)
NameHider_Roundify_12px.ScaleType = Enum.ScaleType.Slice
NameHider_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
NameHider_Roundify_12px.SliceScale = 0.120

CustomChat.Name = "CustomChat"
CustomChat.Parent = ScrollingFrame
CustomChat.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
CustomChat.BackgroundTransparency = 1.000
CustomChat.BorderSizePixel = 0
CustomChat.Position = UDim2.new(0.0688259006, 0, 0.175014794, 0)
CustomChat.Size = UDim2.new(0, 145, 0, 35)
CustomChat.ZIndex = 2
CustomChat.Font = Enum.Font.Antique
CustomChat.Text = "CustomChat:"
CustomChat.TextColor3 = Color3.fromRGB(0, 0, 0)
CustomChat.TextSize = 31.000
CustomChat.TextWrapped = true
CustomChat.TextXAlignment = Enum.TextXAlignment.Left

Val_2.Name = "Val"
Val_2.Parent = CustomChat
Val_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Val_2.BackgroundTransparency = 1.000
Val_2.BorderSizePixel = 0
Val_2.Position = UDim2.new(0.710843384, 0, 0, 0)
Val_2.Size = UDim2.new(0, 48, 0, 35)
Val_2.ZIndex = 2
Val_2.Font = Enum.Font.Antique
Val_2.Text = "On"
Val_2.TextColor3 = Color3.fromRGB(31, 255, 7)
Val_2.TextScaled = true
Val_2.TextSize = 14.000
Val_2.TextWrapped = true

CustomChat_Roundify_12px.Name = "CustomChat_Roundify_12px"
CustomChat_Roundify_12px.Parent = CustomChat
CustomChat_Roundify_12px.Active = true
CustomChat_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
CustomChat_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CustomChat_Roundify_12px.BackgroundTransparency = 1.000
CustomChat_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
CustomChat_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
CustomChat_Roundify_12px.Image = "rbxassetid://3570695787"
CustomChat_Roundify_12px.ImageColor3 = Color3.fromRGB(63, 63, 63)
CustomChat_Roundify_12px.ScaleType = Enum.ScaleType.Slice
CustomChat_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
CustomChat_Roundify_12px.SliceScale = 0.120

Color.Name = "Color"
Color.Parent = ScrollingFrame
Color.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Color.Position = UDim2.new(0.453441292, 0, 0.0343770497, 0)
Color.Size = UDim2.new(0, 236, 0, 111)

Green.Name = "Green"
Green.Parent = Color
Green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Green.BackgroundTransparency = 0.800
Green.Position = UDim2.new(0.392222255, 0, 0.0822690725, 0)
Green.Size = UDim2.new(0, 56, 0, 51)
Green.Font = Enum.Font.Arcade
Green.Text = "0"
Green.TextColor3 = Color3.fromRGB(0, 0, 0)
Green.TextScaled = true
Green.TextSize = 14.000
Green.TextWrapped = true

Blue.Name = "Blue"
Blue.Parent = Color
Blue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blue.BackgroundTransparency = 0.800
Blue.Position = UDim2.new(0.643093288, 0, 0.0822690725, 0)
Blue.Size = UDim2.new(0, 56, 0, 51)
Blue.Font = Enum.Font.Arcade
Blue.Text = "4"
Blue.TextColor3 = Color3.fromRGB(0, 0, 0)
Blue.TextScaled = true
Blue.TextSize = 14.000
Blue.TextWrapped = true

ColorValue.Name = "ColorValue"
ColorValue.Parent = Color
ColorValue.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
ColorValue.Position = UDim2.new(0.425087124, 0, 0.630036652, 0)
ColorValue.Size = UDim2.new(0, 41, 0, 41)

Red.Name = "Red"
Red.Parent = Color
Red.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Red.BackgroundTransparency = 0.800
Red.Position = UDim2.new(0.141351223, 0, 0.0822690725, 0)
Red.Size = UDim2.new(0, 56, 0, 51)
Red.Font = Enum.Font.Arcade
Red.Text = "255"
Red.TextColor3 = Color3.fromRGB(0, 0, 0)
Red.TextScaled = true
Red.TextSize = 14.000
Red.TextWrapped = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0854368955, 0, 0, 0)
Title.Size = UDim2.new(0, 426, 0, 38)
Title.ZIndex = 4
Title.Font = Enum.Font.Antique
Title.Text = "Admistrator Gui"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Title.TextStrokeTransparency = 0.800
Title.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credit.BackgroundTransparency = 1.000
Credit.Position = UDim2.new(0.716504872, 0, 0.888888896, 0)
Credit.Size = UDim2.new(0, 135, 0, 24)
Credit.ZIndex = 5
Credit.Font = Enum.Font.Antique
Credit.Text = "created by Meko#2233"
Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
Credit.TextScaled = true
Credit.TextSize = 14.000
Credit.TextWrapped = true

-- Scripts:

local function BQTDGN_fake_script() -- NameHider.LocalScript 
	local script = Instance.new('LocalScript', NameHider)

	script.Parent.MouseButton1Click:Connect(function()
		if _G.hidechat == true then
			_G.hidechat = false
			script.Parent.Val.Text = "Off"
			script.Parent.Val.TextColor3 = Color3.fromRGB(255, 0, 4)
		elseif _G.hidechat == false then
			_G.hidechat = true
			script.Parent.Val.Text = "On"
	
			script.Parent.Val.TextColor3 = Color3.fromRGB(31, 255, 7)
		end
	end)
end
coroutine.wrap(BQTDGN_fake_script)()
local function JVWDY_fake_script() -- CustomChat.LocalScript 
	local script = Instance.new('LocalScript', CustomChat)

	script.Parent.MouseButton1Click:Connect(function()
		if _G.customchat == true then
		_G.customchat = false
			script.Parent.Val.Text = "Off"
			script.Parent.Val.TextColor3 = Color3.fromRGB(255, 0, 4)
		elseif _G.customchat == false then
			_G.customchat = true
			script.Parent.Val.Text = "On"
	
			script.Parent.Val.TextColor3 = Color3.fromRGB(31, 255, 7)
		end
	end)
end
coroutine.wrap(JVWDY_fake_script)()

    
--color
local function colorset()
    local TextR = tonumber(Red.Text)
    local TextG = tonumber(Green.Text)
    local TextB = tonumber(Blue.Text)
		if typeof(TextR) == "number" and typeof(TextG) == "number" and typeof(TextB) == "number" then
    ColorValue.BackgroundColor3 = Color3.fromRGB(Red.Text, Green.Text, Blue.Text)
		end
end

Green:GetPropertyChangedSignal("Text"):Connect(colorset())
Red:GetPropertyChangedSignal("Text"):Connect(colorset())
Blue:GetPropertyChangedSignal("Text"):Connect(colorset())

--custom Name


local Player = game.Players.LocalPlayer
Player.Chatted:Connect(function(Chat)
    wait()
    
    if _G.customchat == true then
        
    local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[[ADMINISTRATOR]]\n' .. Chat, 
          [4] = ColorValue.BackgroundColor3
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
    end
end)


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


--headgui
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")


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


--Properties:

HealthBar.Name = "HealthBar"
HealthBar.Parent = player.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 3, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)

Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = "Made by Meko#2233"
HealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Antique
PName.Text = "ADMINISTRATOR"
PName.TextColor3 = Color3.fromRGB(85, 0, 0)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5




--tween Rotation
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
        
        
        
--anims and destroys
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Walk.AnimationId = "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Idle.AnimationId = "rbxassetid://7005139602"
game.Players.LocalPlayer.Backpack:WaitForChild("Main"):WaitForChild("CharaMoves"):WaitForChild("Animations").Run.AnimationId = "rbxassetid://4576074471"
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["RealKnife"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()



--sit
local sitstart = Instance.new("Animation") 
sitstart.AnimationId = "rbxassetid://6821079045" 
local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
local sitloop = Instance.new("Animation") 
sitloop.AnimationId = "rbxassetid://6821100086" 
local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)
local sitend = Instance.new("Animation") 
sitend.AnimationId = "rbxassetid://6821115515" 
local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend) 
local sitting = false 
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k)
    if k == "q" then if sitting == false then 
        sitting = true
        sitstartplay:Play() 
        wait(1) 
        sitloopplay:Play()
    elseif sitting == true then 
        sitting = false
        sitloopplay:Stop() 
        sitendplay:Play() 
        end
    end 
end)




--bypass
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 169



--:kill
player.Chatted:Connect(function(mag, secipient)
    if string.sub(mag,1,1) == ":" then
        print("false command")
        local splitstring = string.split(mag, " ")
        if splitstring[1] == ":kill" then
            for _,PlayerTarget in pairs(Players:GetPlayers()) do
		if string.sub(string.lower(PlayerTarget.Name),1,string.len(splitstring[2])) == string.lower(splitstring[2]) then
		print(PlayerTarget)
            local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
for i,v in pairs(player.Character.Attacks:GetChildren()) do
    print(v.Name)
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
    print(v.Name)
local detect 
detect = rs.Heartbeat:Connect(function()
    if PlayerTarget.Character:WaitForChild("Humanoid").Health == 0 then
        v:Destroy()
        detect:disconnect()
        print(PlayerTarget.Character.Name) --should print a player only once
        else
            
v.Position = PlayerTarget.Character.LockOn.Position - Vector3.new(0,4,0)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = PlayerTarget.Character.HumanoidRootPart.CFrame,
        [6] = PlayerTarget.Character.HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

    
end

end)
end
end
end
end
end
end
end)


--:fixSoftlock
player.Chatted:Connect(function(mag, secipient)
    if string.sub(mag,1,1) == ":" then
        print("idk")
        if mag == ":fixsoftlock" then
            print("fixed")
            
for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
    if v.Name == "Client" or v.Name == "Server" then
        v:Destroy()
    end
end
end
end
end)

--modeswitch
userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.E then
            if _G.Mode == 1 and _G.Trans == false then
                _G.Mode = 0
                  
_G.closed = true
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
local Model = Instance.new("Model")
Model.WorldPivot = CFrame.new(-26.174686431885, 7.7919206619263, 50.385040283203, 1, 0, 0, 0, 0.99999392032623, 0, 0, 0, 0.99999392032623)

local Orange1 = Instance.new("MeshPart")
Orange1.Name = "Orange1"
Orange1.CanCollide = false
Orange1.Color = Color3.fromRGB(255, 176, 0)
Orange1.Massless = true
Orange1.Material = Enum.Material.Neon
Orange1.Reflectance = 1
Orange1.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange1.Locked = true
Orange1.CFrame = CFrame.new(-26.637672424316, 3.8199439048767, 51.477661132813, 1, 0, 0, 0, -0.96591109037399, -0.25881484150887, 0, 0.25881484150887, -0.96591109037399)
Orange1.CastShadow = false
Orange1.Parent = Model

local Orange2 = Instance.new("MeshPart")
Orange2.Name = "Orange2"
Orange2.CanCollide = false
Orange2.Color = Color3.fromRGB(255, 176, 0)
Orange2.Massless = true
Orange2.Material = Enum.Material.Neon
Orange2.Reflectance = 1
Orange2.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange2.Locked = true
Orange2.CFrame = CFrame.new(-26.637672424316, 6.8198986053467, 54.477615356445, 1, 0, 0, 0, -0.25881531834602, -0.96591079235077, 0, 0.96591079235077, -0.25881531834602)
Orange2.CastShadow = false
Orange2.Parent = Model

local Orange3 = Instance.new("MeshPart")
Orange3.Name = "Orange3"
Orange3.CanCollide = false
Orange3.Color = Color3.fromRGB(255, 176, 0)
Orange3.Massless = true
Orange3.Material = Enum.Material.Neon
Orange3.Reflectance = 1
Orange3.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange3.Locked = true
Orange3.CFrame = CFrame.new(-26.637672424316, 10.819840431213, 53.47762298584, 1, 0, 0, 0, 0.70709562301636, -0.70709639787674, 0, 0.70709639787674, 0.70709562301636)
Orange3.CastShadow = false
Orange3.Parent = Model

local Orange4 = Instance.new("MeshPart")
Orange4.Name = "Orange4"
Orange4.CanCollide = false
Orange4.Color = Color3.fromRGB(255, 176, 0)
Orange4.Massless = true
Orange4.Material = Enum.Material.Neon
Orange4.Reflectance = 1
Orange4.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange4.Locked = true
Orange4.CFrame = CFrame.new(-26.637672424316, 11.763940811157, 49.292541503906, 1, 0, 0, 0, 0.96591109037399, 0.25881457328796, 0, -0.25881457328796, 0.96591109037399)
Orange4.CastShadow = false
Orange4.Parent = Model

local Orange5 = Instance.new("MeshPart")
Orange5.Name = "Orange5"
Orange5.CanCollide = false
Orange5.Color = Color3.fromRGB(255, 176, 0)
Orange5.Massless = true
Orange5.Material = Enum.Material.Neon
Orange5.Reflectance = 1
Orange5.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange5.Locked = true
Orange5.CFrame = CFrame.new(-26.637672424316, 8.7639961242676, 46.292530059814, 1, 0, 0, 0, 0.25881952047348, 0.96592545509338, 0, -0.96592545509338, 0.25881952047348)
Orange5.CastShadow = false
Orange5.Parent = Model

local Orange6 = Instance.new("MeshPart")
Orange6.Name = "Orange6"
Orange6.CanCollide = false
Orange6.Color = Color3.fromRGB(255, 176, 0)
Orange6.Massless = true
Orange6.Material = Enum.Material.Neon
Orange6.Reflectance = 1
Orange6.Size = Vector3.new(0.050005849450827, 3.4199826717377, 6.446400642395)
Orange6.Locked = true
Orange6.CFrame = CFrame.new(-26.637672424316, 4.7640113830566, 47.292472839355, 1, 0, 0, 0, -0.70709943771362, 0.70710051059723, 0, -0.70710051059723, -0.70709943771362)
Orange6.CastShadow = false
Orange6.Parent = Model

local Yellow = Instance.new("Part")
Yellow.Name = "Yellow"
Yellow.BottomSurface = Enum.SurfaceType.Smooth
Yellow.CanCollide = false
Yellow.TopSurface = Enum.SurfaceType.Smooth
Yellow.Transparency = 1
Yellow.Massless = true
Yellow.Size = Vector3.new(1, 1, 1)
Yellow.Locked = true
Yellow.CFrame = CFrame.new(-26.174686431885, 8.1670999526978, 50.38826751709, 1, 0, 0, 0, 0.99999392032623, 0, 0, 0, 0.99999392032623)
Yellow.CastShadow = false
Yellow.Parent = Model

local Orange61 = Instance.new("Weld")
Orange61.Name = "Orange6"
Orange61.C0 = CFrame.new(-0.46298599243164, -3.4031090736389, -3.0958137512207, 1, 0, 0, 0, -0.70710372924805, 0.70710480213165, 0, -0.70710480213165, -0.70710372924805)
Orange61.Parent = Yellow

local Orange51 = Instance.new("Weld")
Orange51.Name = "Orange5"
Orange51.C0 = CFrame.new(-0.46298599243164, 0.59689998626709, -4.095760345459, 1, 0, 0, 0, 0.25881806015968, 0.96592003107071, 0, -0.96592003107071, 0.25881806015968)
Orange51.Parent = Yellow

local Orange41 = Instance.new("Weld")
Orange41.Name = "Orange4"
Orange41.C0 = CFrame.new(-0.46298599243164, 3.5968627929688, -1.0957336425781, 1, 0, 0, 0, 0.96591699123383, 0.25881615281105, 0, -0.25881615281105, 0.96591699123383)
Orange41.Parent = Yellow

local Orange31 = Instance.new("Weld")
Orange31.Name = "Orange3"
Orange31.C0 = CFrame.new(-0.46298599243164, 2.652756690979, 3.0893745422363, 1, 0, 0, 0, 0.70709991455078, -0.70710068941116, 0, 0.70710068941116, 0.70709991455078)
Orange31.Parent = Yellow

local Orange21 = Instance.new("Weld")
Orange21.Name = "Orange2"
Orange21.C0 = CFrame.new(-0.46298599243164, -1.3472094535828, 4.0893707275391, 1, 0, 0, 0, -0.25881689786911, -0.9659166932106, 0, 0.9659166932106, -0.25881689786911)
Orange21.Parent = Yellow

local Orange11 = Instance.new("Weld")
Orange11.Name = "Orange1"
Orange11.C0 = CFrame.new(-0.46298599243164, -4.3471822738647, 1.0894012451172, 1, 0, 0, 0, -0.96591699123383, -0.25881642103195, 0, 0.25881642103195, -0.96591699123383)
Orange11.Parent = Yellow

Orange61.Part1 = Orange6
Orange61.Part0 = Yellow

Orange51.Part1 = Orange5
Orange51.Part0 = Yellow

Orange41.Part1 = Orange4
Orange41.Part0 = Yellow

Orange31.Part1 = Orange3
Orange31.Part0 = Yellow

Orange21.Part1 = Orange2
Orange21.Part0 = Yellow

Orange11.Part1 = Orange1
Orange11.Part0 = Yellow

Model.Parent = char

local root = Instance.new("Part")
root.Name = "root"
root.Parent = char
root.Anchored = false
root.CanCollide = false
root.Transparency = 1
root.Massless = true
root.Size = Vector3.new(5,5,5)

local rootweld = Instance.new("Weld")
rootweld.Parent = char.HumanoidRootPart
rootweld.Part0 = char.HumanoidRootPart
rootweld.Part1 = root
rootweld.Name = "rootweld"
rootweld.C0 = CFrame.new(0,4,2)*CFrame.Angles(0, 0, 0)

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = root
weld1.Part1 = Yellow
weld1.C0 = CFrame.new(0,0,0)*CFrame.Angles(0, math.rad(90), 0)
weld1.Name = "weld1"

local welds = {Orange11,Orange21,Orange31,Orange41,Orange51,Orange61}
for i = 1,6,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectileOrange" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.Mode ~= 0 then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(180),0)
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)



local rot = 0
while true do
    local delta = game['Run Service'].Heartbeat:wait()
rot = rot + 50*delta
rootweld.C0 = CFrame.new(0,4,2)*CFrame.Angles(0, 0, math.rad(rot))
end
                k:Stop()
            elseif _G.Mode == 0 and _G.Trans == false then
                _G.Mode = 1
                _G.Trans = true  
                swordequipplay:Play()
                wait(0.2)
                swordequipplay:AdjustSpeed(0)

player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")

        
for i = 1,2,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileYellow",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
 
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) 
    if child.Name == "YellowBlast" then 
        child:WaitForChild("Hitted"):Destroy()
        child:WaitForChild("Particle"):Destroy()
        table.insert(slashes,child) 
        print(child.Name)
    end
end)
local speed = 0.1
local lradius = 15

local radius = 1
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character:FindFirstChild("Left Arm")
local ts2 = 0
local root2 = p.Character:FindFirstChild("Right Arm")
  local detect  
  local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
local bp2 = Instance.new('BodyPosition',child)
bp2.Name = 'Client'
bp2.P = 30000
bp2.D = 150
bp2.Position = char.HumanoidRootPart.Position
detect = game:GetService("RunService").RenderStepped:Connect(function()
    if _G.Mode == 0 then 
        table.remove(slashes,1)
        
        table.remove(slashes,2)
        detect:disconnect()
    end
    for i,v in pairs(slashes) do 
        if not v or not v.Parent then 
            table.remove(slashes,i)
            return
        end
        local y = root.Position.Y - 0.5
        local z = root.Position.Z
        local x = root.Position.X + radius*cos(rad(ts))
        bp.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
        slashes[1].Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
        ts = ts + 5
        
        local y = root2.Position.Y - 0.5
        local z = root2.Position.Z
        local x = root2.Position.X + radius*cos(rad(ts2))
        bp2.Position = Vector3.new(x,y,root2.Position.Z + radius*sin(rad(ts2)))
        slashes[2].Position = Vector3.new(x,y,root2.Position.Z + radius*sin(rad(ts2)))
        ts2 = ts2 + 5
    end
end)

wait(0.5)
swordequipplay:AdjustSpeed(1)

_G.Trans = false
wait(0.2)
swordequipplay:Stop()
k:Play()
k:AdjustSpeed(1)
 local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
    times = 0
    
local effects = game.Players.LocalPlayer.Character.Effects
local rs = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
on = true
posz = 0
posx = 0
    times = 0
    
_G.closed = true
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

_G.closed = false
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
    v:WaitForChild("BodyVelocity"):Destroy()
    v:WaitForChild("ParticleEmitter"):Destroy()
    
while 
wait(0.005)
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
v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,0)
elseif times == 2 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(10,9,0)
elseif times == 3 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,10)
elseif times == 4 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(0,9,-10)
elseif times == 5 then
    v.Position = Character.HumanoidRootPart.Position - Vector3.new(-10,9,0)
    end
local args2 = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = v.CFrame,
        [6] = workspace.Terrain
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args2))


end
end
end
end
        end
          end

  end)


player.Chatted:Connect(function(mag, secipient)
    if string.sub(mag,1,1) == ":" then
        print("false command")
        local splitstring = string.split(mag, " ")
        if splitstring[1] == ":kill" then
		if string.sub(string.lower("all"),1,string.len(splitstring[2])) == string.lower(splitstring[2]) then
		
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	    local player = game.Players.LocalPlayer
local Character = player.Character
for _,b in pairs(game.workspace:GetChildren()) do
for i = 1,#done do
        if b.Name ~= done[i] then
            pass = pass + 1
        end
end
if pass == #done then
if b:FindFirstChildOfClass('Humanoid')  and b.Humanoid.Health ~= 0 then
if b:FindFirstChild('Torso') then
if b.Name ~= player.Name and b.Name ~= "Hateball Defense Dummy" and b.Name ~= "Defense:250 Dummy" and b.Name ~= "HalfStaminaDummy" and b.Name ~= "BlockingDummy" and b.Name ~= "NoStaminaDummy" and b.Name ~= "AttackDummy" and b.Name ~= "DodgingDummy" and b.Name ~= "Defense:150 Dummy" and b.Name ~= "Hateball Defense Dummy" then
    if dead == #done then
		print(b)
local effects = game.Players.LocalPlayer.Character.Effects
local projectiles = game.Players.LocalPlayer.Character.Attacks
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
local detect
detect = rs.Heartbeat:Connect(function()
    if b.Humanoid.Health == 0 or sdis == false then
        table.insert(done, b.Name)
        print(b) --should print a player only once
        print("hi")
        looped = 0
        
        wait(0.5)
        
        detect:disconnect()
        else
            if looped == 0 then
        dead = dead + 1
        
looped = looped + 1
    
        end
v.Position = b.LockOn.Position
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = b.HumanoidRootPart.CFrame,
        [6] = b.HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end

end)

else
    local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

end
end
end
end
end
end
end
end

           
end
end
end
end)


--clearlag
game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(child)
    if child.Name == "CarrotHitEffect" then
        child:Destroy()
end

    end)

