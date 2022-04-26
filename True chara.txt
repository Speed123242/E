
local Player = game.Players.LocalPlayer
local Backpack = Player.Backpack
Player.Character.HateArm:Remove()
Player.Character.HeartLocket:Remove()

local Anim = Instance.new("Animation") Anim.AnimationId = "rbxassetid://4900761581" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim) k:Play() k:AdjustSpeed(2.5)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "66"
game:GetService("Players").LocalPlayer.PlayerGui.Moves1["2"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Moves1["3"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Moves1["4"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Moves1["5"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Moves1["6"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["2"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["3"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["4"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["5"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves2:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves3:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves4:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves5:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves6:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves7:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves8:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(255, 0, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 7
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://4630736961"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()
game.Players.LocalPlayer:WaitForChild("StarterPlaylist")
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1.5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://6233759084" 
Sound.Name = "Chara"

	 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4456890962"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4456894133"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4348287123"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5776258610"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4456901030"

player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Sounds['BattleStart']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

wait(0.13)
player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Sounds['BattleStart']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

wait(0.13)
player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Sounds['BattleEnd']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

	 local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

wait(0.6)
local A_1 = 
{   
    [1] = getrenv()._G.Pass,
    [2] = "Chatted", 
    [3] = "Greetings.", 
    [4] = Color3.new(255,0,0)
}   
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1) 	local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)
wait(2.8)
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "Chatted", 
    [3] = "I, am Chara.", 
    [4] = Color3.new(255,0,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1) 	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://3786720640"
   local playAnim = humanoid:LoadAnimation(anim)
   playAnim:Play()

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Resources.Sounds.Moves.PatienceAttack['Charge']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

wait(4)
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "Chatted", 
    [3] = "You know this by now, don't you?", 
    [4] = Color3.new(255,0,0)
}   playAnim:Stop()
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)  	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://3764516649"
   local playAnim = humanoid:LoadAnimation(anim)
   playAnim:Play()
wait(4)
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "Chatted", 
    [3] = "Of course, of course..", 
    [4] = Color3.new(255,0,0)
}   playAnim:Stop()
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)  	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://5941649105"
   local playAnim = humanoid:LoadAnimation(anim)
   playAnim:Play()
wait(2.8)
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "Chatted", 
    [3] = "let us finish sending this world back to which it came.", 
    [4] = Color3.new(255,0,0)
}    playAnim:Stop()
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)  local anim = Instance.new("Animation")
	
local Anim = Instance.new("Animation") Anim.AnimationId = "rbxassetid://4900761581" local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim) k:Play() k:AdjustSpeed(2.5)

player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2['Laugh']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2['Laugh']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

player = game.Players.LocalPlayer
char = player.Character
     targeet = ''
      sound = game:GetService("ReplicatedStorage").Sounds.Knife_Slash2
for count = 1,1,1 do
spawn(function()
targeet = player.Name
sound =  game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2['Laugh']
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = sound, 
      [4] = game:GetService("Workspace")[player.Name].Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end

--Music
	for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
	music.Volume = 1.3
	music.SoundId = "rbxassetid://988880897"
	music.Looped = true
	music:Play()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeHeal", 
    [3] = CFrame.new(-270.378937, 0.400000095, -460.118408, 0.989153445, -9.16554418e-05, 0.146885753, 3.39344697e-05, 0.99999994, 0.000395471056, -0.146885753, -0.000386197091, 0.989153445)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

game:GetService("UserInputService").InputBegan:connect(function(key,gp)
    if key.KeyCode == Enum.KeyCode.V and not gp then
     local KG = Instance.new("Sound", game.Players.LocalPlayer.Character)

KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
KG.Volume = 3
KG.SoundId = "rbxassetid://3768967864"
KG.Looped = false
KG:Play()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 1 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 2 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 3 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 5 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 16 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 4 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 28 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 6 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 11 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File 19 Loaded!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed()

end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then

	CV="Eggplant"
	p = game.Players.LocalPlayer
	char = p.Character
	local txt = Instance.new("BillboardGui", char)
	txt.Adornee = char .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-19, 8, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Arcade"
	text.TextStrokeColor3 = Color3.new(0,0,0)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=p.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=char.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(-255, 132, 0)
	v.Shape="Block"
	wait()
	text.Text = "65"
	wait(1)
	text.Text = "64"
	wait(1)
	text.Text = "63"
	wait(1)
	text.Text = "62"
	wait(1)
	text.Text = "61"
	wait(1)
	text.Text = "60"
	wait(1)
	text.Text = "59"
	wait(1)
	text.Text = "58"
	wait(1)
	text.Text = "57"
	wait(1)
	text.Text = "56"
	wait(1)
	text.Text = "55"
	wait(1)
	text.Text = "54"
	wait(1)
	text.Text = "53"
	wait(1)
	text.Text = "52"
	wait(1)
	text.Text = "51"
	wait(1)
	text.Text = "50"
	wait(1)
	text.Text = "49"
	wait(1)
	text.Text = "48"
	wait(1)
	text.Text = "47"
	wait(1)
	text.Text = "46"
	wait(1)
	text.Text = "45"
	wait(1)
	text.Text = "44"
	wait(1)
	text.Text = "43"
	wait(1)
	text.Text = "42"
	wait(1)
	text.Text = "41"
	wait(1)
	text.Text = "40"
	wait(1)
	text.Text = "39"
	wait(1)
	text.Text = "38"
	wait(1)
	text.Text = "37"
	wait(1)
	text.Text = "36"
	wait(1)
	text.Text = "35"
	wait(1)
	text.Text = "34"
	wait(1)
	text.Text = "33"
	wait(1)
	text.Text = "32"
	wait(1)
	text.Text = "31"
	wait(1)
	text.Text = "30"
	wait(1)
	text.Text = "29"
	wait(1)
	text.Text = "28"
	wait(1)
	text.Text = "27"
	wait(1)
	text.Text = "26"
	wait(1)
	text.Text = "25"
	wait(1)
	text.Text = "24"
	wait(1)
	text.Text = "23"
	wait(1)
	text.Text = "22"
	wait(1)
	text.Text = "21"
	wait(1)
	text.Text = "20"
	wait(1)
	text.Text = "19"
	wait(1)
	text.Text = "18"
	wait(1)
	text.Text = "17"
	wait(1)
	text.Text = "16"
	wait(1)
	text.Text = "15"
	wait(1)
	text.Text = "14"
	wait(1)
	text.Text = "13"
	wait(1)
	text.Text = "12"
	wait(1)
	text.Text = "11"
	wait(1)
	text.Text = "10"
	wait(1)
	text.Text = "9"
	wait(1)
	text.Text = "8"
	wait(1)
	text.Text = "7"
	wait(1)
	text.Text = "6"
	wait(1)
	text.Text = "5"
	wait(1)
	text.Text = "4"
	wait(1)
	text.Text = "3"
	wait(1)
	text.Text = "2"
	wait(1)
	text.Text = "1"
	wait(1)
	text.Text = "--"


end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileDarkRed", 
	[3] = "Spawn", 
	[4] = Vector3.new(-27.4101448, 0.400001317, -197.415451)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileDarkRed", 
	[3] = "Spawn", 
	[4] = Vector3.new(-27.4101448, 0.400001317, -197.415451)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileDarkRed", 
	[3] = "Spawn", 
	[4] = Vector3.new(-27.4101448, 0.400001317, -197.415451)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "KnifeProjectileDarkRed", 
	[3] = "Spawn", 
	[4] = Vector3.new(-27.4101448, 0.400001317, -197.415451)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "f" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "DTShield", 
    [3] = CFrame.new(-270.378937, 0.400000095, -460.118408, 0.989153445, -9.16554418e-05, 0.146885753, 3.39344697e-05, 0.99999994, 0.000395471056, -0.146885753, -0.000386197091, 0.989153445)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
wait(2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
wait(2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
wait(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
wait(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(90,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "h" then
wait(0.30)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "h" then
wait(0.30)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "AreaAttack", 
    [3] = "Start",
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "MY WORLD: Area Implode", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then

	CV="Eggplant"
	p = game.Players.LocalPlayer
	char = p.Character
	local txt = Instance.new("BillboardGui", char)
	txt.Adornee = char .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-19, 9.7, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Arcade"
	text.TextStrokeColor3 = Color3.new(255,0,0)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=p.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=char.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(0.55,0.00,0.00)
	v.Shape="Block"
	wait()
	text.Text = "60"
	wait(1)
	text.Text = "59"
	wait(1)
	text.Text = "58"
	wait(1)
	text.Text = "57"
	wait(1)
	text.Text = "56"
	wait(1)
	text.Text = "55"
	wait(1)
	text.Text = "54"
	wait(1)
	text.Text = "53"
	wait(1)
	text.Text = "52"
	wait(1)
	text.Text = "51"
	wait(1)
	text.Text = "50"
	wait(1)
	text.Text = "49"
	wait(1)
	text.Text = "48"
	wait(1)
	text.Text = "47"
	wait(1)
	text.Text = "46"
	wait(1)
	text.Text = "45"
	wait(1)
	text.Text = "44"
	wait(1)
	text.Text = "43"
	wait(1)
	text.Text = "42"
	wait(1)
	text.Text = "41"
	wait(1)
	text.Text = "40"
	wait(1)
	text.Text = "39"
	wait(1)
	text.Text = "38"
	wait(1)
	text.Text = "37"
	wait(1)
	text.Text = "36"
	wait(1)
	text.Text = "35"
	wait(1)
	text.Text = "34"
	wait(1)
	text.Text = "33"
	wait(1)
	text.Text = "32"
	wait(1)
	text.Text = "31"
	wait(1)
	text.Text = "30"
	wait(1)
	text.Text = "29"
	wait(1)
	text.Text = "28"
	wait(1)
	text.Text = "27"
	wait(1)
	text.Text = "26"
	wait(1)
	text.Text = "25"
	wait(1)
	text.Text = "24"
	wait(1)
	text.Text = "23"
	wait(1)
	text.Text = "22"
	wait(1)
	text.Text = "21"
	wait(1)
	text.Text = "20"
	wait(1)
	text.Text = "19"
	wait(1)
	text.Text = "18"
	wait(1)
	text.Text = "17"
	wait(1)
	text.Text = "16"
	wait(1)
	text.Text = "15"
	wait(1)
	text.Text = "14"
	wait(1)
	text.Text = "13"
	wait(1)
	text.Text = "12"
	wait(1)
	text.Text = "11"
	wait(1)
	text.Text = "10"
	wait(1)
	text.Text = "9"
	wait(1)
	text.Text = "8"
	wait(1)
	text.Text = "7"
	wait(1)
	text.Text = "6"
	wait(1)
	text.Text = "5"
	wait(1)
	text.Text = "4"
	wait(1)
	text.Text = "3"
	wait(1)
	text.Text = "2"
	wait(1)
	text.Text = "1"
	wait(1)
	text.Text = "--"

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Hm.", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4064726792"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.75)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 1, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
wait(2.5)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Dissapointing.", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4531780023"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.15)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "LightHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(0, 1, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
wait(5)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "I expected more.", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4057804140"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 1.8,
				["Type"] = "Knockback",
				["HitEffect"] = "LightHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.SpGrab,
				["Velocity"] = Vector3.new(-70, 0, -70),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping,
				["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "t" then
wait(5.5)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(3)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(5)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(5)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(6)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "1" then
wait(6)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "e" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "e" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "f" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "f" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "n" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "n" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "h" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "RedMode"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "h" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeColor",
        [3] = "ChangeColor",
        [4] = Color3.fromRGB(86,0,0),
        [5] = 0,
        [6] = "SpecialHell"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
wait(math.huge)
k:Stop()
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "q" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "SINCE WHEN WERE YOU THE ONE IN CONTROL?", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4063346980"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.57)
local args = {
    [1] =  getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(1.3049358129501, 0.40000003576279, -274.62911987305), Vector3.new(-0.019662326201797, -0, 0.99980670213699)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Laugh,
        ["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "q" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "SINCE WHEN WERE YOU THE ONE IN CONTROL?", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4063346980"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.57)
local args = {
    [1] =  getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(1.3049358129501, 0.40000003576279, -274.62911987305), Vector3.new(-0.019662326201797, -0, 0.99980670213699)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Laugh,
        ["Damage"] = 0
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "q" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "SINCE WHEN WERE YOU THE ONE IN CONTROL?", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4063346980"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.57)
local args = {
    [1] =  getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(1.3049358129501, 0.40000003576279, -274.62911987305), Vector3.new(-0.019662326201797, -0, 0.99980670213699)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Laugh,
        ["Damage"] = 0
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)


AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.4)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        ["Damage"] = 9
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
game.Players:Chat(("=)"))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
        ["Damage"] = 16
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
 	["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Charge,
        ["Damage"] = 7
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Charge,
        ["Damage"] = 4
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 15
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
        ["Damage"] = 11
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Knockback",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 19
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

AnimationId = '0'
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "q" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
wait(2)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348323561"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 10
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "",
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348788816"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1.5)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 0.75,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 100, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 6
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(0.5)
k:Stop()
wait(0.5)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 0.75,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 100, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
				["Damage"] = 6
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 0.75,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 100, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
				["Damage"] = 6
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "g" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 0.75,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(0, 100, 0),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
				["Damage"] = 6
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local m = game.Players.LocalPlayer:GetMouse()
db = true
m.keyDown:connect(function(k)
	k = k:lower()
	if k == "x" then
		if db == true then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "=)", 
	[3] = "Chatted", 
	[4] = Color3.new(255,0,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait (0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Velocity"] = Vector3.new(0, -1, 0),
	["Damage"] = 5
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 4
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3

}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal",  
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Velocity"] = Vector3.new(0, -1, 0),
	["Damage"] = 3.2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect22",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect", 
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 4
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash, 
	["Velocity"] = Vector3.new(0, -1, 0),
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 2.5, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2, 
	["Damage"] = 2
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
{
	["HitTime"] = 0.80, 
	["Type"] = "Knockback", 
	["HitEffect"] = "KnifeHitEffect",  
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.HateExplosion, 
	["Velocity"] = Vector3.new(0, 0, 30),
	["Damage"] = 3
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
			db = false
			wait(0.5)
			db = true
		end
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "=)", 
				[3] =  "Chatted",
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4905914802"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(0.44)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 3.8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(4)
k:Stop()
wait(4)

end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
		wait(0.5)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "KnifeHitEffect",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
				["Damage"] = 3
			}
		}
		game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
		wait(4)
		k:Stop()
	end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "=)", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local args = {
			[1] = getrenv()._G.Pass,
			[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			[3] = {
				["HitTime"] = 2.5,
				["Type"] = "Normal",
				["HitEffect"] = "",
				["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
				["Velocity"] = Vector3.new(5, 0, 5),
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Hit,
				["Damage"] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
wait(1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4800633936"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
local args = {
    [1] =  getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(1.3049358129501, 0.40000003576279, -274.62911987305), Vector3.new(-0.019662326201797, -0, 0.99980670213699)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
        ["Velocity"] = Vector3.new(0, -6, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 3
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
wait(1.4)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3756843230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
        ["Velocity"] = Vector3.new(0, -10, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
wait(1.8)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3756843230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
        ["Velocity"] = Vector3.new(0, -10, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
wait(2.3)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3756843230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
        ["Velocity"] = Vector3.new(0, -10, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
wait(2.7)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://3756843230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.2)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt,
        ["Velocity"] = Vector3.new(0, -10, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit2,
        ["Damage"] = 5
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
wait(3.3)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4348788816"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 0.75,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GroundHurt, 
        ["Velocity"] = Vector3.new(0, 40, 0),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 4
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "e" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "", 
				[3] = "", 
				[4] = Color3.new(255,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4348323561"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1.1)
local args = {
    [1] =  getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2.5,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(1.3049358129501, 0.40000003576279, -274.62911987305), Vector3.new(-0.019662326201797, -0, 0.99980670213699)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knife_Slash,
        ["Damage"] = 6
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "e" then
wait(0.65)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300200684"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 1.8,
        ["Type"] = "Knockback",
        ["HitEffect"] = "LightHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
        ["Velocity"] = Vector3.new(0, -1, 70),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Break,
        ["Damage"] = 8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "e" then
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeSpecial3"
}
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4300200684"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
local args = {
    [1] = getrenv()._G.Pass,
    [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
    [3] = {
        ["HitTime"] = 2,
        ["Type"] = "Normal",
        ["HitEffect"] = "KnifeHitEffect",
        ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
        ["Velocity"] = Vector3.new(0, 0, -1),
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 8
    }
}

game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
wait(1)
k:Stop()
end
end)

wait(2)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then	

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("DeathPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
	music.Volume = 5
	music.SoundId = "rbxassetid://320355925"
	music.Looped = true
	music:Play()

end
end)

k:Stop()
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "I see.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4458837452"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.80)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(4)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "I see now.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.8)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then 
wait(8)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "I see that you may pose a threat to our plan.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.8)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(12)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Interesting... TRUELY, interesting.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(17)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Now.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end) 

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(16)	
for i,v in pairs(game.Players.LocalPlayer:WaitForChild("DeathPlaylist"):GetChildren()) do
		v:Destroy()
	end
	local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("DeathPlaylist"))
	music.Volume = 3.4
	music.SoundId = "rbxassetid://5997030540"
	music.Looped = true
	music:Play()

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(21)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "I feel obligated to suggest.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(26)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Should you choose to create this world once more.", 
				[4] = Color3.new(255, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(30)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "Another path would be better suited.", 
				[4] = Color3.new(0, 0, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(30)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpecialHell2", 
	[3] = "Spawn", 
	[4] = Vector3.new(-27.4101448, 0.400001317, -197.415451)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local security = game.ReplicatedStorage.RemoteSecurity["Noob382"]
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(35)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "File Restored!", 
				[4] = Color3.new(255, 255, 0),
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://4900761581"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2.5)

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(35)
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeHeal", 
    [3] = CFrame.new(-270.378937, 0.400000095, -460.118408, 0.989153445, -9.16554418e-05, 0.146885753, 3.39344697e-05, 0.99999994, 0.000395471056, -0.146885753, -0.000386197091, 0.989153445)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
end)


local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "m" then
wait(35)

	CV="Eggplant"
	p = game.Players.LocalPlayer
	char = p.Character
	local txt = Instance.new("BillboardGui", char)
	txt.Adornee = char .Head
	txt.Name = "_status"
	txt.Size = UDim2.new(2, 0, 1.2, 0)
	txt.StudsOffset = Vector3.new(-19, 8, 0)
	local text = Instance.new("TextLabel", txt)
	text.Size = UDim2.new(10, 0, 7, 0)
	text.FontSize = "Size24"
	text.TextScaled = true
	text.TextTransparency = 0
	text.BackgroundTransparency = 1 
	text.TextTransparency = 0
	text.TextStrokeTransparency = 0
	text.Font = "Arcade"
	text.TextStrokeColor3 = Color3.new(0,0,0)

	v=Instance.new("Part")
	v.Name = "ColorBrick"
	v.Parent=p.Character
	v.FormFactor="Symmetric"
	v.Anchored=true
	v.CanCollide=false
	v.BottomSurface="Smooth"
	v.TopSurface="Smooth"
	v.Size=Vector3.new(10,5,3)
	v.Transparency=1
	v.CFrame=char.Torso.CFrame
	v.BrickColor=BrickColor.new(CV)
	v.Transparency=1
	text.TextColor3 = Color3.new(-255, 132, 0)
	v.Shape="Block"
	wait()
	text.Text = "65"
	wait(1)
	text.Text = "64"
	wait(1)
	text.Text = "63"
	wait(1)
	text.Text = "62"
	wait(1)
	text.Text = "61"
	wait(1)
	text.Text = "60"
	wait(1)
	text.Text = "59"
	wait(1)
	text.Text = "58"
	wait(1)
	text.Text = "57"
	wait(1)
	text.Text = "56"
	wait(1)
	text.Text = "55"
	wait(1)
	text.Text = "54"
	wait(1)
	text.Text = "53"
	wait(1)
	text.Text = "52"
	wait(1)
	text.Text = "51"
	wait(1)
	text.Text = "50"
	wait(1)
	text.Text = "49"
	wait(1)
	text.Text = "48"
	wait(1)
	text.Text = "47"
	wait(1)
	text.Text = "46"
	wait(1)
	text.Text = "45"
	wait(1)
	text.Text = "44"
	wait(1)
	text.Text = "43"
	wait(1)
	text.Text = "42"
	wait(1)
	text.Text = "41"
	wait(1)
	text.Text = "40"
	wait(1)
	text.Text = "39"
	wait(1)
	text.Text = "38"
	wait(1)
	text.Text = "37"
	wait(1)
	text.Text = "36"
	wait(1)
	text.Text = "35"
	wait(1)
	text.Text = "34"
	wait(1)
	text.Text = "33"
	wait(1)
	text.Text = "32"
	wait(1)
	text.Text = "31"
	wait(1)
	text.Text = "30"
	wait(1)
	text.Text = "29"
	wait(1)
	text.Text = "28"
	wait(1)
	text.Text = "27"
	wait(1)
	text.Text = "26"
	wait(1)
	text.Text = "25"
	wait(1)
	text.Text = "24"
	wait(1)
	text.Text = "23"
	wait(1)
	text.Text = "22"
	wait(1)
	text.Text = "21"
	wait(1)
	text.Text = "20"
	wait(1)
	text.Text = "19"
	wait(1)
	text.Text = "18"
	wait(1)
	text.Text = "17"
	wait(1)
	text.Text = "16"
	wait(1)
	text.Text = "15"
	wait(1)
	text.Text = "14"
	wait(1)
	text.Text = "13"
	wait(1)
	text.Text = "12"
	wait(1)
	text.Text = "11"
	wait(1)
	text.Text = "10"
	wait(1)
	text.Text = "9"
	wait(1)
	text.Text = "8"
	wait(1)
	text.Text = "7"
	wait(1)
	text.Text = "6"
	wait(1)
	text.Text = "5"
	wait(1)
	text.Text = "4"
	wait(1)
	text.Text = "3"
	wait(1)
	text.Text = "2"
	wait(1)
	text.Text = "1"
	wait(1)
	text.Text = "--"

end
end)