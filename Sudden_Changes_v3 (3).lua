-- Sudden changes sans/frisk abomination

    local v1 = {
        [1] = getrenv()._G.Pass, 
        [2] = "Damage", 
        [3] = math.huge, 
        [4] = game.Players.LocalPlayer.Character
    }
    local event = game:GetService("ReplicatedStorage").Remotes.Events
    event:FireServer(v1)
wait(0.5)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "EquipWeapon", 
    [3] = "EmptyGun"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)
wait(0.2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "EquipArmor", 
    [3] = "TemmieArmor"
}
local Event = game:GetService("ReplicatedStorage").Remotes.FriskMoves
Event:InvokeServer(A_1)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'RightArmWeld' then
v:Destroy()
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'LeftArmWeld' then
v:Destroy()
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'RightLegWeld' then
v:Destroy()
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'LeftLegWeld' then
v:Destroy()
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'TorsoWeld' then
v:Destroy()
end
end
end)

-- Sudden Changes Gun UI

moves = game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower

local CAS = game:GetService("ContextActionService")
local FREEZE_COMMAND  = "CantAttack"
CAS:BindActionAtPriority(
	FREEZE_COMMAND,
	function() 
		return Enum.ContextActionResult.Sink
	end,
	false,
	Enum.ContextActionPriority.High.Value,
	Enum.KeyCode.E

)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players:GetDescendants()) do
if v.Name == 'SansIndicator' then
print("b")
newIndicator = v:Clone()
newIndicator.Parent = game.Players.LocalPlayer.PlayerGui
newIndicator.Indicator.Text = "Gun Enabled"
newIndicator.Indicator.TextStrokeColor3 = Color3.fromRGB(255, 0, 5)
wait()
newIndicator.Indicator2:Destroy()
newIndicator.Help:Destroy()
newIndicator.Help:Destroy()
end
end
end)

spawn(function()
game.Players.LocalPlayer.PlayerGui.WeaponSelector.Frame.ImageLabel:Destroy()
game.Players.LocalPlayer.PlayerGui.WeaponSelector.Frame.Weapons:Destroy()
game.Players.LocalPlayer.PlayerGui.WeaponSelector.Frame.Armor:Destroy()
game.Players.LocalPlayer.PlayerGui.WeaponSelector.Frame.ImageLabel:Destroy()
end)

spawn(function()
game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.Position = UDim2.new(0.73069042, 0, 0.71713078, 0)
game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.TextTransparency = 0
game.Players.LocalPlayer.PlayerGui.SansIndicator.Indicator.Size = UDim2.new(0.1384, 0, 0.0557, 0)
game.Players.LocalPlayer.PlayerGui.SansIndicator.Help:Destroy()
end)

moves.Moves7.Visible = true
moves.Moves7['2'].Position = UDim2.new(0.3, 0, 0, 0)
moves.Moves7['1'].Time.Value = 0.47
moves.Moves7['2'].Time.Value = 5.1
moves.Moves7['3'].Time.Value = 5
moves.Moves7['4'].Time.Value = 3
moves.Moves7['4'].Start.Value = true
activated1 = false
activated2 = false
activated3 = false
activated4 = false
wait()
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["One"] then
        if activated2 == false then
        if activated1 == false then
            activated1 = true
        print("activated")
moves.Moves7['1'].Activated.Value = true
wait(0.47)
moves.Moves7['1'].Activated.Value = false
activated1 = false
end
end
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Two"] then
        if activated2 == false then
            activated2 = true
        print("activated")
moves.Moves7['2'].Activated.Value = true
wait(5.11)
moves.Moves7['2'].Activated.Value = false
activated2 = false
end
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Three"] then
        if activated3 == false then
            activated3 = true
        print("activated")
moves.Moves7['3'].Activated.Value = true
wait(5.02)
moves.Moves7['3'].Activated.Value = false
activated3 = false
end
end
end)

spawn(function()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = [[Sudden Changes 
    Sans]]
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "1/1"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(185, 35, 35)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("CharaPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("CharaPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://5848113195"
music.Looped = true
music:Play()
end)

local Player = game.Players.LocalPlayer

Player.Chatted:Connect(function(Chat)
wait()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "Chatted", 
      [3] = (Chat), 
      [4] = Color3.fromRGB(225, 35, 35)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5941649105"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)

wait(1.5)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Seven"] then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "TakeStamina",
        [3] = 1750
    }
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
end
end)
three = false
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Three"] then
        if three == false then
        three = true
local player = game.Players.LocalPlayer
local char = player.Character
for _,v in pairs(game.workspace:GetChildren()) do

if v:FindFirstChildOfClass('Humanoid') then
if v:FindFirstChild('Torso') then
range = (char.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude
if range <15 and v.Name ~= player.Name then
print("debug23837")
spawn(function()
local A_1 = getrenv()._G.Pass
local A_2 = v
local A_3 =  {
      ["Type"] = "Knockback", 
      ['HitEffect'] = 'HeavyHitEffect',
      ["HitTime"] = 0.3, 
      ["Velocity"] = Vector3.new(0,25,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75,
      ["VictimCFrame"] = CFrame.new(), 
      ['CombatInv'] = true,
      ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
      ["Damage"] = 35
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end)
end
end
end
end

end
wait(5)
three = false
end
end)

usingGun = false
gunCD = 0.225
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["One"] then
        if usingGun == false then
        usingGun = true
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.3)
k:Stop()
end)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Light", 
	[4] = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -0.4, 0)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
wait(gunCD)
usingGun = false
end
end
end)

usingGun3 = false
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["C"] then
        if usingGun3 == false then
        usingGun3 = true
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.3)
k:Stop()
end)
spawn(function()
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Light", 
	[4] = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -0.4, 0)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end)
wait(0.15)
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.3)
k:Stop()
end)
spawn(function()
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Light", 
	[4] = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -0.4, 0)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end)
wait(0.15)
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
wait(0.3)
k:Stop()
end)
spawn(function()
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Light", 
	[4] = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -0.4, 0)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end)
wait(5)
usingGun3 = false
end
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Two"] then
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4807919857"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.2)
wait(1)
k:Stop()
end)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Heavy", 
	[4] = game.Players.LocalPlayer.Character['Right Arm'].CFrame * CFrame.new(0, -0.4, 0)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
wait(0.2)
end
end)

local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "ChangeSetting", 
    [3] = "CameraShake",
    [4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

wait(1)

repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 250
gunspam = false
moves.Moves7['4'].Start.Value = false

spawn(function()

char = game.Players.LocalPlayer.Character
spawn(function()
game.Players.LocalPlayer.Character.Head.Size = Vector3.new(7.10133,3.55066,3.55066)
end)
spawn(function()
repeat wait()
game.Players.LocalPlayer.Character.Torso.Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1
until invis == false
end)

end)

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("CharaPlaylist"):GetChildren()) do
v:Destroy()
end
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("CharaPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://5834899477"
music.Looped = true
music:Play()
music.TimePosition = 0.5

spawn(function()
game.Workspace.Gravity =  0
part = game.Players.LocalPlayer.Character['HumanoidRootPart']
part.CFrame = part.CFrame*CFrame.new(0,-8,0)
part.Anchored = true
game.Workspace.Gravity =  196.2
wait(10)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.CFrame = part.CFrame*CFrame.new(0,0.1,0)
wait(0.05)
part.Anchored = false
end)
four = false
gunCD = 0
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local toggle = false
mouse.KeyDown:Connect(function(key)
------------Testing purposes

if key == 'h' then
    if four == false then
        four = true
        gunspam = true
        spawn(function()
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4807919857"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1.5)
        wait(0.085)
        k:AdjustSpeed(0)
        repeat wait() until gunspam == false
        k:AdjustSpeed(1)
        end)
        moves.Moves7['4'].Start.Value = true
        
        while gunspam == true do
            wait()
spawn(function()
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "GunShot", 
	[3] = "Light", 
	[4] = CFrame.new(129.989273, 1.2130729, -202.595245, -0.0602697432, -0.988925219, -0.135623932, 0.0573129579, 0.132218376, -0.989562094, 0.996535182, -0.0674136207, 0.0487095565)
}
game:GetService("ReplicatedStorage").Remotes.FriskMoves:InvokeServer(A_1)
end)
end
end
---------
end
end)
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["J"] then
        if activated4 == false and gunspam == true then
        activated4 = true
gunspam = false
moves.Moves7['4'].Start.Value = false
moves.Moves7['4'].Activated.Value = true
wait(2.9)
moves.Moves7['4'].Activated.Value = false
activated4 = false
four = false
end
end
end)