game.Players:Chat("-gh 5644793174,4315489767,4794315940,4506945409,4458601937,4820152700,4524991457") 
wait(0.1)


loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

Workspace.non.MeshPartAccessory.Name = "Sword1"
Workspace.non.MeshPartAccessory.Name = "Sword2"
Workspace.non.MeshPartAccessory.Name = "Sword3"
Workspace.non.MeshPartAccessory.Name = "Sword4"

Workspace.non.ShadowBladeMasterAccessory.Name = "Blade1D"
Workspace.non.BladeMasterAccessory.Name = "Blade2L"

warn([[Galaxy Glitcher Loaded.
The third glitcher, once as the core is now new.

Created by Tc and Converted By Emper wowowow.
]])

---------Wielder list as of OCs:---------
-- ??? (Nothing such as this yet, but wields all the Glitchers. What you're asking it's the creator.)
-- Void Emily (OC of mine, can lead to any modes and mainly leading to LOVE and HARMONY, she's obviously shy sometimes.)
-- Lunaria Floodio (Second OC, can lead to any modes.)
-- Gacharix (Third OC, can lead to any modes and mainly leading to AZURE X, very corrupted person.)
-----------------------------------------

print([[Icons:
! = New
? = Spoilers
* = Exclusivity
C = Changes

]])
warn([[V 3.2 Update Log:
C - Huge revamp of wings.
C - Walk and running are now tiltable on where you go on a side.
C - Huge slight changes on all of the mode's idles.
C - Even more effect changes.
!C* - Love mode has been added.
!C* - Love mode's transformation added..
!* - Love mode's taunt added... (why.. ;~;)
C - Death effect has been improved.
C - Binary's Z is imporvably changed
? - Nothing seems to be new yet..
? - Some modes will have moves sooner.

Commands for visualiser mode: play/, vol/, pitch/, skipto/, telltime/]])
---- IMPORTANT READING:
---- Sources and functions might be taken from others
plr = game.Players.LocalPlayer

script.Parent = workspace.CurrentCamera
plr.CharacterAdded:connect(function()
	script.Disabled = true
	script:destroy()	
end)

char = plr.Character
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
Camera = cam
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new


local Booleans = {
  CamFollow = true,
  GyroUse = true
}

function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end

local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1

local rainbowmode = false
local chaosmode = false
local duringend = false
local ModeOfGlitch = 1

local kan = Instance.new("Sound",char)
kan.Volume = 1.25
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1.01
kan.SoundId = "rbxassetid://435773595"
kan.Name = "wreckeda"
kan.Looped = true
kan:Play()

local currentThemePlaying = kan.SoundId
local currentPitch = kan.Pitch
local currentVol = kan.Volume
function newTheme(ID,timepos,pitch,vol)
local kanz = kan
--kanz:Stop()
kanz.Volume = vol
--kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
--kanz:Play()
--coroutine.resume(coroutine.create(function()
--wait(0.05)
--end))
end


function newThemeCust(ID,timepos,pitch,vol)
local kanz = kan
kanz:Stop()
kanz.Volume = vol
kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
kanz:Play()
coroutine.resume(coroutine.create(function()
wait(0.05)
end))
end

local mutedtog = false

function CameraEnshaking(Length,Intensity)
coroutine.resume(coroutine.create(function()
      local intensity = 1*Intensity
      local rotM = 0.01*Intensity
for i = 0, Length, 0.1 do
swait()
intensity = intensity - 0.05*Intensity/Length
rotM = rotM - 0.0005*Intensity/Length
      hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
      cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
end
Humanoid.CameraOffset = Vec3(0, 0, 0)
end))
end
CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Noob)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
CameraShake(Times, Power, Noob)
end
end
end
end
end
end

local toggleTag = true
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.Font = "Code"
modet.TextStrokeColor3 = Color3.new(0,0,0)
modet.TextColor3 = Color3.new(1,1,1)
modet.Text = "Lightning"


function chatfunc(text,color,typet,font,timeex)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
modet.TextTransparency = modet.TextTransparency  + 1
modet.TextStrokeTransparency = modet.TextStrokeTransparency + 1
for i = 0, 74*timeex do
swait()
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
if toggleTag == false then
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end


local Create = loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Cool yellow")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local maincolor = BrickColor.new("Really black")
local m = Instance.new("Model",char)
local m2 = Instance.new("Model",char)
local m3 = Instance.new("Model",char)
local mw1 = Instance.new("Model",char)
local mw2 = Instance.new("Model",char)


gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
---- GUI set
local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "Killcounter GUI"
local basframe = it("Frame")
basframe.Parent = basgui
basframe.BackgroundColor3 = Color3.new(255, 255, 255)
basframe.BackgroundTransparency = 1
basframe.BorderColor3 = Color3.new(17, 17, 17)
basframe.Size = UDim2.new(0.2, 0, 0.2, 0)
basframe.Position = UDim2.new(0.8, 0, 0.8, 0)
local uhh = gui("TextLabel", basframe, "Basic", 0.5, BrickColor.new("Really black").Color, UDim2.new(-0.5, 0, 0.45, 0), UDim2.new(1.5, 0, 0.55, 0))
uhh.ZIndex = 2
uhh.Font = "Bodoni"
uhh.TextStrokeColor3 = Color3.new(0.05,0.05,0.05)
uhh.TextColor3 = Color3.new(1,1,1)
uhh.BackgroundTransparency = 0.25
uhh.BorderSizePixel = 2
uhh.BorderColor3 = Color3.new(0,0,0)
uhh.TextScaled = true
uhh.TextXAlignment = "Left"
uhh.Text = "SWITCH MODE: 1-9"
uhh.TextSize = 64
local modeteller = gui("TextLabel", basframe, "Basic", 0.5, BrickColor.new("Really black").Color, UDim2.new(-0, 0, -0.01, 0), UDim2.new(1, 0, 0.45, 0))
modeteller.ZIndex = 2
modeteller.Font = "Bodoni"
modeteller.TextStrokeColor3 = Color3.new(0.05,0.05,0.05)
modeteller.TextColor3 = Color3.new(1,1,1)
modeteller.BackgroundTransparency = 0.25
modeteller.BorderSizePixel = 2
modeteller.BorderColor3 = Color3.new(0,0,0)
modeteller.TextScaled = true
modeteller.TextXAlignment = "Right"
modeteller.Text = "MAYHEM"
modeteller.TextSize = 64

local extrawingmod1 = Instance.new("Model",char)
local extrawingmod2 = Instance.new("Model",char)

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


--------------
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,rarm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,larm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,tors,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local valuaring = 10

local refec = Instance.new("ParticleEmitter",handlex)
refec.Texture = "rbxassetid://284205403"
refec.LightEmission = 0.95
refec.Color = ColorSequence.new(BrickColor.new("White").Color)
refec.Rate = 50
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)
local refec2 = refec:Clone()
refec2.LightEmission = 0.75
refec2.Texture = "rbxassetid://254287058"
refec2.Parent = handlex
refec2.Rate = 25
refec2.Lifetime = NumberRange.new(0.75)
refec2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5,0),NumberSequenceKeypoint.new(0.15,1,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.65,0),NumberSequenceKeypoint.new(1,1,0)})
refec2.Speed = NumberRange.new(0)
local refec3 = refec:Clone()
refec3.LightEmission = 0.75
refec3.Texture = "rbxassetid://363275192"
refec3.Parent = handlex
refec3.Rate = 25
refec3.Lifetime = NumberRange.new(1)
refec3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.65,0),NumberSequenceKeypoint.new(1,1,0)})
refec3.Speed = NumberRange.new(0)
refec3.RotSpeed = NumberRange.new(-50,50)

for i = 0, 35 do
	valuaring = valuaring + 10
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Wedge",0.1,0.5,0.1)
CreateWeld(rn,handlex,rn,0,0.75,0,math.rad(0),math.rad(-90),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Wedge",0.1,0.5,0.1)
CreateWeld(rn,handlex,rn,0,0.75,0,math.rad(0),math.rad(90),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Wedge",0.1,0.2,0.05)
CreateWeld(rn,handlex,rn,0,-1.1,0.025,math.rad(0),math.rad(-90),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
rn = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(rn,"Wedge",0.1,0.2,0.05)
CreateWeld(rn,handlex,rn,0,-1.1,0.025,math.rad(0),math.rad(90),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end


local handle = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- Left wing.

local lwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,lwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,lwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,lwing1,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,lwing1,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))


local lwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,lwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,lwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,lwing2,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,lwing2,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,lwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,lwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,lwing3,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,lwing3,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local lwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

-- Right wing.

local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing1,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing1,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing2 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing2,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing2,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing3 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))


wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing3,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing3,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))


local rwing4 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing5 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing6 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",halocolor)
CreateMesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
--WINGS ARE HERE 

game:GetService("Workspace").non.Model.Name = "Wing Handle"
game:GetService("Workspace").non.Model.Name = "Useless"
game:GetService("Workspace").non.Model.Name = "Useless"
game:GetService("Workspace").non.Model.Name = "Left Wings"
game:GetService("Workspace").non.Model.Name = "Right Wings And Ring"


game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "RingH"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle1"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle2"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle2U"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle3B"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Useless"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle5"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle4"
game:GetService("Workspace").non["Wing Handle"].Part.Name = "Handle6B"
--wow ring!!1!!
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Blade1D"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle6B -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),-5.5) -- Angles


local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Moon Aura"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Right Wings And Ring"].RingH -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(0),0) -- Angles


game:GetService("Workspace").non["Right Wings And Ring"].Part.Name = "Ring"
--path   game:GetService("Workspace").non["Wing Handle"].Handle1

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword1"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle1 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(-2.95,2.75,0)*CFrame.Angles(math.rad(0),math.rad(0),80) -- Angles



local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword2"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle2 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-2.50,0)*CFrame.Angles(math.rad(0),math.rad(0),19.70) -- Angles




local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Blade2L"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle3B -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),-5.3) -- Angles



local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword4"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle5 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-2.50,0)*CFrame.Angles(math.rad(0),math.rad(0),19.70) -- Angles


local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword3"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non["Wing Handle"].Handle4 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,-1.90,0)*CFrame.Angles(math.rad(0),math.rad(0),76.10) -- Angles
---- HERES THE RING


--[[ran = CreateParta(m2,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,larm,ran,0,0.15,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,larm,ran,0,0.155,0,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,larm,ran,0,0.155,-0.025,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,larm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,larm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,larm,star,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,larm,starl,0,0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- second ring

ran = CreateParta(m2,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.02,1.02,1.02)
CreateWeld(ran,rarm,ran,0,0.15,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",0.9,0.9,1.025)
CreateWeld(ran,rarm,ran,0,0.155,0,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
ran = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(ran,"Wedge",1.025,0.9,0.9)
CreateWeld(ran,rarm,ran,0,0.155,-0.025,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateMesh(gan,"Brick",1.075,0.1,1.075)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gan = CreateParta(m2,0,0,"Neon",halocolor2)
CreateMesh(gan,"Brick",1.095,0.035,1.095)
CreateWeld(gan,rarm,gan,0,0.75,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

gane = CreateParta(m3,0,0,"SmoothPlastic",lunacolor2)
CreateMesh(gane,"Brick",1.0625,0.2,1.0625)
CreateWeld(gane,rarm,gane,0,0.6,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

star = CreateParta(m,0,0,"SmoothPlastic",wepcolor)
CreateSpecialMesh(star,"http://www.roblox.com/asset/?id=45428961",2.5,2.5,2.5)
CreateWeld(star,rarm,star,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
starl = CreateParta(m3,0,0,"SmoothPlastic",starcolor)
CreateSpecialMesh(starl,"http://www.roblox.com/asset/?id=45428961",1.95,2.55,1.95)
CreateWeld(starl,rarm,starl,0,-0.475,0.6,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))]]--

------------- Trails
local A0 = Instance.new("Attachment",lwing1)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",lwing1)
A1.Position = Vector3.new(0,-3.5,0)
tl1 = Instance.new('Trail',lwing1)
tl1.Attachment0 = A0
tl1.Attachment1 = A1
tl1.Texture = "http://www.roblox.com/asset/?id=1049219073"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('White').Color)
tl1.Lifetime = 0.6

local A0 = Instance.new("Attachment",lwing2)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",lwing2)
A1.Position = Vector3.new(0,-3.5,0)
tl2 = Instance.new('Trail',lwing2)
tl2.Attachment0 = A0
tl2.Attachment1 = A1
tl2.Texture = "http://www.roblox.com/asset/?id=1049219073"
tl2.LightEmission = 1
tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl2.Color = ColorSequence.new(BrickColor.new('White').Color)
tl2.Lifetime = 0.6

local A0 = Instance.new("Attachment",lwing3)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",lwing3)
A1.Position = Vector3.new(0,-3.5,0)
tl3 = Instance.new('Trail',lwing3)
tl3.Attachment0 = A0
tl3.Attachment1 = A1
tl3.Texture = "http://www.roblox.com/asset/?id=1049219073"
tl3.LightEmission = 1
tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl3.Color = ColorSequence.new(BrickColor.new('White').Color)
tl3.Lifetime = 0.6

local A0 = Instance.new("Attachment",rwing1)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",rwing1)
A1.Position = Vector3.new(0,-3.5,0)
tr1 = Instance.new('Trail',rwing1)
tr1.Attachment0 = A0
tr1.Attachment1 = A1
tr1.Texture = "http://www.roblox.com/asset/?id=1049219073"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('White').Color)
tr1.Lifetime = 0.6

local A0 = Instance.new("Attachment",rwing2)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",rwing2)
A1.Position = Vector3.new(0,-3.5,0)
tr2 = Instance.new('Trail',rwing2)
tr2.Attachment0 = A0
tr2.Attachment1 = A1
tr2.Texture = "http://www.roblox.com/asset/?id=1049219073"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('White').Color)
tr2.Lifetime = 0.6

local A0 = Instance.new("Attachment",rwing3)
A0.Position = Vector3.new(0,-0.7,0)
local A1 = Instance.new("Attachment",rwing3)
A1.Position = Vector3.new(0,-3.5,0)
tr3 = Instance.new('Trail',rwing3)
tr3.Attachment0 = A0
tr3.Attachment1 = A1
tr3.Texture = "http://www.roblox.com/asset/?id=1049219073"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('White').Color)
tr3.Lifetime = 0.6
--------------

for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
local MAINRUINCOLOR = BrickColor.new("White")
------


function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end

Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1
player=nil 

function RecolorTextAndRename(name,col1,col2,font)
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
modet.Font = font
modet.Text = name
end
mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=0
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end

-------- RAINBOW LEAVE IT TO ME
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
while wait() do
	for i = 0, 254/5 do
		swait()
		g = g + 5
	end
	for i = 0, 254/5 do
		swait()
		r = r - 5
	end
	for i = 0, 254/5 do
		swait()
		b = b + 5
	end
	for i = 0, 254/5 do
		swait()
		g = g - 5
	end
	for i = 0, 254/5 do
		swait()
		r = r + 5
	end
	for i = 0, 254/5 do
		swait()
		b = b - 5
	end
end
end))
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:service("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
    end
    local Damage = nil
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Head
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Leech" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
        Humanoid.Health = Humanoid.Health + 10
      end
    elseif Type == "UpKnock" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(5)
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Spike" then
      CreateBigIceSword(hit.Parent.Torso.CFrame)
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
	MagicBlock(BrickColor.new("Pastel light blue"),head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.

----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end


function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
if ModeOfGlitch ~= 9 then
        rng.BrickColor = color
elseif ModeOfGlitch == 9 then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
end
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 1
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if ModeOfGlitch == 9 then
coroutine.resume(coroutine.create(function()
while true do
swait()
if rng.Parent ~= nil then
rng.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
else
break
end
end
end))
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency - 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function dmg(dude)
if dude.Name ~= Character then
local keptcolor = MAINRUINCOLOR
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
--[[local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"]]--
local ds = coroutine.wrap(function()
dude:WaitForChild("Head"):BreakJoints()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Name = "DEMINISHED"
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.75, 0.285)
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
v:Destroy()
end
if v:IsA("Humanoid") then
v:Destroy()
end
if v:IsA("CharacterMesh") then
v:Destroy()
end
if v:IsA("Model") then
v:Destroy()
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
o:Destroy()
end
end
coroutine.resume(coroutine.create(function()
v.Material = "Neon"
v.CanCollide = false
v.Anchored = false
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 0.75
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(keptcolor.Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
        local sbs = Instance.new("BodyPosition", v)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
        sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2))
v.Color = keptcolor.Color
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait(1)
v:BreakJoints()
v.Transparency = v.Transparency + 0.02
end
v:BreakJoints()
sphere2(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,keptcolor)
CFuncs["Sound"].Create("rbxassetid://1192402877", v, 0.5, 0.75)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
wait(8)
v:Destroy()
dude:Destroy()
end))
end))
end
end
end))
end)
ds()
end
end


function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function FaceMouse()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

function FaceMouse2()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

-- Functions are ready.
local storehumanoidWS = 16

function resetmode()
           ModeOfGlitch = 1
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Mayhem",Color3.new(255,1,1),Color3.new(196,0,0),"Code")
newTheme("rbxassetid://614032233",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Really red")
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
refec.Color = ColorSequence.new(MAINRUINCOLOR.Color)
refec2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
refec3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tr1.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tr2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tr3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl1.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl2.Color = ColorSequence.new(MAINRUINCOLOR.Color)
tl3.Color = ColorSequence.new(MAINRUINCOLOR.Color)
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = MAINRUINCOLOR
v.Material = "Neon"
end
end
for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Ice"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Ice"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 1
v.BrickColor = BrickColor.new("White")
v.Material = "Neon"
end
end
end

function RecolorThing(one,two,three,four,five,exonetran,exone,extwotran,extwo)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = one
v.Material = "Neon"
end
end
refec.Color = ColorSequence.new(one.Color)
refec2.Color = ColorSequence.new(one.Color)
refec3.Color = ColorSequence.new(one.Color)
tr1.Color = ColorSequence.new(one.Color)
tr2.Color = ColorSequence.new(one.Color)
tr3.Color = ColorSequence.new(one.Color)
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.BrickColor = two
v.Material = "Neon"
end
end
tl1.Color = ColorSequence.new(two.Color)
tl2.Color = ColorSequence.new(two.Color)
tl3.Color = ColorSequence.new(two.Color)
for i, v in pairs(m:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = three
v.Material = "Ice"
end
end
for i, v in pairs(m2:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = four
v.Material = "Ice"
end
end
for i, v in pairs(m3:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = five
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = exonetran
v.BrickColor = exone
v.Material = "Neon"
end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
if v:IsA("Part") then
v.Transparency = extwotran
v.BrickColor = extwo
v.Material = "Neon"
end
end
end

function attackone()
	attack = true
local keptcolor = MAINRUINCOLOR
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(-10),math.rad(-20)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(10),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
	end
local distlook = 5
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
swait(2)
CameraEnshaking(2,3)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,-3,-distlook)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0,1,0),0.2,0.001,0.2,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(8,1,8),-0.045,0.15,-0.045,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(4,1,4),-0.025,0.25,-0.025,keptcolor)
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),vt(2,1,2),-0.015,0.35,-0.015,keptcolor)
MagniDamage(hite, 9, 10,25, 0, "Normal")
for i = 0, 14 do
local rsiz = math.random(5,20)
sphereMK(math.random(1,3),0.25,"Add",hite.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
CFuncs["Sound"].Create("rbxassetid://178452221", hite, 1, 1)
CFuncs["Sound"].Create("rbxassetid://1042722746", hite, 0.5, 1)
game:GetService("Debris"):AddItem(hite, 5)
distlook = distlook + 10
end
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(90)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-0.5),math.rad(0),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.5)
	end
	attack = false
end

function attacktwo()
	attack = true
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.15,0)* angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(-90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.3)
	end
CameraEnshaking(3,4)
MagniDamage(root, 12, 15,30, 0, "Normal")
sphere2(5,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.35,0.35,0.35,MAINRUINCOLOR)
sphere2(7.5,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.35,0.35,0.35,MAINRUINCOLOR)
sphere2(10,"Add",root.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.35,0.35,0.35,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.25,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,125)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = root
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,10,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Speed = NumberRange.new(10,50)
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.25)
eff2.Enabled = false
eff.Enabled = false
wait(3)
eff2:Destroy()
eff:Destroy()
end))
for i = 0, 9 do
sphere2(7.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.0025,1,-0.0025,MAINRUINCOLOR)
end
for i = 0, 24 do
local rsiz = math.random(5,20)
sphereMK(math.random(1,5),0.75,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/8,rsiz/8,rsiz/8,0,MAINRUINCOLOR,0)
end
CFuncs["Sound"].Create("rbxassetid://1042705869", root, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2.25, 1)
CFuncs["Sound"].Create("rbxassetid://1117054464", root, 1, 1)
	for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.15,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-120)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
	end
attack = false
end

function attackthree()
attack = true
local keptcolor = MAINRUINCOLOR
CFuncs["Sound"].Create("rbxassetid://1042700914", root, 2, 1.75)
	for i = 0,1,0.1 do
		swait()
sphere2(6,"Add",root.CFrame + root.CFrame.lookVector*2.5,vt(3,3,3),0.01,0.01,0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(80), math.rad(0), math.rad(-40)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(80), math.rad(0), math.rad(40)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.5)
	end
CFuncs["Sound"].Create("rbxassetid://1042705869", root, 1.5, 0.9)
CFuncs["Sound"].Create("rbxassetid://1042716828", root, 2, 0.9)
local angle = -25
coroutine.resume(coroutine.create(function()
for i = 0, 2 do
local orb = Instance.new("Part", char)
        orb.BrickColor = MAINRUINCOLOR
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0.5
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(3,3,3)
orb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(angle),0) + root.CFrame.lookVector*2.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
game:GetService("Debris"):AddItem(orb, 10)
sphere2(6,"Add",orb.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.15,0.15,0.15,keptcolor)
sphere2(9,"Add",orb.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.15,0.15,0.15,keptcolor)
coroutine.resume(coroutine.create(function()
MagniDamage(orb, 6, 8,15, 0, "Normal")
for i = 0, 7 do
swait(2.5)
CameraEnshaking(1,2)
MagniDamage(orb, 6, 8,15, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042693018", orb, 1.5, 1.5)
for i = 0, 4 do
local rsiz = math.random(5,10)
sphere2(4,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.5,1,0.5),-0.0025,0.25,-0.0025,keptcolor)
sphereMK(math.random(2,6),0.15,"Add",orb.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
sphere2(4,"Add",orb.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.1,0.1,0.1,keptcolor)
sphere2(8,"Add",orb.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),0.1,0.1,0.1,keptcolor)
end
orb.Transparency = 1
orb.Anchored = false
wait(10)
orb:Destroy()
end))
angle = angle + 25
end
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.15,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
	end
attack = false
end

------------------------------------- Abilities ---------------------------------------------------------
function Fireball()
attack = true
hum.WalkSpeed = 0 
local keptcolor = MAINRUINCOLOR
	for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(6), math.rad(-20), math.rad(12)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(40), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.3)
	end
local orb = Instance.new("Part", char)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(4,4,4)
orb.CFrame = root.CFrame + root.CFrame.lookVector*3
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(orb.BrickColor.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,7,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
CFuncs["Sound"].Create("rbxassetid://304448425", orb, 1.5, 0.9)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*75
bv.Parent = orb
game:GetService("Debris"):AddItem(orb, 10)
local hitted = false
coroutine.resume(coroutine.create(function()
while true do
swait()
if orb.Parent ~= nil and hitted == false then
sphere2(4,"Add",orb.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),0) - orb.CFrame.lookVector*1.5,vt(3,3,3),-0.03,-0.03,-0.03,keptcolor)
elseif orb.Parent == nil and hitted == true then
break
end
end
end))
local hit =orb.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= char then
	hitted = true
	eff.Enabled = false
CameraEnshaking(4,4)
CFuncs["Sound"].Create("rbxassetid://1226980789", orb, 4.5, 0.7)
CFuncs["Sound"].Create("rbxassetid://178452221", orb, 2.5, 0.4)
	MagniDamage(orb, 25, 20,30, 0, "Normal")
sphere2(4,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
sphere2(3,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
sphere2(2,"Add",orb.CFrame,vt(4,4,4),0.5,0.5,0.5,keptcolor)
for i = 0, 9 do
sphere2(4,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1.5,1,1.5),-0.005,4,-0.005,keptcolor)
end
for i = 0, 49 do
local rsiz = math.random(10,30)
sphereMK(math.random(1,3),1,"Add",orb.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
local eff = Instance.new("ParticleEmitter",orb)
eff.Texture = "rbxassetid://296874871"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(orb.BrickColor.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
coroutine.resume(coroutine.create(function()
	wait(0.25)
	eff.Enabled = false
end))
local hfr,pfr=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,4,char)
orb.Anchored = true
orb.Transparency = 1
coroutine.resume(coroutine.create(function()
if hfr ~= nil then
orb.Size = vt(50,1,50)
orb.Orientation = vt(0,0,0)
orb.CFrame = orb.CFrame*CFrame.new(0,-5,0)
orbm:Destroy()
local firef = eff:Clone()
firef.Parent = orb
firef.VelocitySpread = 50
firef.Rate = 500
firef.Drag = 3
firef.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
firef.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
firef.Speed = NumberRange.new(10,30)
for i = 0, 24 do
wait(0.25)
MagniDamage(orb, 25, 3,6, 0, "Normal")
end
firef.Enabled = false
end
end))
wait(10)
orb:Destroy()
end
end)
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(6), math.rad(-20), math.rad(12)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
	end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function BeamOfDeath()
attack = true
hum.WalkSpeed = 0 
local keptcolor = MAINRUINCOLOR
local orb = Instance.new("Part", char)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(22.5,10000,22.5)
orb.CFrame = mouse.Hit
orb.Anchored = true
orb.Orientation = vt(0,0,0)
orb.CFrame = orb.CFrame*CFrame.new(0,1,0)
CFuncs["LongSound"].Create("rbxassetid://1545630949", char, 1.5, 1)
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
for i = 0, 399 do
swait()
orbm.Scale = orbm.Scale - vt(0.05,0,0.05)
orb.Transparency = orb.Transparency - 0.0025
end
end))
wait(9)
coroutine.resume(coroutine.create(function()
local hfr,pfr=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,4,char)
if hfr ~= nil then
	for i = 0, 49 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hitfloor.Material
deb.Color = hitfloor.Color
deb.Size = vt(math.random(50,55),math.random(50,55),math.random(50,55))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = orb.CFrame*CFrame.new(math.random(-150,150),-5,math.random(-150,150))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hitfloor.Material
deb2.Color = hitfloor.Color
deb2.Size = vt(math.random(34,38),math.random(34,38),math.random(34,38))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-150,150),math.random(250,650),math.random(-150,150))
deb2.CFrame = orb.CFrame*CFrame.new(math.random(-60,60),-5,math.random(-60,60))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local eff = Instance.new("ParticleEmitter",deb)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 100
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,40,0),NumberSequenceKeypoint.new(1,45,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(0,5)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-10,10)
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,15,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-15,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(BrickColor.new('White').Color)
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
	wait(15)
eff.Enabled = false
	for i = 0, 49 do
		swait()
		deb.Transparency = deb.Transparency + 0.02
	end
wait(1)
	deb:Destroy()
end))
end
end
end))
for i = 0, 199 do
swait(1.5)
for i, v in pairs(FindNearestHead(orb.CFrame.p, 175)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),5,5,5,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),1,35,1,keptcolor)
sphere2(5,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,10,10),0,50,0,keptcolor)
sphere2(5,"Add",orb.CFrame,vt(10,100000,10),2,2,2,keptcolor)
end
orb:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end


function Beams()
attack = true
hum.WalkSpeed = 0 
local keptcolor = MAINRUINCOLOR
coroutine.resume(coroutine.create(function()
for i = 0, 24 do
swait(5)
local orb = Instance.new("Part", char)
CFuncs["Sound"].Create("rbxassetid://663361028", orb, 2, 1)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
orb.Anchored = true
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(1.25,1.25,1.25)
orb.CFrame = root.CFrame*CFrame.new(math.random(-6,6),math.random(3,9),math.random(-6,6))
sphere2(6,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
coroutine.resume(coroutine.create(function()
wait(0.5)
CFuncs["Sound"].Create("rbxassetid://161006182", orb, 2.5, 1.1)
sphere2(3,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
sphere2(4,"Add",orb.CFrame,vt(1.25,1.25,1.25),0.025,0.025,0.025,keptcolor)
orb.Transparency = 1
	local a = Instance.new("Part",char)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = keptcolor
a.Material = "Neon"
a.Transparency = 0.25
a.Shape = "Cylinder"
	local ht = Instance.new("Part",char)
	ht.Name = "DirectionHit"	
	ht.Anchored = true
	ht.BrickColor = keptcolor
ht.CanCollide = false
ht.Transparency = 1
ht.Size = vt(0.1,0.1,0.1)
CFuncs["Sound"].Create("rbxassetid://183763487", ht, 2, 1.2)
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance,1,1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	ht.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
sphere2(2,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.15,0.15,0.15,keptcolor)
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.15,0.15,0.15,keptcolor)
MagniDamage(ht, 9, 10,15, 0, "Normal")
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",ht)
eff.Texture = "rbxassetid://284205403"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500
eff.Lifetime = NumberRange.new(0.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(0.2,2.5,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,50)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.25)
eff.Enabled = false
end))
for i = 0, 4 do
sphere2(8,"Add",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.005,0.125,-0.005,keptcolor)
sphere2(4,"Add",ht.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.01,0.5,-0.01,keptcolor)
local rsiz = math.random(10,30)
sphereMK(math.random(2,4),0.25,"Add",ht.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,1,1)
for i = 0, 49 do
swait()
msh.Scale = msh.Scale + vt(0,0.01,0.01)
a.Transparency = a.Transparency + 0.02
end
orb:Destroy()
a:Destroy()
ht:Destroy()
end))
game:GetService("Debris"):AddItem(orb, 10)
end
end))
	for i = 0,12,0.1 do
		swait()
sphere2(7,"Add",sorb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,keptcolor)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(6), math.rad(20), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.3)
	end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function smiter()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
RootPart.CFrame = FaceMouse()[1]
attack = true
hum.WalkSpeed = 0
coroutine.resume(coroutine.create(function()
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 2, 1)
sphere2(4,"Add",targetted.Head.CFrame,vt(8,8,8),0.1,0.1,0.1,MAINRUINCOLOR)
local vel = Instance.new("BodyPosition", targetted.Head)
vel.P = 12500
vel.D = 1000
vel.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
vel.position = targetted.Head.CFrame.p
end))
CFuncs["Sound"].Create("rbxassetid://671759140", sorb2, 1, 1.2)
	for i = 0,4,0.1 do
		swait()
sphere2(4,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.125,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(5)),.2)
	end
coroutine.resume(coroutine.create(function()
CameraEnshaking(6,5)
MagniDamage(targetted.Head, 18, 18,30, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 6.5, 0.8)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 6.25, 0.8)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 5, 0.8)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25,150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,3,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(10,50)
sphereMK(math.random(1,4),1,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
game:GetService("Debris"):AddItem(vel,1)
dmg(targetted)
end))
	for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.5)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(5)),.5)
	end
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function supsmiter()
local targetted = nil
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
targetted = mouse.Target.Parent
end
if targetted ~= nil then
RootPart.CFrame = FaceMouse()[1]
attack = true
hum.WalkSpeed = 0
coroutine.resume(coroutine.create(function()
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 2, 1)
sphere2(4,"Add",targetted.Head.CFrame,vt(8,8,8),0.1,0.1,0.1,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(8,8,8),0.2,0.2,0.2,MAINRUINCOLOR)
local vel = Instance.new("BodyPosition", targetted.Head)
vel.P = 12500
vel.D = 1000
vel.maxForce = Vector3.new(50000000000, 10e10, 50000000000)
vel.position = targetted.Head.CFrame.p
end))
CFuncs["Sound"].Create("rbxassetid://1042700914", sorb2, 2.5, 0.25)
	for i = 0,14,0.1 do
		swait()
rsiz = math.random(5,15)
sphereMK(math.random(3,9),0.25,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,-15)	
sphere2(4,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1.5,1.5,1.5),-0.01,0.15,-0.01,MAINRUINCOLOR)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
coroutine.resume(coroutine.create(function()
CameraEnshaking(6,5)
MagniDamage(targetted.Head, 18, 18,30, 0, "Normal")
MagniDamage(targetted.Head, 9, 18000,30000, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 5.5, 0.8)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 5.25, 0.8)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 4, 0.8)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.25,0,0.25,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),0.5,0.5,0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,25,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25,150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,3,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(10,50)
sphereMK(math.random(1,4),1,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
wait(0.75)
CameraEnshaking(6,6)
MagniDamage(targetted.Head, 20, 25,40, 0, "Normal")
MagniDamage(targetted.Head, 12, 18000,30000, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 6.5, 0.7)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 6.25, 0.7)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 5, 0.7)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.5,0,0.5,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.5,0,0.5,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),0.75,0.75,0.75,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),0.75,0.75,0.75,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,35,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(25,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,4.5,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(15,55)
sphereMK(math.random(1,4),1.5,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
wait(0.75)
CameraEnshaking(6,7)
MagniDamage(targetted.Head, 23, 40,80, 0, "Normal")
MagniDamage(targetted.Head, 15, 18000,30000, 0, "Normal")
CFuncs["Sound"].Create("rbxassetid://1042705869", targetted.Head, 7.5, 0.6)
CFuncs["Sound"].Create("rbxassetid://1042716828", targetted.Head, 7.25, 0.6)
CFuncs["Sound"].Create("rbxassetid://1117054464", targetted.Head, 6, 0.6)
sphere2(3,"Add",targetted.Head.CFrame,vt(0,40000,0),0.75,0,0.75,MAINRUINCOLOR)
sphere2(2,"Add",targetted.Head.CFrame,vt(0,40000,0),0.75,0,0.75,MAINRUINCOLOR)
sphere2(4,"Add",targetted.Head.CFrame,vt(0,0,0),1,1,1,MAINRUINCOLOR)
sphere2(5,"Add",targetted.Head.CFrame,vt(0,0,0),1,1,1,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",targetted.Head)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.8,50,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
local eff2 = eff:Clone()
eff2.Parent = targetted.Head
eff2.Texture = "rbxassetid://284205403"
eff2.Rate = 10000
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff2.Drag = 5
eff2.Rotation = NumberRange.new(-500,500)
eff2.VelocitySpread = 9000
wait(0.5)
eff2.Enabled = false
eff.Enabled = false
end))
for i = 0, 9 do
sphere2(3,"Add",targetted.Head.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(2,1,2),-0.02,6,-0.02,MAINRUINCOLOR)
end
for i = 0, 49 do
local rsiz = math.random(20,60)
sphereMK(math.random(1,4),2,"Add",targetted.Head.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
end
dmg(targetted)
game:GetService("Debris"):AddItem(vel,1)
end))
	for i = 0,7,0.1 do
		swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-80)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(80)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.5)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-60)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.5)
	end
attack = false
hum.WalkSpeed = storehumanoidWS
end
end

function BinaryBLINK()
for i = 0, 9 do
sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)		sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)	    sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)
end
sphere(20,"Add",root.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,0),NumberSequenceKeypoint.new(0.8,5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(30,160)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
wait(4)
eff:Destroy()
end))
CFuncs["Sound"].Create("rbxassetid://1177785010", root, 10,1)
RootPart.CFrame = mouse.Hit *CFrame.new(0,2,0)
CameraEnshaking(2,10)
for i, v in pairs(FindNearestHead(Torso.CFrame.p, 10)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
for i = 0, 9 do
sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)		sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)	    sphere2(6,"Add",root.CFrame*CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.5,-0.005,MAINRUINCOLOR)
end
sphere(20,"Add",root.CFrame,vt(0,0,0),0.5,MAINRUINCOLOR)
end

function BinaryE()
local posit = -2
attack = true
hum.WalkSpeed = 5
CFuncs["Sound"].Create("rbxassetid://169380495", sorb2, 1, 1)
	for i = 0,2,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(6), math.rad(-30)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
	end
for i = 0, 2 do
CameraEnshaking(1,2)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(0,posit,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 0.9)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 0.8)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",hite)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,1,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(10,50)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 1 do
	swait()
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
	    sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(2,2,2),0.5,-0.01,-0.01,MAINRUINCOLOR)
MagniDamage(hite, 3, 30,40, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(110), math.rad(6), math.rad(40)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(0)),.5)
	end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-0.2,0)* angles(math.rad(20),math.rad(0),math.rad(60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(-20),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(40)),.5)
	end
	posit = -6
	for i = 0, 6 do
CameraEnshaking(1,3)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 1
        hite.TopSurface = 0
        hite.BottomSurface = 0
hite.CFrame = root.CFrame*CFrame.new(posit,0,-5)
CFuncs["Sound"].Create("rbxassetid://231917856", hite, 0.5, 1.2)
CFuncs["Sound"].Create("rbxassetid://231917758", hite, 0.25, 1)
sphere2(6,"Add",hite.CFrame*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(1,1,1),-0.01,1,-0.01,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",hite)
eff.Texture = "rbxassetid://1175838406"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 1000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,1,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,70)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 100000
wait(0.25)
eff.Enabled = false
end))
coroutine.resume(coroutine.create(function()
for i = 0, 2 do
	swait()
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
		sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
	    sphere2(4,"Add",hite.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),vt(0.5,0.5,0.5),-0.005,0.25,-0.005,MAINRUINCOLOR)
end
end))
MagniDamage(hite, 5, 40,70, 0, "Normal")
game:GetService("Debris"):AddItem(hite, 5)
posit = posit + 2
	end
	for i = 0,1,0.1 do
		swait()
sphere2(7,"Add",sorb2.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.075,-0.01,MAINRUINCOLOR)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.1,1.5)* angles(math.rad(-10),math.rad(0),math.rad(-60)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(6), math.rad(-50)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1.5),math.rad(10),math.rad(-10)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(60)),.5)
	end
	hum.WalkSpeed = storehumanoidWS
attack = false
end

function AZUREFINALE()
attack = true
duringend = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://1117054464", char, 7.5, 0.75)
CFuncs["LongSound"].Create("rbxassetid://1042700914", char, 3.5, 0.05)
local hite = Instance.new("Part", char)
        hite.Anchored = true
        hite.CanCollide = false
        hite.FormFactor = 3
        hite.Name = "Ring"
        hite.Material = "Neon"
        hite.Size = Vector3.new(1, 1, 1)
        hite.Transparency = 0
        hite.TopSurface = 0
        hite.BottomSurface = 0
        hite.BrickColor = MAINRUINCOLOR
        local orbm = Instance.new("SpecialMesh", hite)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(0,0,0)
hite.CFrame = root.CFrame*CFrame.new(0,200,0)
	for i = 0,70,0.1 do
		swait()
orbm.Scale = orbm.Scale + vt(0.5,0.5,0.5)
rsiz = math.random(10,45)
kan.Volume = kan.Volume + 0.01
kan.Pitch = kan.Pitch - 0.00135
sphereMK(math.random(1,4),2.5,"Add",hite.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/2,rsiz/2,rsiz/2,0,MAINRUINCOLOR,-300)	
sphere2(4,"Add",hite.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(10,1.5,10),-0.01,10,-0.01,MAINRUINCOLOR)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
	kan.Pitch = 0.1
hite.Transparency = 1
for i = 0,2 do
CFuncs["LongSound"].Create("rbxassetid://324849898", char, 10,0.9)
end
CFuncs["LongSound"].Create("rbxassetid://1117054464", char, 5, 0.75)
sphere2(1,"Add",hite.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(orbm.Scale.X,orbm.Scale.Y,orbm.Scale.Z),-5,-5,-5,MAINRUINCOLOR)
sphere2(1,"Add",hite.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(orbm.Scale.X,orbm.Scale.Y,orbm.Scale.Z),2,2,2,MAINRUINCOLOR)
sphere2(2,"Add",hite.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(orbm.Scale.X,orbm.Scale.Y,orbm.Scale.Z),3,3,3,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",hite)
eff.Texture = "rbxassetid://284205403"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.8,100,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(600,1250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
wait(1)
eff.Enabled = false
end))
	for i = 0,5,0.1 do
		swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
local adsc = 0
local radiatezone = 0
	for i = 0,20,0.1 do
		swait()
adsc = adsc + 0.025
radiatezone = radiatezone + 1.25
sphere2(8,"Add",hite.CFrame,vt(0,0,0),adsc,adsc,adsc,MAINRUINCOLOR)
for i, v in pairs(FindNearestHead(hite.CFrame.p, radiatezone)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
for i = 0,2 do
CFuncs["LongSound"].Create("rbxassetid://665426491", char, 10,0.9)
end
	for i = 0,40,0.1 do
		swait()
adsc = adsc + 0.05
radiatezone = radiatezone + 2.5
sphere2(8,"Add",hite.CFrame,vt(0,0,0),adsc,adsc,adsc,MAINRUINCOLOR)
for i, v in pairs(FindNearestHead(hite.CFrame.p, radiatezone)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
for i = 0,4 do
CFuncs["LongSound"].Create("rbxassetid://665426491", char, 10,0.75)
CFuncs["LongSound"].Create("rbxassetid://923073285", char, 1.25,0.75)
end
	for i = 0,80,0.1 do
		swait()
adsc = adsc + 0.075
radiatezone = radiatezone + 3.75
sphere2(8,"Add",hite.CFrame,vt(0,0,0),adsc,adsc,adsc,MAINRUINCOLOR)
for i, v in pairs(FindNearestHead(hite.CFrame.p, radiatezone)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))* angles(math.rad(0),math.rad(0),math.rad(-60)),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15),math.rad(15),math.rad(-10)),.2)
LW.C0=clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 1 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 1 * math.cos(sine / 34))),.2)
	end
hite:Destroy()
duringend = false
hum.WalkSpeed = storehumanoidWS
attack = false
end

function GalacticalBeams()
attack = true
local keptcolor = MAINRUINCOLOR
coroutine.resume(coroutine.create(function()
for i = 0, 0 do
swait(10)
local orb = Instance.new("Part", char)
CFuncs["Sound"].Create("rbxassetid://663361028", orb, 2, 1)
        orb.BrickColor = keptcolor
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 1
        orb.TopSurface = 0
        orb.BottomSurface = 0
orb.Anchored = true
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = vt(1.25,1.25,1.25)
orb.CFrame = root.CFrame*CFrame.new(math.random(-25,25),math.random(75,150),math.random(-25,25))
coroutine.resume(coroutine.create(function()
orb.Transparency = 1
	local a = Instance.new("Part",char)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = keptcolor
a.Material = "Neon"
a.Transparency = 1
a.Shape = "Cylinder"
	local x = Instance.new("Part",char)
	x.Name = "Direction"	
	x.Anchored = true
	x.BrickColor = keptcolor
x.Material = "Neon"
x.Transparency = 1
x.Shape = "Cylinder"
	local ht = Instance.new("Part",char)
	ht.Name = "DirectionHit"	
	ht.Anchored = true
	ht.BrickColor = keptcolor
ht.CanCollide = false
ht.Transparency = 1
ht.Size = vt(0.1,0.1,0.1)
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance,1,1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	ht.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
	x.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
local poste = 0
local rotation = 0
CFuncs["Sound"].Create("rbxassetid://153092315", char, 1.5, 1)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,0),vt(5,5,5),2.5,2.5,0,keptcolor)
CameraEnshaking(2,2)
for i = 0, 49 do
swait()
rotation = rotation + 5
poste = poste + 1
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(-rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
end
local A1 = Instance.new("Attachment",x)
local A2 = Instance.new("Attachment",ht)
local Beem = Instance.new("Beam",ht)
Beem.Attachment0 = A1
Beem.Attachment1 = A2
Beem.LightEmission = 1
Beem.FaceCamera = true
Beem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.025, 0),NumberSequenceKeypoint.new(0.975, 0),NumberSequenceKeypoint.new(1, 1)})
Beem.Width0 = 125
Beem.Width1 = 125
Beem.Texture = "rbxassetid://1134824633"
Beem.TextureMode = "Wrap"
Beem.TextureLength = 200
Beem.TextureSpeed = 1.5
Beem.Color = ColorSequence.new(keptcolor.Color)
CameraEnshaking(3,6)
CFuncs["Sound"].Create("rbxassetid://294188875", char, 2, 1.5)
a.Transparency = 0.25
sphere2(2,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.5,0.5,0.5,keptcolor)
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),0.5,0.5,0.5,keptcolor)
sphere2(2,"Add",ht.CFrame,vt(1.25,1.25,1.25),1,1,1,keptcolor)
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),1,1,1,keptcolor)
sphere2(2,"Add",ht.CFrame,vt(1.25,1.25,1.25),1.5,1.5,1.5,keptcolor)
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),1.5,1.5,1.5,keptcolor)
MagniDamage(ht, 70, 1000,1500, 0, "Normal")
local eff = Instance.new("ParticleEmitter",ht)
eff.Texture = "rbxassetid://284205403"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.2,35,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(80,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
for i = 0, 24 do
sphere2(6,"Add",ht.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(15,1,15),-0.05,math.random(1,5),-0.05,keptcolor)
local rsiz = math.random(10,50)
sphereMK(math.random(3,6),1.25,"Add",ht.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
local msh = Instance.new("SpecialMesh",a)
msh.MeshType = "Cylinder"
msh.Scale = vt(1,15,15)
for i = 0, 49 do
swait()
CameraEnshaking(1,4)
MagniDamage(ht, 70, 1000,1500, 0, "Normal")
rotation = rotation + 5
sphere2(4,"Add",ht.CFrame,vt(1.25,1.25,1.25),1,1,1,keptcolor)
sphere2(6,"Add",ht.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(15,1,15),-0.05,math.random(1,5),-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,0),vt(25,25,5),1,1,0,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 + rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(-rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 - rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 + rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 - rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 + rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 - rotation))*CFrame.new(0,50,0),vt(5,25,10),-0.05,1.5,-0.1,keptcolor)
for i = 0, 2 do
local rsiz = math.random(50,250)
sphereMK(math.random(3,6),math.random(2,4),"Add",ht.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,keptcolor,0)
end
msh.Scale = msh.Scale + vt(0,0.25,0.25)
end
eff.Enabled = false
local visibility = 0
for i = 0, 49 do
swait()
visibility = visibility + 0.02
Beem.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.025, visibility),NumberSequenceKeypoint.new(0.975, visibility),NumberSequenceKeypoint.new(1, 1)})
rotation = rotation + 5
poste = poste - 1
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(-rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(180 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(90 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 + rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,0,math.rad(270 - rotation))*CFrame.new(0,poste,0),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
msh.Scale = msh.Scale + vt(0,-0.5,-0.5)
a.Transparency = a.Transparency + 0.02
end
wait(1)
orb:Destroy()
a:Destroy()
ht:Destroy()
end))
game:GetService("Debris"):AddItem(orb, 10)
end
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end


function WarpedDash()
attack = true
hum.WalkSpeed = 0
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1208650519", tors, 5, 1)
local poste = 3
local rotation = 0
local rate = 0
for i = 0, 124 do
swait()
rotation = rotation + rate
poste = poste + 0.1
rate = rate + 0.1
sphere2(8,"Add",root.CFrame*CFrame.new(0,-3,0),vt(poste,1,poste),0.05*poste/3,0,0.05*poste/3,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.new(math.random(-20,20),-3,math.random(-20,20)),vt(1,1,1),-0.01,0.5,-0.01,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(90 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(180 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(270 + rotation),0)*CFrame.new(0,-3,poste)*CFrame.Angles(math.rad(40),0,0),vt(1,1,1),0.025,0.25,0.025,MAINRUINCOLOR)
RH.C0=clerp(RH.C0,cf(1,-0.35,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-20),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.75)*angles(math.rad(30),math.rad(0),math.rad(20)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-20)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(40),math.rad(-8),math.rad(-10)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-30)),.5)
end
CameraEnshaking(3,7)
local loc = Instance.new("Part", char)
loc.BrickColor = MAINRUINCOLOR
loc.CanCollide = false
loc.FormFactor = 3
loc.Name = "Ring"
loc.Material = "Neon"
loc.Size = Vector3.new(1, 1, 1)
loc.Transparency = 1
loc.TopSurface = 0
loc.BottomSurface = 0
loc.Anchored = true
loc.CFrame = root.CFrame + root.CFrame.lookVector*100
CFuncs["Sound"].Create("rbxassetid://782353443", loc, 5, 1)
CFuncs["Sound"].Create("rbxassetid://1177785010", loc, 6, 1)
MagniDamage(loc, 95, 500,6000, 0, "Normal")
sphere2(10,"Add",loc.CFrame,vt(5,5,5),-0.05,-0.05,5,MAINRUINCOLOR)
sphere2(8,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
sphere2(4,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
sphere2(2,"Add",loc.CFrame,vt(5,5,5),2.5,2.5,2.5,MAINRUINCOLOR)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",loc)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.8,75,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(100,500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
end))
for i = 0, 49 do
sphere2(math.random(100,300)/100,"Add",loc.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,5),-0.01,-0.01,5,MAINRUINCOLOR)
end
for i = 0, 9 do
sphere2(3,"Add",loc.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),0),vt(1,1,5),-0.01,-0.01,5,MAINRUINCOLOR)
end
game:GetService("Debris"):AddItem(loc, 5)
root.CFrame = root.CFrame + root.CFrame.lookVector*200
hum.WalkSpeed = storehumanoidWS
hum.JumpPower = 50
attack = false
end

------------------------------------
function harmonytaunty()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://430312221", tors, 1.25, 1.15)
for i = 0,7,0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(2),math.rad(0),math.rad(-20 + 6 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(10 - 4 * math.cos(sine / 47))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(-2 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(-2 + 4 * math.cos(sine / 62))),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(12 - 3 * math.cos(sine / 28)),math.rad(12 - 3 * math.cos(sine / 79)),math.rad(2 - 4 * math.cos(sine / 62))),.2)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.01 * math.cos(sine / 28),-0.1)*angles(math.rad(34 + 2 * math.cos(sine / 33)),math.rad(0),math.rad(-13 - 3 * math.cos(sine / 28))),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(80 - 3 * math.cos(sine / 37)),math.rad(0),math.rad(10 + 5 * math.cos(sine / 30))),.2)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function vistaunty()
attack = true
hum.WalkSpeed = 0
local rd = math.random(1,5)
if rd == 1 then
chatfunc("You're familiar with this, arent you?",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
elseif rd == 2 then
chatfunc("Dance to the beat. If you want to.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
elseif rd == 3 then
chatfunc("I'm just bored. Don't mess with me.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
elseif rd == 4 then
chatfunc("Ready to dance? If not, come back if you want to.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
elseif rd == 5 then
chatfunc("Ehh, not really into something right now.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
end
for i = 0, 8, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) + kan.PlaybackLoudness/5000,-0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-20),math.rad(0 - 2 * math.cos(sine / 56) + kan.PlaybackLoudness/450)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) - kan.PlaybackLoudness/6500,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(5),math.rad(0 + 2 * math.cos(sine / 56) + kan.PlaybackLoudness/500)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 56) ,0 + 0.05 * math.cos(sine / 28) + kan.PlaybackLoudness/7000)*angles(math.rad(0 - 2 * math.cos(sine / 56)),math.rad(0),math.rad(60)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 + 2 * math.cos(sine / 28) - kan.PlaybackLoudness/60),math.rad(0 + 2 * math.cos(sine / 73)),math.rad(-60)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(90 + 5 * math.cos(sine / 34) + kan.PlaybackLoudness/7.5),math.rad(0),math.rad(60 - 2 * math.cos(sine / 38))),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(10),math.rad(5),math.rad(7.5)),.4)
end
hum.WalkSpeed = storehumanoidWS
attack = false
end

function shytaunty()
attack = true
hum.WalkSpeed = 0
CFuncs["Sound"].Create("rbxassetid://543623779", tors, 0.35, 1)
local blush = Instance.new("Decal",hed)
blush.Texture = "rbxassetid://898404027"
blush.Face = "Front"
for i = 0, 13, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) + 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7 - 5 * math.cos(sine / 44)),math.rad(0),math.rad(-6 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) - 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 + 5 * math.cos(sine / 44)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.05 * math.cos(sine / 44),0 + 0.03 * math.cos(sine / 34),-0.05 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 - 5 * math.cos(sine / 44)),math.rad(-5)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2 - 2.5 * math.cos(sine / 28)),math.rad(20 + 5 * math.cos(sine / 62)),math.rad(35 + 5 * math.cos(sine / 59))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(22 - 1 * math.cos(sine / 53)),math.rad(0),math.rad(-60 + 2 * math.cos(sine / 37))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(26 - 2 * math.cos(sine / 58)),math.rad(0),math.rad(59 - 3 * math.cos(sine / 57) )),.1)
end
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait()
blush.Transparency = blush.Transparency + 0.02
end
blush:Destroy()
end))
hum.WalkSpeed = storehumanoidWS
attack = false
end
------------------------------------ Mode Ascendances
function UnknownA()
hum.WalkSpeed = 0
attack = true
local keptcolor = MAINRUINCOLOR
local locat = Instance.new("Part", char)
locat.CanCollide = false
locat.FormFactor = 3
locat.Name = "Ring"
locat.Material = "Neon"
locat.Size = Vector3.new(1, 1, 1)
locat.Transparency = 1
locat.TopSurface = 0
locat.BottomSurface = 0
locat.Anchored = true
locat.CFrame = root.CFrame*CFrame.new(0,-3,0)
local poste = 0
local rotation = 0
local upperpos = 0
local rate = 0
local x = locat
CFuncs["Sound"].Create("rbxassetid://289315275", char, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://419447292", char, 2.5, 1)
sphere2(8,"Add",tors.CFrame,vt(1,1,1),5,5,5,keptcolor)
sphere2(6,"Add",tors.CFrame,vt(1,1,1),5,5,5,keptcolor)
sphere2(4,"Add",tors.CFrame,vt(1,1,1),5,5,5,keptcolor)
sphere2(2,"Add",tors.CFrame,vt(1,1,1),5,5,5,keptcolor)
CameraEnshaking(2,5)
for i = 0, 49 do
swait()
rotation = rotation + 5
poste = poste + 1
sphere2(math.random(4,6),"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,1,5),-0.05,math.random(25,100)/25,-0.05,keptcolor)
sphere2(8,"Add",tors.CFrame,vt(poste/1.5,poste/1.5,poste/1.5),0.01,0.01,0.01,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.5)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.5)
end
for i = 0, 49 do
swait()
rotation = rotation + 5
sphere2(math.random(4,6),"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,1,5),-0.05,math.random(25,100)/25,-0.05,keptcolor)
sphere2(8,"Add",tors.CFrame,vt(poste/1.5,poste/1.5,poste/1.5),0.01,0.01,0.01,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270 + rotation),0)*CFrame.new(0,upperpos,poste),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270-rotation),0)*CFrame.new(0,upperpos,poste*2),vt(5,5,5),-0.05,-0.05,-0.05,keptcolor)
RH.C0=clerp(RH.C0,cf(1,-0.05,-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-0.5,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.5)
LW.C0=clerp(LW.C0,cf(-0.75,0.5,-0.25)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.5)
end
ModeOfGlitch = 6000000000
storehumanoidWS = 300
hum.WalkSpeed = 300
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Catastrophe",BrickColor.new("Mulberry").Color,BrickColor.new("Cool yellow").Color,"Highway")
newThemeCust("rbxassetid://1504604335",0,1.005,1.5)
MAINRUINCOLOR = BrickColor.new("Magenta")
keptcolor = MAINRUINCOLOR
RecolorThing(MAINRUINCOLOR,BrickColor.new("Magenta"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 2.5, 0.75)
sphere2(1,"Add",x.CFrame*CFrame.new(0,0,0),vt(15,0,15),5,0,5,BrickColor.new("Cool yellow"))
sphere2(2,"Add",x.CFrame*CFrame.new(0,0,0),vt(15,0,15),5,0,5,keptcolor)
sphere2(1,"Add",x.CFrame*CFrame.new(0,0,0),vt(5,50000,5),1.5,1,1.5,BrickColor.new("White"))
sphere2(2,"Add",x.CFrame*CFrame.new(0,0,0),vt(5,50000,5),1.5,1,1.5,BrickColor.new("Cool yellow"))
sphere2(4,"Add",x.CFrame*CFrame.new(0,0,0),vt(5,50000,5),1.5,1,1.5,keptcolor)
attack = false
hum.WalkSpeed = storehumanoidWS
for i = 0, 49 do
local rsiz = math.random(150,450)
sphere2(math.random(1,4),"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(15,1,15),-0.05,math.random(25,500)/25,-0.05,BrickColor.new("Cool yellow"))
sphere2(math.random(1,2),"Add",x.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(math.random(-350,350),math.random(-350,350),math.random(-350,350)),vt(1,1,1),-0.01,math.random(50,250)/10,-0.01,BrickColor.new("Cool yellow"))
sphereMK(math.random(1,2),math.random(2,4),"Add",x.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,BrickColor.new("White"),0)
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",x)
eff.Texture = "rbxassetid://284205403"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(BrickColor.new("Cool yellow").Color)
eff.Rate = 50000
eff.Lifetime = NumberRange.new(2.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.5,75,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(250,1000)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.5)
eff.Enabled = false
end))
--[[for i, v in pairs(FindNearestHead(Torso.CFrame.p, 2000000000)) do
if v:FindFirstChild('Head') then
dmg(v)
end
end]]--
sphere2(3,"Add",tors.CFrame,vt(1,1,1),10,10,10,keptcolor)
sphere2(2,"Add",tors.CFrame,vt(1,1,1),10,10,10,BrickColor.new("Magenta"))
sphere2(1,"Add",tors.CFrame,vt(1,1,1),10,10,10,BrickColor.new("Mulberry"))
CameraEnshaking(8,10)
for i = 0, 99 do
swait()
rotation = rotation + 5
poste = poste + 1
upperpos = upperpos + rate
rate = rate + 0.1
sphere2(math.random(1,2),"Add",x.CFrame*CFrame.new(math.random(-350,350),0,math.random(-350,350)),vt(5,1,5),-0.05,math.random(50,250)/50,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,upperpos,poste),vt(5+upperpos/5,5+upperpos/5,5+upperpos/5),-0.05,-0.05,-0.05,BrickColor.new("Cool yellow"))
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90+rotation),0)*CFrame.new(0,upperpos,poste),vt(5+upperpos/5,5+upperpos/5,5+upperpos/5),-0.05,-0.05,-0.05,BrickColor.new("Cool yellow"))
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180+rotation),0)*CFrame.new(0,upperpos,poste),vt(5+upperpos/5,5+upperpos/5,5+upperpos/5),-0.05,-0.05,-0.05,BrickColor.new("Cool yellow"))
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270+rotation),0)*CFrame.new(0,upperpos,poste),vt(5+upperpos/5,5+upperpos/5,5+upperpos/5),-0.05,-0.05,-0.05,BrickColor.new("Cool yellow"))
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(-rotation),0)*CFrame.new(0,upperpos/2,poste*2),vt(5+upperpos/10,5+upperpos/10,5+upperpos/10),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(90-rotation),0)*CFrame.new(0,upperpos/2,poste*2),vt(5+upperpos/10,5+upperpos/10,5+upperpos/10),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(180-rotation),0)*CFrame.new(0,upperpos/2,poste*2),vt(5+upperpos/10,5+upperpos/10,5+upperpos/10),-0.05,-0.05,-0.05,keptcolor)
sphere2(8,"Add",x.CFrame*CFrame.Angles(0,math.rad(270-rotation),0)*CFrame.new(0,upperpos/2,poste*2),vt(5+upperpos/10,5+upperpos/10,5+upperpos/10),-0.05,-0.05,-0.05,keptcolor)
end
x:Destroy()
end

function loveydovey()
CameraEnshaking(4,9)
sphere2(2,"Add",root.CFrame,vt(5,5,5),0.5,0.5,0.5,keptcolor)
sphere2(2,"Add",root.CFrame,vt(5,5,5),0.75,0.75,0.75,keptcolor)
sphere2(3,"Add",root.CFrame,vt(5,5,5),1,1,1,keptcolor)
sphere2(3,"Add",root.CFrame,vt(5,5,5),1.25,1.25,1.25,keptcolor)
sphere2(1,"Add",root.CFrame,vt(5,10000,5),0.5,0.5,0.5,keptcolor)
sphere2(2,"Add",root.CFrame,vt(5,10000,5),0.6,0.6,0.6,keptcolor)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 0.75, 1.25)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 0.75, 1)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://363275192"
eff.LightEmission = 0.95
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 10000
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.8,50,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,200)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
wait(5)
eff:Destroy()
end))
for i = 0, 49 do
local rsiz = math.random(70,90)
sphere2(math.random(1,4),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,1,5),-0.005,math.random(25,100)/25,-0.005,MAINRUINCOLOR)
end
CFuncs["Sound"].Create("rbxassetid://847061203", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://543623779", root, 1.5,1)
newTheme("rbxassetid://736003449",0,1,2)
ModeOfGlitch = 9600000000
MAINRUINCOLOR = BrickColor.new("Hot pink")
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1.05,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7),math.rad(0),math.rad(-16)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1.05,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.1,0.05)*angles(math.rad(-10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(20),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(12),math.rad(0),math.rad(57)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(0),math.rad(-58)),.8)
end
for i = 0, 9, 0.1 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7),math.rad(0),math.rad(-6)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.05)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(10),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.45)*angles(math.rad(22),math.rad(0),math.rad(-37)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.45)*angles(math.rad(23),math.rad(0),math.rad(38)),.1)
end
CameraEnshaking(2,11)
sphere2(2,"Add",root.CFrame,vt(5,5,5),0.75,0.75,0.75,BrickColor.new("Pink"))
sphere2(2,"Add",root.CFrame,vt(5,5,5),1,1,1,BrickColor.new("Pink"))
sphere2(3,"Add",root.CFrame,vt(5,5,5),1.25,1.25,1.25,MAINRUINCOLOR)
sphere2(3,"Add",root.CFrame,vt(5,5,5),1.5,1.5,1.5,MAINRUINCOLOR)
sphere2(1,"Add",root.CFrame,vt(5,10000,5),0.5,0.5,0.5,BrickColor.new("Pink"))
sphere2(2,"Add",root.CFrame,vt(5,10000,5),1,1,1,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 1, 1.125)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 1, 0.75)
for i = 0, 49 do
local rsiz = math.random(70,90)
sphere2(math.random(1,4),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(5,1,5),-0.005,math.random(50,200)/25,-0.005,MAINRUINCOLOR)
sphereMK(math.random(1,2),math.random(1,3),"Add",root.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,BrickColor.new("Pink"),0)
end
CFuncs["Sound"].Create("rbxassetid://847061203", char, 1,1)
for i = 0, 1, 0.2 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1.05,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7),math.rad(0),math.rad(-16)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1.05,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.1,0.05)*angles(math.rad(-10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(20),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(12),math.rad(0),math.rad(57)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(0),math.rad(-58)),.8)
end
for i = 0, 1, 0.1 do
	swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7),math.rad(0),math.rad(-6)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.05)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(10),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.45)*angles(math.rad(22),math.rad(0),math.rad(-37)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.45)*angles(math.rad(23),math.rad(0),math.rad(38)),.1)
end
CameraEnshaking(9,14)
sphere2(4,"Add",root.CFrame,vt(5,5,5),1,1,1,BrickColor.new("Pink"))
sphere2(4,"Add",root.CFrame,vt(5,5,5),2,2,2,BrickColor.new("Pink"))
sphere2(9,"Add",root.CFrame,vt(5,5,5),3,3,3,MAINRUINCOLOR)
sphere2(9,"Add",root.CFrame,vt(5,5,5),4,4,4,MAINRUINCOLOR)
CFuncs["Sound"].Create("rbxassetid://847061203", char, 1,1)
CFuncs["Sound"].Create("rbxassetid://763717897", char, 2.5, 1)
CFuncs["Sound"].Create("rbxassetid://1192402877", char, 2.5, 0.5)
sphere2(1,"Add",root.CFrame,vt(5,5,5),2,2,2,BrickColor.new("Pink"))
sphere2(1,"Add",root.CFrame,vt(5,5,5),3,3,3,BrickColor.new("Pink"))
sphere2(1,"Add",root.CFrame,vt(5,5,5),4,4,4,BrickColor.new("Pink"))
sphere2(1,"Add",root.CFrame,vt(5,10000,5),2.5,2.5,2.5,BrickColor.new("Pink"))
sphere2(2,"Add",root.CFrame,vt(5,10000,5),3.5,3.5,3.5,MAINRUINCOLOR)
sphere2(1,"Add",root.CFrame,vt(5,5,5),8,8,8,BrickColor.new("Pink"))
sphere2(2,"Add",root.CFrame,vt(5,5,5),14,14,14,MAINRUINCOLOR)
sphere2(3,"Add",root.CFrame,vt(5,5,5),20,20,20,MAINRUINCOLOR)
for i = 0, 99 do
local rsiz = math.random(150,450)
sphere2(math.random(1,4),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(15,1,15),-0.05,math.random(25,500)/25,-0.05,BrickColor.new("Pink"))
sphere2(math.random(1,2),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(math.random(-350,350),math.random(-350,350),math.random(-350,350)),vt(1,1,1),-0.01,math.random(50,250)/10,-0.01,MAINRUINCOLOR)
sphereMK(math.random(1,2),math.random(4,6),"Add",root.CFrame*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,BrickColor.new("Pink"),0)
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",root)
eff.Texture = "rbxassetid://749327003"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.new("Pink").Color)
eff.Rate = 50000
eff.Lifetime = NumberRange.new(5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50,0),NumberSequenceKeypoint.new(0.5,60,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(250,1000)
eff.Drag = 5
eff.Rotation = NumberRange.new(-50,50)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.5)
eff.Enabled = false
wait(5)
eff:Destroy()
end))
storehumanoidWS = 20
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Nah I Rather Not Name This",BrickColor.new("Pink").Color,BrickColor.new("Hot pink").Color,"Cartoon")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Pink"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
for i = 0, 10, 0.1 do
	swait()
	sphere2(math.random(1,2),"Add",root.CFrame*CFrame.new(math.random(-350,350),0,math.random(-350,350)),vt(5,1,5),-0.05,math.random(50,250)/50,-0.05,MAINRUINCOLOR)
	RH.C0=clerp(RH.C0,cf(1,-1.05,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7),math.rad(0),math.rad(-16)),.8)
LH.C0=clerp(LH.C0,cf(-1,-1.05,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3),math.rad(0),math.rad(10)),.8)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.1,0.05)*angles(math.rad(-10),math.rad(0),math.rad(0)),.8)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(0),math.rad(0)),.8)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(97)),.8)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-27),math.rad(0),math.rad(-98)),.8)
end
hum.WalkSpeed = 20
attack = false
end
-------------------------------------

Humanoid.Animator.Parent = nil

-------------------------------------

local attacktype = 1
mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  elseif attack == false and attacktype == 4 then
    attacktype = 1
    --attackfour()
  end
end)

local OVMID = 1702473314
local OVMPIT = 1
local OVMVOL = 1
mouse.KeyDown:connect(function(k)
if k == "g" and attack == false and ModeOfGlitch ~= 1 then
resetmode()
end
if k == "h" and attack == false and ModeOfGlitch ~= 2 then
                 ModeOfGlitch = 2
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Solitude",Color3.new(0,0,0),BrickColor.new("Really black").Color,"Code")
newTheme("rbxassetid://1564523997",0,1.02,1.25)
MAINRUINCOLOR = BrickColor.new("Really black")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "j" and attack == false and ModeOfGlitch ~= 3 then
                 ModeOfGlitch = 3
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("HaCKeR",Color3.new(0,0,0),Color3.new(0,1,0),"SciFi")
newTheme("rbxassetid://949709585",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Dark green")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "k" and attack == false and ModeOfGlitch ~= 4 then
                 ModeOfGlitch = 4
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Astra",Color3.new(0,0,0.25),BrickColor.new("Bright yellow").Color,"SourceSansBold")
newTheme("rbxassetid://275188871",0,1.02,1.25)
MAINRUINCOLOR = BrickColor.new("Navy blue")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "l" and attack == false and ModeOfGlitch ~= 5 then
                 ModeOfGlitch = 5
storehumanoidWS = 16
hum.WalkSpeed = 16
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Solar",Color3.new(1,0.5,0),Color3.new(1,1,0),"Fantasy")
newTheme("rbxassetid://2270626831",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Deep orange")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "x" and attack == false and ModeOfGlitch ~= 6 then
                 ModeOfGlitch = 6
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Calamity",Color3.new(0,0,0.5),Color3.new(0.75,1,1),"Fantasy")
newTheme("rbxassetid://1359036559",0,1,1.25)
MAINRUINCOLOR = BrickColor.new("Bright violet")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "c" and attack == false and ModeOfGlitch ~= 7 then
                 ModeOfGlitch = 7
storehumanoidWS = 175
hum.WalkSpeed = 175
rainbowmode = false
chaosmode = false
RecolorTextAndRename("LIGHTSPEED",BrickColor.new("Cyan").Color,BrickColor.new("Toothpaste").Color,"Arcade")
newTheme("rbxassetid://983369349",0,1.01,1.25)
MAINRUINCOLOR = BrickColor.new("Navy blue")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "v" and attack == false and ModeOfGlitch ~= 8 then
                 ModeOfGlitch = 8
storehumanoidWS = 100
hum.WalkSpeed = 100
rainbowmode = false
chaosmode = false
RecolorTextAndRename("DeStRuCtIoN",BrickColor.new("Really red").Color,BrickColor.new("Bright red").Color,"Antique")
newTheme("rbxassetid://723652641",0,1.01,1.65)
MAINRUINCOLOR = BrickColor.new("Really red")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "b" and attack == false and ModeOfGlitch ~= 9 then
                 ModeOfGlitch = 9
storehumanoidWS = 135
hum.WalkSpeed = 135
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Dance Party",BrickColor.new("Medium stone grey").Color,BrickColor.new("Black").Color,"Arcade")
newTheme("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
MAINRUINCOLOR = BrickColor.new("Institutional white")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "n" and attack == false and ModeOfGlitch ~= 10 then
                 ModeOfGlitch = 10
storehumanoidWS = 12
hum.WalkSpeed = 12
rainbowmode = false
chaosmode = false
RecolorTextAndRename("Lucid Dream",BrickColor.new("Navy blue").Color,BrickColor.new("Black").Color,"Garamond")
newTheme("rbxassetid://639429915",0,1.01,1.65)
MAINRUINCOLOR = BrickColor.new("Black")
RecolorThing(MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "m" and attack == false and ModeOfGlitch == 2 and ModeOfGlitch ~= 2000000000 then
                 ModeOfGlitch = 2000000000
storehumanoidWS = 200
hum.WalkSpeed = 200
rainbowmode = false
chaosmode = false
RecolorTextAndRename("The Big Black",BrickColor.new("Black").Color,BrickColor.new("Black").Color,"Antique")
newThemeCust("rbxassetid://183142252",2.9,1.02,1.5)
MAINRUINCOLOR = BrickColor.new("Really black")
RecolorThing(MAINRUINCOLOR,BrickColor.new("Black"),MAINRUINCOLOR,MAINRUINCOLOR,MAINRUINCOLOR,1,MAINRUINCOLOR,1,MAINRUINCOLOR)
end
if k == "u" and attack == false and ModeOfGlitch ~= 9600000000 then
loveydovey()
end
if k == "m" and attack == false and ModeOfGlitch == 6 and ModeOfGlitch ~= 6000000000 then
UnknownA()
end
if k == "t" and ModeOfGlitch == 6000000000 and attack == false then
harmonytaunty()
elseif k == "t" and ModeOfGlitch == 9 and attack == false then
vistaunty()
elseif k == "t" and ModeOfGlitch == 9600000000 and attack == false then
shytaunty()
end
if k == "z" and ModeOfGlitch == 1 and attack == false then
Beams()
elseif k == "z" and ModeOfGlitch == 2 and attack == false  then
smiter()
elseif k == "z" and ModeOfGlitch == 2000000000 and attack == false  then
supsmiter()
elseif k == "z" and ModeOfGlitch == 3 and attack == false  then
BinaryE()
elseif k == "z" and ModeOfGlitch == 4 and attack == false  then
elseif k == "z" and ModeOfGlitch == 5 and attack == false  then
Fireball()
elseif k == "z" and ModeOfGlitch == 6 and attack == false  then
GalacticalBeams()
elseif k == "z" and ModeOfGlitch == 7 and attack == false  then
WarpedDash()
elseif k == "z" and ModeOfGlitch == 8 and attack == false  then
BeamOfDeath()
elseif k == "z" and ModeOfGlitch == 9 and attack == false  then
end
if k == "x" and ModeOfGlitch == 3 and attack == false  then
BinaryBLINK()
end
if k == "v" and ModeOfGlitch == 2000000000 and attack == false then
AZUREFINALE()
end
if k == "l" and mutedtog == false then
mutedtog = true
kan.Volume = 0
elseif k == "l" and mutedtog == true then
mutedtog = false
kan.Volume = 1.25
end
if k == "p" and toggleTag == false then
toggleTag = true
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
elseif k == "p" and toggleTag == true then
toggleTag = false
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
if k == "z" and attack == false and ModeOfGlitch == 1 then
end
end)

plr.Chatted:connect(function(message)
if ModeOfGlitch == 9 then
if message:sub(1,5) == "play/" then
OVMID = message:sub(6)
newThemeCust("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
elseif message:sub(1,6) == "pitch/" then
OVMPIT = message:sub(7)
newTheme("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
elseif message:sub(1,4) == "vol/" then
OVMVOL = message:sub(5)
newTheme("rbxassetid://"..OVMID,0,OVMPIT,OVMVOL)
elseif message:sub(1,7) == "skipto/" then
chatfunc("Skipped to "..message:sub(8).." out of "..math.floor(kan.TimeLength).." seconds.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
newThemeCust("rbxassetid://"..OVMID,message:sub(8),OVMPIT,OVMVOL)
elseif message:sub(1,9) == "telltime/" then
chatfunc("Current time pos: "..math.floor(kan.TimePosition).." out of "..math.floor(kan.TimeLength).." seconds.",MAINRUINCOLOR.Color,"Inverted","Arcade",1)
end
end
end)
local rotperm = 0
coroutine.resume(coroutine.create(function()
while true do
swait()
if ModeOfGlitch == 6 or ModeOfGlitch == 8 or ModeOfGlitch == 2000000000 then
swait(0.5)
sphereMK(5,math.random(8,14)/45,"Add",root.CFrame*CFrame.new(math.random(-15,15),-10,math.random(-15,15))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.75,0.75,20,-0.0075,MAINRUINCOLOR,0)
elseif ModeOfGlitch == 5 then
swait(0.5)
local rsiz = math.random(1,3)
sphereMK(math.random(3,6),math.random(-25,25)/750,"Add",sorb2.CFrame*CFrame.new(math.random(-20,20)/50,math.random(-20,20)/50,math.random(-20,20)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/10,rsiz/10,rsiz/10,0,MAINRUINCOLOR,0)
sphereMK(math.random(6,9),math.random(-10,10)/750,"Add",sorb2.CFrame*CFrame.new(math.random(-5,5)/50,math.random(-5,5)/50,math.random(-5,5)/50)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),rsiz/3,rsiz/3,rsiz/3,0,MAINRUINCOLOR,0)
elseif ModeOfGlitch == 9600000000 then
swait(0.25)
sphereMK(5,math.random(-14,-8)/45,"Add",root.CFrame*CFrame.new(math.random(-25,25),10,math.random(-25,25))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.25,0.25,7.5,-0.0025,MAINRUINCOLOR,0)
elseif ModeOfGlitch == 6000000000 then
coroutine.resume(coroutine.create(function()
swait(5)
sphereMK(10,math.random(15,45)/45,"Add",root.CFrame*CFrame.new(math.random(-50,50),-40,math.random(-50,50))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1,1,60,-0.01,MAINRUINCOLOR,0)
end))
swait(1)
rotperm = rotperm + 12
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(rotperm),0)*CFrame.new(0,0,10),vt(3,3,3),-0.03,-0.03,-0.03,MAINRUINCOLOR)
sphere2(8,"Add",root.CFrame*CFrame.Angles(0,math.rad(180 + rotperm),0)*CFrame.new(0,0,10),vt(3,3,3),-0.03,-0.03,-0.03,BrickColor.new("Cool yellow"))
elseif ModeOfGlitch == 9 and kan.PlaybackLoudness >= 50 then
swait(25 - kan.PlaybackLoudness/80)
sphere2(4,"Add",root.CFrame*CFrame.new(0,-3,0),vt(1,1,1),0.25,0,0.25,MAINRUINCOLOR)
if kan.PlaybackLoudness >= 300 then
CameraEnshaking(1,3)
for i = 0, 4 do
sphereMK(5,math.random(15,35)/150,"Add",root.CFrame*CFrame.new(math.random(-15,15),-10,math.random(-15,15))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1,1,20,-0.01,MAINRUINCOLOR,0)
end
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(1,1,1),0.5,0,0.5,MAINRUINCOLOR)
end
local notsp = Instance.new("Part", char)
notsp.CanCollide = false
notsp.FormFactor = 3
notsp.Name = "Ring"
notsp.Material = "Neon"
notsp.Size = Vector3.new(10, 1, 10)
if kan.PlaybackLoudness >= 300 then
notsp.Size = Vector3.new(25, 1, 25)
end
notsp.Transparency = 1
notsp.TopSurface = 0
notsp.BottomSurface = 0
notsp.Anchored = true
notsp.CFrame = root.CFrame*CFrame.new(0,-3,0)
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",notsp)
eff.Texture = "rbxassetid://288898235"
eff.LightEmission = 0.5
eff.Color = ColorSequence.new(Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000))
eff.Rate = 300
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.8,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,40)
eff.Acceleration = vt(0,-75,0)
eff.Drag = 1
eff.Rotation = NumberRange.new(-10,10)
eff.VelocitySpread = 20
eff.RotSpeed = NumberRange.new(-1,1)
coroutine.resume(coroutine.create(function()
while true do
swait()
if eff.Parent ~= nil then
if ModeOfGlitch == 9 then
eff.Color = ColorSequence.new(Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000))
elseif ModeOfGlitch ~= 9 then
eff.Color = ColorSequence.new(MAINRUINCOLOR.Color)
end
else
break
end
end
end))
wait(0.1)
eff.Enabled = false
end))
game:GetService("Debris"):AddItem(notsp, 5)
end
end
end))


Humanoid.Name = "GGLITCHER"
Humanoid.MaxHealth = math.huge
Humanoid.Health = math.huge
Instance.new("ForceField",char).Visible = false

idleanim=.4
while true do
Humanoid.MaxHealth = math.huge
Humanoid.Health = math.huge
if mutedtog == false and duringend == false then
kan.Volume = currentVol
elseif mutedtog == true and duringend == false then
kan.Volume = 0
end
if duringend == false then
kan.PlaybackSpeed = currentPitch
kan.Pitch = currentPitch
end
kan.SoundId = currentThemePlaying
kan.Looped = true
kan.Parent = char
kan:Resume()

modeteller.Text = string.upper(modet.Text)
modeteller.TextColor3 = MAINRUINCOLOR.Color

swait()
handlexweld.C0=clerp(handlexweld.C0,cf(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.05 * math.cos(sine / 57))*angles(math.rad(0 + 2 * math.cos(sine / 55)),math.rad(0 + 2 * math.cos(sine / 46)),math.rad(0 + 2 * math.cos(sine / 32))),.3)

lwing1weld.C1=clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 42)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(90 + 5 * math.cos(sine / 56))),.3)
lwing2weld.C1=clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 45)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(130 + 5 * math.cos(sine / 56))),.3)
lwing3weld.C1=clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 48)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(50 + 5 * math.cos(sine / 56))),.3)
rwing1weld.C1=clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 36),0)*angles(math.rad(0 + 3 * math.cos(sine / 46)),math.rad(0 - 2 * math.cos(sine / 36)),math.rad(-90 - 5 * math.cos(sine / 56))),.3)
rwing2weld.C1=clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 38),0)*angles(math.rad(0 + 3 * math.cos(sine / 50)),math.rad(0 - 2 * math.cos(sine / 37)),math.rad(-130 - 5 * math.cos(sine / 56))),.3)
rwing3weld.C1=clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * math.cos(sine / 41),0)*angles(math.rad(0 + 3 * math.cos(sine / 40)),math.rad(0 - 2 * math.cos(sine / 51)),math.rad(-50 - 5 * math.cos(sine / 56))),.3)
--------------- Visualiser Zone
if ModeOfGlitch == 9 then
modet.TextColor3 = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
for i, v in pairs(mw2:GetChildren()) do
if v:IsA("Part") then
v.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
v.Material = "Neon"
end
end
for i, v in pairs(mw1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
v.Color = Color3.new(kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000,kan.PlaybackLoudness/1000)
v.Material = "Neon"
end
end
end
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
---------------
  sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if ModeOfGlitch == 1 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-10 + 2 * math.cos(sine / 43)),math.rad(0 - 2 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(0 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(10 - 2 * math.cos(sine / 43))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0 - 2 * math.cos(sine / 47)),math.rad(-10 + 2 * math.cos(sine / 43))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 + 3 * math.cos(sine / 48)),math.rad(-20 - 4 * math.cos(sine / 53)),math.rad(15 - 3 * math.cos(sine / 38))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-10 + 2 * math.cos(sine / 45)),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 39))),.1)
elseif ModeOfGlitch == 2 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) - 0.03 * math.cos(sine / 45),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-7.5 + 3 * math.cos(sine / 45)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) + 0.03 * math.cos(sine / 45),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5 - 3 * math.cos(sine / 45)),math.rad(5),math.rad(0 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.03 * math.cos(sine / 45),0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0 + 3 * math.cos(sine / 45)),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 2.5 * math.cos(sine / 28)),math.rad(0 + 5 * math.cos(sine / 99)),math.rad(0 + 10 * math.cos(sine / 78))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.01 * math.cos(sine / 28),0)*angles(math.rad(15 + 5 * math.cos(sine / 33)),math.rad(15 + 6 * math.cos(sine / 38)),math.rad(-10 - 3 * math.cos(sine / 42))),.1)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.05 * math.cos(sine / 28),-0.65)*angles(math.rad(40 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(90 + 5 * math.cos(sine / 28))),.1)
elseif ModeOfGlitch == 10 then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, -0.1 + 0.1 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-2.5 * math.sin(sine / 20)), math.rad(0), math.rad(0)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.9 - 0.1 * math.cos(sine / 20), 0.025 * math.cos(sine / 20)) * RHCF * angles(math.rad(-4.5), math.rad(0), math.rad(0)), 0.15)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.9 - 0.1 * math.cos(sine / 20), 0.025 * math.cos(sine / 20)) * LHCF * angles(math.rad(-6.5), math.rad(0), math.rad(0)), 0.15)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.4 + 0.05 * math.sin(sine / 30), 0.025 * math.cos(sine / 20)) * angles(math.rad(-30), math.rad(-0), math.rad(-30)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 + 0.05 * math.cos(sine / 30), 0.025 * math.cos(sine / 20)) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.1)
elseif ModeOfGlitch == 3 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(20 - 2 * math.cos(sine / 72)),math.rad(0 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-20 + 2 * math.cos(sine / 72))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(0 + 4 * math.cos(sine / 55)),math.rad(20 - 2 * math.cos(sine / 72))),.1)
RW.C0=clerp(RW.C0,cf(1.15,0.5 + 0.1 * math.cos(sine / 28),0.25)*angles(math.rad(-22 + 2 * math.cos(sine / 38)),math.rad(0),math.rad(-15 - 2 * math.cos(sine / 41))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 - 6 * math.cos(sine / 28)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(-20 + 5 * math.cos(sine / 34))),.1)
elseif ModeOfGlitch == 4 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-5),math.rad(0 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(10 + 3 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.03 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(0 + 2 * math.cos(sine / 57)),math.rad(-25)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(21 + 6 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-5 + 5 * math.cos(sine / 43)),math.rad(10 - 5 * math.cos(sine / 27)),math.rad(-5 - 3 * math.cos(sine / 36))),.1)
elseif ModeOfGlitch == 5 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) - 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1 + 4 * math.cos(sine / 50)),math.rad(0),math.rad(0 - 2 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) + 0.04 * math.cos(sine / 50),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5 - 4 * math.cos(sine / 50)),math.rad(18),math.rad(0 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.04 * math.cos(sine / 50),0 + 0.03 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 + 4 * math.cos(sine / 50)),math.rad(-18)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 1 * math.cos(sine / 28)),math.rad(-5 - 2.5 * math.cos(sine / 57)),math.rad(18)),.1)
RW.C0=clerp(RW.C0,cf(0.85,0.5 + 0.05 * math.cos(sine / 28),-0.65)*angles(math.rad(36 - 3 * math.cos(sine / 34)),math.rad(0 - 2 * math.cos(sine / 45)),math.rad(-80 + 5 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(7 + 3 * math.cos(sine / 49)),math.rad(12 + 2 * math.cos(sine / 52)),math.rad(-16 - 6 * math.cos(sine / 39))),.1)
elseif ModeOfGlitch == 6 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(2),math.rad(0),math.rad(-10 + 4 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(5 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-5 - 2 * math.cos(sine / 53))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 1 * math.cos(sine / 28)),math.rad(2 + 3 * math.cos(sine / 41)),math.rad(5 + 2 * math.cos(sine / 53))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-2 - 4 * math.cos(sine / 28)),math.rad(0),math.rad(14 + 8 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(5 + 3 * math.cos(sine / 46)),math.rad(10 + 5 * math.cos(sine / 52)),math.rad(-15 - 6 * math.cos(sine / 28))),.1)
elseif ModeOfGlitch == 7 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(1),math.rad(0 - 1 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(5),math.rad(0 + 1 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.01 * math.cos(sine / 34),0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 28)),math.rad(0 + 1 * math.cos(sine / 71)),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(4 - 4 * math.cos(sine / 28)),math.rad(-8),math.rad(10 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(5),math.rad(5),math.rad(5)),.1)
elseif ModeOfGlitch == 8 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.25),math.rad(0),math.rad(6 + 2 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-26 + 2 * math.cos(sine / 44))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 1 * math.cos(sine / 28)),math.rad(-5 + 3 * math.cos(sine / 47)),math.rad(26 - 2 * math.cos(sine / 44))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-2 - 3 * math.cos(sine / 30)),math.rad(25 - 3 * math.cos(sine / 38)),math.rad(28 - 6 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-0.95,0.65 + 0.075 * math.cos(sine / 28),-0.65)*angles(math.rad(90 + 2 * math.cos(sine / 73)),math.rad(25 + 5 * math.cos(sine / 24)),math.rad(73 - 3 * math.cos(sine / 65))),.1)
elseif ModeOfGlitch == 9 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) + kan.PlaybackLoudness/5000,-0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(-20),math.rad(0 - 2 * math.cos(sine / 56) + kan.PlaybackLoudness/450)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) - kan.PlaybackLoudness/6500,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(5),math.rad(0 + 2 * math.cos(sine / 56) + kan.PlaybackLoudness/500)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0 + 0.02 * math.cos(sine / 56) ,0 + 0.05 * math.cos(sine / 28) + kan.PlaybackLoudness/7000)*angles(math.rad(0 - 2 * math.cos(sine / 56)),math.rad(0),math.rad(30)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 + 2 * math.cos(sine / 28) - kan.PlaybackLoudness/60),math.rad(0 + 2 * math.cos(sine / 73)),math.rad(-30)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(40 + 5 * math.cos(sine / 34) + kan.PlaybackLoudness/7.5),math.rad(0),math.rad(28 - 2 * math.cos(sine / 38))),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.02 * math.cos(sine / 28),0)*angles(math.rad(10),math.rad(5),math.rad(7.5)),.4)
elseif ModeOfGlitch == 2000000000 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1.5),math.rad(0),math.rad(5 + 3 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(2 + 3 * math.cos(sine / 34)),math.rad(0),math.rad(34 - 3 * math.cos(sine / 54))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 4 * math.cos(sine / 28)),math.rad(0 - 1 * math.cos(sine / 44)),math.rad(-34 + 3 * math.cos(sine / 54))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(12 + 5 * math.cos(sine / 62)),math.rad(30 + 5 * math.cos(sine / 48)),math.rad(19 + 6 * math.cos(sine / 36))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(10 + 3 * math.cos(sine / 65)),math.rad(6 + 3 * math.cos(sine / 57)),math.rad(-20 - 7 * math.cos(sine / 36))),.1)
elseif ModeOfGlitch == 6000000000 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(2),math.rad(0),math.rad(-15 + 6 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(7.5 - 4 * math.cos(sine / 47))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 0.1 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(-1 + 4 * math.cos(sine / 62))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 28)),math.rad(5 - 6 * math.cos(sine / 79)),math.rad(1 - 4 * math.cos(sine / 62))),.1)
RW.C0=clerp(RW.C0,cf(0.85,0.5 + 0.01 * math.cos(sine / 28),-0.65)*angles(math.rad(38 + 2 * math.cos(sine / 33)),math.rad(0),math.rad(-95 - 3 * math.cos(sine / 28))),.1)
LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.01 * math.cos(sine / 28),-0.65)*angles(math.rad(45 - 3 * math.cos(sine / 37)),math.rad(0),math.rad(80 + 5 * math.cos(sine / 30))),.1)
elseif ModeOfGlitch == 9600000000 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28) + 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(7 - 5 * math.cos(sine / 44)),math.rad(0),math.rad(-6 - 3 * math.cos(sine / 34))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28) - 0.05 * math.cos(sine / 44),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(3 + 5 * math.cos(sine / 44)),math.rad(0),math.rad(0 + 3 * math.cos(sine / 34))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.05 * math.cos(sine / 44),0 + 0.03 * math.cos(sine / 34),-0.05 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0 - 5 * math.cos(sine / 44)),math.rad(-5)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5 - 2.5 * math.cos(sine / 28)),math.rad(10 + 5 * math.cos(sine / 62)),math.rad(17 + 5 * math.cos(sine / 59))),.1)
RW.C0=clerp(RW.C0,cf(1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(22 - 3 * math.cos(sine / 53)),math.rad(0),math.rad(-37 + 2 * math.cos(sine / 37))),.1)
LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),-0.45)*angles(math.rad(23 - 2 * math.cos(sine / 58)),math.rad(0),math.rad(38 - 3 * math.cos(sine / 57) )),.1)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
if ModeOfGlitch == 10 then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.025 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(4-2.5 * math.cos(sine / 3.5)), math.rad(0) - root.RotVelocity.Y / 75, math.rad(5 * math.cos(sine / 7))), 0.15)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-2.5 * math.sin(sine / 20)), math.rad(0), math.rad(0) - hed.RotVelocity.Y / 15), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 5 * math.cos(sine / 7)) - rl.RotVelocity.Y / 75 + -math.sin(sine / 7) / 2.5, math.rad(90 - 0.1 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 0.1 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
LH.C0 = clerp(LH.C0, cf(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 5 * math.cos(sine / 7)) + ll.RotVelocity.Y / 75 + math.sin(sine / 7) / 2.5, math.rad(-90 - 0.1 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 0.1 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
RW.C0 = clerp(RW.C0, cf(1.1, 0.4 + 0.05 * math.sin(sine / 30), 0.025 * math.cos(sine / 20)) * angles(math.rad(-30), math.rad(-0), math.rad(-30)), 0.1)
LW.C0 = clerp(LW.C0, cf(-1.1, 0.4 + 0.05 * math.sin(sine / 30), 0.025 * math.cos(sine / 20)) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.1)
elseif ModeOfGlitch ~= 9600000000 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
elseif ModeOfGlitch == 9600000000 then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 10 * math.cos(sine / 8)),math.rad(0 + 65 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 10 * math.cos(sine / 8)),math.rad(0 + 65 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.1,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(15 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15 + 3 * math.cos(sine / 4)),math.rad(0 - 10 * math.cos(sine / 8)),math.rad(0 - hed.RotVelocity.Y*2.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 80 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 80 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
if ModeOfGlitch ~= 6 and ModeOfGlitch ~= 8 and ModeOfGlitch ~= 2000000000 and ModeOfGlitch ~= 6000000000 then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(15 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5 + 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 6))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.5 * math.cos(sine / 6))*angles(math.rad(0 - 140 * math.cos(sine / 6)),math.rad(0),math.rad(5 - 20 * math.cos(sine / 3))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.5 * math.cos(sine / 6))*angles(math.rad(0 + 140 * math.cos(sine / 6)),math.rad(0),math.rad(-5 + 20 * math.cos(sine / 3))),.1)
if ModeOfGlitch == 7 then
sphereMK(2,-0.5,"Add",root.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.5,0.5,20,-0.0075,MAINRUINCOLOR,0)
sphereMK(3,0,"Add",root.CFrame*CFrame.new(0,0,8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.5,5,20,-0.0075,MAINRUINCOLOR,0)
end
elseif ModeOfGlitch == 6 or ModeOfGlitch == 8 or ModeOfGlitch == 2000000000 or ModeOfGlitch == 6000000000 then
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.5),math.rad(0),math.rad(-20 - 5 * math.cos(sine / 34))),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(1),math.rad(0),math.rad(20 + 2 * math.cos(sine / 38))),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 - 0.15 * math.cos(sine / 47),-0.5,0.5 + 0.1 * math.cos(sine / 28))*angles(math.rad(70),math.rad(0 - root.RotVelocity.Y),math.rad(0 - root.RotVelocity.Y *4.5 + 3 * math.cos(sine / 47))),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-17 - 5 * math.cos(sine / 52)),math.rad(0 - 3 * math.cos(sine / 37)),math.rad(0 + 2 * math.cos(sine / 78))),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.05 * math.cos(sine / 28),0)*angles(math.rad(-8 - 4 * math.cos(sine / 59)),math.rad(-20 + 7 * math.cos(sine / 62)),math.rad(20 + 5 * math.cos(sine / 50))),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.1 * math.cos(sine / 28),0)*angles(math.rad(-8 - 3 * math.cos(sine / 55)),math.rad(20 + 8 * math.cos(sine / 67)),math.rad(-20 - 4 * math.cos(sine / 29))),.2)
end
end
end
end
end