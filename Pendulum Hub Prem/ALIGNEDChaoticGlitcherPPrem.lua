
--//====================================================\\-
--||               CHAOTIC GLITCHER
--||             ALL PURPOSE SWITCHER...
--||	      CHAOTIC GLITCHER BY WANTH092
--||         EDIT HELPING BY KILLERZTH_1596
--\\====================================================//--
game.Players:Chat("-gh 4773932088,4315489767,4794315940,4506945409,4458601937,4524991457,4820152700")


loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

Workspace.non.MeshPartAccessory.Name = "Sword1"
Workspace.non.MeshPartAccessory.Name = "Sword2"
Workspace.non.MeshPartAccessory.Name = "Sword3"
Workspace.non.MeshPartAccessory.Name = "Sword4"
Workspace.non.BladeMasterAccessory.Name = "Blade1"
Workspace.non.ShadowBladeMasterAccessory.Name = "Blade2"










local args = {
    [1] = "Chaotic Achromatic (Convert By Emper Loaded |Pendulum Premium)",
    [2] = "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Chaotic Glitcher";
	Text = "Successfully Loaded Chaotic Glitcher! (Pendulum Premium";
})

wait(0.2)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Mouse = Player:GetMouse()
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Torso)
local SONG = 561833161
local RANDOMIZERMOOSICK = {492070484,1255569288,1873219898,929330882,290079189,250408242,494139763}
sick:Play()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
local RCHOICE = MRANDOM(1,7) 

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 13
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local BALL = IT("Folder", Character)
BALL.Name = "BALL-EYE"
local XEYE = IT("Folder", Character)
XEYE.Name = "X - EYE"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local WHITELIST = {}
local TAUNT = false
local OFFSET = 0
local FULL = false
local MODE = "Lunar"
local PITCH = 1
local VOLUME = 3
local FACE = 176217464
local SIZE = 1.2

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")
Frame_Speed = 1 / 60
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--//       NOOBYGAME12'S CODE
--\\=================================//

plr = game:GetService("Players").LocalPlayer
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
Player = plr
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
local Player_Size = 0
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor


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

local mutedtog = false

function CameraEnshaking(Length,Intensity)
coroutine.resume(coroutine.create(function()
      local intensity = 1*Intensity
      local rotM = 0.01*Intensity
for i = 0, Length, 0.1 do
Swait()
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
Swait()
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
Swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
text.TextTransparency = text.TextTransparency  + 1
text.TextStrokeTransparency = text.TextStrokeTransparency + 1
for i = 0, 74*timeex do
Swait()
text.TextTransparency = 1
text.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
Swait()
tecks2.Text = text
tecks3.Text = text
text.TextTransparency = text.TextTransparency - .02
text.TextStrokeTransparency = text.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
Swait()
tecks2.Text = text
tecks3.Text = text
text.TextTransparency = text.TextTransparency - .02
text.TextStrokeTransparency = text.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
text.TextTransparency = 0
text.TextStrokeTransparency = 0
if toggleTag == false then
text.TextTransparency = 1
text.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end



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
--------------------------- GUI STUFF
local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local fullscreenz = it("Frame")
fullscreenz.Parent = basgui
fullscreenz.BackgroundColor3 = Color3.new(255, 255, 255)
fullscreenz.BackgroundTransparency = 1
fullscreenz.BorderColor3 = Color3.new(17, 17, 17)
fullscreenz.Size = UDim2.new(1, 0, 1, 0)
fullscreenz.Position = UDim2.new(0, 0, 0, 0)
local imgl2 = Instance.new("ImageLabel",fullscreenz)
imgl2.BackgroundTransparency = 1
imgl2.BorderSizePixel = 0
imgl2.ImageTransparency = 0.5
imgl2.Position = UDim2.new(0.70,-200,0.50,-200)
imgl2.Size = UDim2.new(0,1000,0,1000)
imgl2.Image = "rbxassetid://2344830904"
local techc = imgl2:Clone()
techc.Parent = fullscreenz
techc.ImageTransparency = 0
techc.Size = UDim2.new(0,900,0,900)
techc.Position = UDim2.new(0.70,-150,0.50,-150)
techc.Image = "rbxassetid://2092248396"
local circl = imgl2:Clone()
circl.Parent = fullscreenz
circl.ImageTransparency = 0
circl.Size = UDim2.new(0,550,0,550)
circl.Position = UDim2.new(0.70,25,0.50,25)
circl.Image = "rbxassetid://2312119891"
local circl2 = imgl2:Clone()
circl2.Parent = fullscreenz
circl2.ImageTransparency = 0
circl2.Size = UDim2.new(0,700,0,700)
circl2.Position = UDim2.new(0.70,-50,0.50,-50)
circl2.Image = "rbxassetid://2312119891"
local imgl2b = imgl2:Clone()
imgl2b.Parent = fullscreenz
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,800,0,800)
imgl2b.Position = UDim2.new(0.70,-100,0.50,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
local ned = Instance.new("TextLabel",fullscreenz)
ned.ZIndex = 2
ned.Font = "Bodoni"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.6,0,0.6,0)
ned.Position = UDim2.new(0,0,0,0)
ned.TextScaled = true
ned.TextStrokeTransparency = 0
ned.Text = "Lunar"
ned.TextSize = 48
ned.Rotation = 1
ned.TextXAlignment = "Left"
ned.TextYAlignment = "Top"

--//=================================\\
--//          WINGY STUFF
--\\=================================//

local extrawingmod1 = Instance.new("Model",Character)
local extrawingmod2 = Instance.new("Model",Character)

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

function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
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

local halocolor = BrickColor.new("Mid gray")
local halocolor2 = BrickColor.new("Mid gray")
local halocolor3 = BrickColor.new("Really black")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Deep blue")
local maincolor = BrickColor.new("Lapis")
local secondcolor = BrickColor.new("Lapis")
local m = Instance.new("Model",Character)
local m2 = Instance.new("Model",Character)
local m3 = Instance.new("Model",Character)
local mw1 = Instance.new("Model",Character)
local mw2 = Instance.new("Model",Character)
local mw3 = Instance.new("Model",Character)
local mw4 = Instance.new("Model",Character)

--------------
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,RightArm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,LeftArm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,Torso,handlex,0,0,-1.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
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
local handleweld = CreateWeld(handle,Torso,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))



--- Left wing.

local lwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWeld(lwing1,handle,lwing1,4,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

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
local lwing2weld = CreateWeld(lwing2,handle,lwing2,5,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

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
local lwing3weld = CreateWeld(lwing3,handle,lwing3,5.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

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


-- Right wing --

local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-4,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing1,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing1,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing2 = CreateParta(m,1,1,"Neon",secondcolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-5,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing2,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing2,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local rwing3 = CreateParta(m,1,1,"Neon",secondcolor)
CreateMesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-5.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))


wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.5,1.5)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.5,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,0.25,1.75)
CreateWeld(wed,rwing3,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",halocolor2)
CreateMesh(wed,"Wedge",0.05,1.75,0.25)
CreateWeld(wed,rwing3,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
--checkpoint wuw









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
tl1.Color = ColorSequence.new(halocolor.Color)
tl1.Lifetime = 0.5

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
tl2.Color = ColorSequence.new(halocolor.Color)
tl2.Lifetime = 0.5

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
tl3.Color = ColorSequence.new(halocolor.Color)
tl3.Lifetime = 0.5

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
tr1.Color = ColorSequence.new(halocolor2.Color)
tr1.Lifetime = 0.5

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
tr2.Color = ColorSequence.new(halocolor2.Color)
tr2.Lifetime = 0.5

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
tr3.Color = ColorSequence.new(halocolor2.Color)
tr3.Lifetime = 0.5
--models rename
Workspace.non.Model.Name = "NothingUseful"
Workspace.non.Model.Name = "NothingUseful"
Workspace.non.Model.Name = "NothingUseful"
Workspace.non.Model.Name = "WingsHandles"
Workspace.non.Model.Name = "NothingUseful"
Workspace.non.Model.Name = "NothingUseful"
Workspace.non.Model.Name = "Wings"
Workspace.non.Model.Name = "Halo"
--parts rename
Workspace.non.Halo.Part.Name = "HaloPart"

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Evil Aura"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.Halo.HaloPart -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0) -- Angles
wait()
print("Ran with no errors")
-----WINGS PARTS rename

game:GetService("Workspace").non.WingsHandles.Part.Name = "Useless"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Useless"
game:GetService("Workspace").non.WingsHandles.Part.Name = "WINGSHANDLESR"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Blade1H"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Sword1H"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Sword2H"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Blade2H"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Sword3H"
game:GetService("Workspace").non.WingsHandles.Part.Name = "Sword4H"

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Blade1"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Blade1H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(-1,0,0)*CFrame.Angles(math.rad(0),math.rad(0),1) -- Angles
wait()
print("Ran with no errors")



local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword1"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Sword1H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),1) -- Angles
wait()
print("Ran with no errors")


local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword2"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Sword2H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(1.50,0,0)*CFrame.Angles(math.rad(0),math.rad(0),1) -- Angles
wait()
print("Ran with no errors")


local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Blade2"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Blade2H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(-1,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0.60) -- Angles
wait()
print("Ran with no errors")



local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword3"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Sword3H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0.60) -- Angles
wait()
print("Ran with no errors")


local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Sword4"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = game:GetService("Workspace").non.WingsHandles.Sword4H -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(1.50,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0.60) -- Angles
wait()
print("Ran with no errors")
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
local MAINRUINCOLOR = BrickColor.new("Navy blue")
local SECONDRUINCOLOR  = BrickColor.new("Navy blue")
local THIRDRUINCOLOR = BrickColor.new("Really black")

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
imgl2.ImageColor3 = one.Color
circl.ImageColor3 = two.Color
techc.ImageColor3 = one.Color
circl2.ImageColor3 = one.Color
ned.TextColor3 = two.Color
ned.TextStrokeColor3 = one.Color
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

imgl2.ImageColor3 = MAINRUINCOLOR.Color
circl.ImageColor3 = SECONDRUINCOLOR.Color
techc.ImageColor3 = MAINRUINCOLOR.Color
circl2.ImageColor3 = MAINRUINCOLOR.Color
ned.TextColor3 = MAINRUINCOLOR.Color
ned.TextStrokeColor3 = SECONDRUINCOLOR.Color


function bosschatfunc(text,color,watval)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "Chaotic:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
Swait()
if MODE == "Sanity" then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
Swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 9 do
		Swait()
		fval = fval + 0.05
		flol = flol - 0.1
		flil = flil - 0.1
		txtlb.Text = ""
		txtlb.Position = UDim2.new(0,0,flol,0)
		txtlb2.Position = UDim2.new(0,0,flil,0)
	end
	txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
Swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end

function BigBlack(text,color,watval)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 1
txtlb.BackgroundTransparency = 1
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,1,0)
txtlb.TextXAlignment = "Center"
txtlb.Position = UDim2.new(0,0,6.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "Chaotic:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
Swait()
if MODE == "Sanity" then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
Swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.05
local flil = 0.75
local flil2 = -0.2
	coroutine.resume(coroutine.create(function()
	for i = 1,string.len(text),1 do
		wait()
		text.Text = string.sub(text,1,i)
	end
	end))
coroutine.resume(coroutine.create(function()
	for i = 0, 1 do
		fval = fval + 0.05
		flol = flol - 0.1
		flil2 = flil2 + 0.1
		txtlb.Text = ""
		txtlb.Position = UDim2.new(flil2,0,0,0)
		txtlb.BackgroundTransparency = 1 - 0.1
		txtlb2.Position = UDim2.new(flil2,0,0,0)
	end
	
		for i = 0, 99 do
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency - 0.01
txtlb.TextTransparency = txtlb.TextTransparency - 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency - 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency - 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency - 0.0025
	end
	
	txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
Swait()
valinc = valinc + 0.0002
flol = flol + valinc
flil2 = flil2 + valinc
txtlb.Rotation = txtlb.Rotation + valinc*15
txtlb2.Rotation = txtlb2.Rotation - valinc*15
txtlb.Position = UDim2.new(flil2,0,0,0)
txtlb2.Position = UDim2.new(flil2,0,0,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end

RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)

--//=================================\\
--||          SOME TAG EDIT
--\\=================================//
local TEXTCOLOR = C3(0, 0, 1)

m = game.Players.LocalPlayer
char = m.Character
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char.Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-18.75, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(20, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Bodoni"
v = Instance.new("Part")
v.Name = "ColorBrick"
v.Parent = m.Character
v.FormFactor = "Symmetric"
v.Anchored = true
v.CanCollide = false
v.BottomSurface = "Smooth"
v.TopSurface = "Smooth"
v.Size = Vector3.new(10, 5, 3)
v.Transparency = 1
v.CFrame = char.Torso.CFrame
v.BrickColor = BrickColor.new("Really black")
v.Transparency = 1
v.Shape = "Block"
text.Text = "Lunar"

function RecolorTextAndRename(name,col1,col2,font)
text.TextStrokeColor3 = col2
text.TextColor3 = col1
text.Font = font
text.Text = name
techc.ImageColor3 = col2
circl.ImageColor3 = col2
circl2.ImageColor3 = col1
imgl2.ImageColor3 = col1
imgl2b.ImageColor3 = col2
ned.Text = name
ned.TextColor3 = col1
ned.TextStrokeColor3 = col2
end
--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//



function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",nil)
PE.LightEmission=.8
PE.Color = ColorSequence.new(BRICKC("Really red").Color)
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,1.5)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=999
PE.VelocitySpread = 10000
PE.Acceleration = Vector3.new(0,0,0)
PE.Drag = 5
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1351966707"
PE.ZOffset = -0
PE.Name = "PE"
PE.Enabled = false

function particles(art)
	local PARTICLES = PE:Clone()
	PARTICLES.Parent = art
end

function CreateDebreeRing(FLOOR,POSITION,SIZE,BLOCKSIZE,SWAIT)
	if FLOOR ~= nil then
		coroutine.resume(coroutine.create(function()
			local PART = CreatePart(3, Effects, "Plastic", 0, 1, "Pearl", "DebreeCenter", VT(0,0,0))
			PART.CFrame = CF(POSITION)
			for i = 1, 45 do
				local RingPiece = CreatePart(3, Effects, "Plastic", 0, 0, "Pearl", "DebreePart", BLOCKSIZE)
				RingPiece.Material = FLOOR.Material
				RingPiece.Color = FLOOR.Color
				RingPiece.CFrame = PART.CFrame * ANGLES(RAD(0), RAD(i*8), RAD(0)) * CF(SIZE, 0, 0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
				Debris:AddItem(RingPiece,SWAIT)
			end
			PART:remove()
		end))
	end
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "Sphere"
    mesh.Scale = SIZE
    mesh.Offset = VT(0,0,0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end


bosschatfunc("Hi..",MAINRUINCOLOR.Color,1)

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,100,0,40)
	Bill.StudsOffset = Vector3.new(0,3,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Fantasy"
	Hehe.TextSize = 40
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			wait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			Hehe.Rotation = math.random(-5,5)
			Hehe.TextColor3 = Color3.new(27/255,42/255,53/255)
			Hehe.TextStrokeColor3 = Color3.new(0,0,0)
		end
	end))
	for i = 1,string.len(text),1 do
		wait()
		Hehe.Text = string.sub(text,1,i)
	end
	wait(1)--Re[math.random(1, 93)]
	for i = 0, 1, .025 do
		wait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end

function onChatted(msg)
	chatfunc(msg)
end

local PRT = CreatePart(3, Character, "Fabric", 0, 0, "Really black", "Hood", VT(1,1,1),false)
PRT.Color = C3(0,0,0)
local HoodWeld = CreateWeldOrSnapOrMotor("Weld", Head, Head, PRT, CF(0,0.2,0), CF(0, 0, 0))
CreateMesh("SpecialMesh", PRT, "FileMesh", "76062497", "", VT(1,1,1)*1.05, VT(0,0,0))
local PRT = CreatePart(3, Character, "Neon", 0, 0, "Deep orange", "Scarf", VT(1,1,1),false)
PRT.Color = C3(0/255,0/255,255/255)
CreateWeldOrSnapOrMotor("Weld", Torso, Torso, PRT, CF(0.05,0.4,-0.05) * ANGLES(RAD(-3), RAD(0), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", PRT, "FileMesh", "99856331", "", VT(1.1,1,1.1), VT(0,0,0))
for i = 1, 16 do
	local FACE = CreatePart(3, Character, "Fabric", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
	FACE.Color = C3(0,0,0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.45-(i-1)/25,0), CF(0, 0, 0))
end
local EYE = CreatePart(3, BALL, "Neon", 0, 0, "Navy blue", "Eyeball", VT(0.1,0.25,0.1),false)
MakeForm(EYE,"Ball")
EYE.Color = C3(0/255,0/255,255/255)
CreateWeldOrSnapOrMotor("Weld", BALL, Head, EYE, CF(0.15,0.26,-0.55), CF(0, 0, 0))
local EYE2 = CreatePart(3, BALL, "Neon", 0, 0, "Navy blue", "Eyeball", VT(0.1,0.25,0.1),false)
MakeForm(EYE2,"Ball")
EYE2.Color = C3(0/255,0/255,255/255)

CreateWeldOrSnapOrMotor("Weld", BALL, Head, EYE2, CF(-0.15,0.26,-0.55), CF(0, 0, 0))

local LASTPART = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Really blue", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/0,0,0)
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Really blue", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/0,0,0)
	end
end
local LASTPART = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Really blue", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/0,0,0)
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Really blue", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3((i*3-3)/0,0,0)
	end
end

local Hair = CreatePart(3, Character, "Fabric", 0, 0, "Navy blue", "Hair", VT(1,1,1),false)
local HairWeld1 = CreateWeldOrSnapOrMotor("Weld", Hair, Head, Hair, CF(0,0.1,-0.25) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
Hair.Color = C3(0/255,0/255,255/255)
CreateMesh("SpecialMesh", Hair, "FileMesh", "873651376", "", VT(0.025, 0.025, 0.02), VT(0,0,0))
local Hair2 = CreatePart(3, Character, "Fabric", 0, 0, "Navy blue", "Hair", VT(1,1,1),false)
local Hair2Weld2 = CreateWeldOrSnapOrMotor("Weld", Hair2, Head, Hair2, CF(0,0.2,-0.3) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
Hair2.Color = C3(0/255,0/255,255/255)
CreateMesh("SpecialMesh", Hair2, "FileMesh", "873651376", "", VT(0.03, 0.015, 0.01), VT(0,0,-0.1))

local BODY = {}

for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil})
	end
end

local Eye = CreatePart(3, XEYE, "Neon", 0, 0, "Really red", "Eye", VT(0.6,0.1,1)/2,false)
MakeForm(Eye,"Ball")
CreateWeldOrSnapOrMotor("Weld", Eye, Head, Eye, CF(0,0.2,0) * ANGLES(RAD(0), RAD(-18), RAD(15)), CF(0, 0, 0.4))
local Eye = CreatePart(3, XEYE, "Neon", 0, 0, "Really red", "Eye", VT(0.1,1,1)/2,false)
MakeForm(Eye,"Ball")
CreateWeldOrSnapOrMotor("Weld", Eye, Head, Eye, CF(0,0.15,0) * ANGLES(RAD(0), RAD(-18), RAD(0)), CF(0, 0, 0.4))
local Eye2 = CreatePart(3, XEYE, "Neon", 0, 0, "Really red", "Eyeball", VT(0.1,0.25,0.1),false)
MakeForm(Eye2,"Ball")
CreateWeldOrSnapOrMotor("Weld", XEYE, Head, Eye2, CF(-0.15,0.15,-0.55), CF(0, 0, 0))


XEYE.Parent = nil
BALL.Parent = Character

for e = 1, #BODY do
	if BODY[e] ~= nil then
		local STUFF = BODY[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end

local SKILLTEXTCOLOR = C3(0,0,0)
local SKILLFONT = "Antique"
local SKILLTEXTSIZE = 7

function Blink()
	coroutine.resume(coroutine.create(function()
		if EYE ~= nil then
			for i = 1, 5 do
				Swait()
				EYE.Mesh.Scale = EYE.Mesh.Scale - VT(0,0.2,0)
				EYE2.Mesh.Scale = EYE.Mesh.Scale
			end
			for i = 1, 7 do
				Swait()
				EYE.Mesh.Scale = EYE.Mesh.Scale + VT(0,0.2,0)
				EYE2.Mesh.Scale = EYE.Mesh.Scale
			end
			EYE.Mesh.Scale = VT(1,1,1)
			EYE2.Mesh.Scale = EYE.Mesh.Scale
		end
	end))
end

function Blink2()
	coroutine.resume(coroutine.create(function()
		if Eye ~= nil then
			for i = 1, 5 do
				Swait()
				Eye.Mesh.Scale = EYE.Mesh.Scale - VT(0,0.2,0)
				Eye2.Mesh.Scale = EYE.Mesh.Scale
			end
			for i = 1, 7 do
				Swait()
				Eye.Mesh.Scale = EYE.Mesh.Scale + VT(0,0.2,0)
				Eye2.Mesh.Scale = EYE.Mesh.Scale
			end
			Eye.Mesh.Scale = VT(1,1,1)
			Eye2.Mesh.Scale = EYE.Mesh.Scale
		end
	end))
end

function refit()
	Character.Parent = workspace
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

Humanoid.Died:connect(function()
	refit()
end)

--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p,CFRAME.p+VT(MRANDOM(-5,5),MRANDOM(0,5),MRANDOM(-5,5)))
	local BODYGYRO = IT("BodyGyro", STATPART)
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = SKILLFONT
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 0
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		for i = 1, 50 do
			Swait()
			STATPART.CFrame = STATPART.CFrame * CF(0,0,-0.2)
			TEXTLABEL.TextTransparency = TEXTLABEL.TextTransparency + (1/50)
			TEXTLABEL.TextStrokeTransparency = TEXTLABEL.TextTransparency
		end
		THEPART.Parent = nil
	end),STATPART, TEXTLABEL)
end

--//=================================\\
--||			DAMAGING
--\\=================================//

function KillChildren(v)
	v:BreakJoints()
	for _, c in pairs(v:GetChildren()) do
		if c:IsA("BasePart") then
			if c.Transparency < 1 then
				if c:FindFirstChildOfClass("Decal") then
					c:FindFirstChildOfClass("Decal"):remove()
				end
				particles(c)
				c.PE.Enabled = true
				c.Parent = Effects
				c.CanCollide = false
				c.Material = "Neon"
				c.Color = C3(1,0,0)
				c.Transparency = 1
				local grav = Instance.new("BodyPosition",c)
				grav.P = 20000
				grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
				grav.position = c.Position + VT(MRANDOM(-5,5),MRANDOM(-5,5),MRANDOM(-5,5))
				grav.Name = "GravityForce"
				coroutine.resume(coroutine.create(function()
					for i = 1, 20 do
						Swait()
						c.Transparency = c.Transparency + 1/20
					end
					c.PE.Enabled = false
					Debris:AddItem(c,2)
				end))
			end
		end
	end
end

function ApplyAoE(POSITION,RANGE)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local LISTED = false
			for LIST = 1, #WHITELIST do
				if WHITELIST[LIST] ~= nil then
					if CHILD.Name == WHITELIST[LIST] then
						LISTED = true
					end
				end
			end
			if LISTED == false then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO then
						if (TORSO.Position - POSITION).Magnitude <= RANGE+TORSO.Size.Magnitude then
							KillChildren(CHILD)
						end
					end
				end
			end
		end
	end
end

function ApplyDamage(Humanoid,Damage,TorsoPart)
	local defence = Instance.new("BoolValue",Humanoid.Parent)
	defence.Name = ("HitBy"..Player.Name)
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = nil
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1,100)
		if Damage > Humanoid.Health then
			Damage = nil
			if Damage == 0 then
				Damage = 0.1
			end
		end
		Humanoid.Health = Humanoid.Health - Damage
	end
end

function ApplyAoE2(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ApplyDamage(HUM,DMG,TORSO)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	     MODE SWITCHING
--\\=================================//

function ResetMode()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 561833161
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 7
        FACE = 176217464
        Speed = 13
        text.Text = "Lunar"
        TEXTCOLOR = C3(0, 0, 1)
		EYE.Color = C3(0/255,0/255,255/255)
		EYE2.Color = C3(0/255,0/255,255/255)
		Hair.Color = C3(0/255,0/255,255/255)
		Hair2.Color = C3(0/255,0/255,255/255)
		PRT.Color = C3(0/255,0/255,255/255)
        MAINRUINCOLOR = BrickColor.new("Navy blue")
        SECONDRUINCOLOR  = BrickColor.new("Navy blue")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
        bosschatfunc("I'm bored..",MAINRUINCOLOR.Color,1)
		MODE = "Lunar"
        ned.Text = "Lunar"
	ATTACK = false
	Rooted = false
	end

function SolarForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 1259692095
        PITCH = 1
        VOLUME = 4
        sick.TimePosition = 0
        FACE = 404306534
        Speed = 16
        text.Text = "Solar"
        TEXTCOLOR = C3(215/255,147/255,0/255)
		PRT.Color = C3(215/255,147/255,0/255)
		EYE.Color = C3(215/255,147/255,0/255)
		EYE2.Color = C3(143/255,98/255,0/255)
		Hair.Color = C3(215/255,147/255,0/255)
		Hair2.Color = C3(171/255,117/255,0/255)
        MAINRUINCOLOR = BrickColor.new("Neon orange")
        SECONDRUINCOLOR  = BrickColor.new("Neon orange")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
		MODE = "Solar"
        ned.Text = "Solar"
	ATTACK = false
	Rooted = false
end

function SuperiorForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 1873219898
        PITCH = 1
        VOLUME = 4
        sick.TimePosition = 0.01
        FACE = 404306534
        Speed = 25
        text.Text = "Superior"
        TEXTCOLOR = C3(107/255,0/255,0/255)
		PRT.Color = C3(117/255,0/255,0/255)
		EYE.Color = C3(255/255,0/255,0/255)
		EYE2.Color = C3(255/255,0/255,0/255)
		Hair.Color = C3(151/255,0/255,0/255)
		Hair2.Color = C3(151/255,0/255,0/255)
        MAINRUINCOLOR = BrickColor.new("Really black")
        SECONDRUINCOLOR  = BrickColor.new("Really red")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
		MODE = "Superior"
        ned.Text = "Superior"
	ATTACK = false
	Rooted = false
end

function BlackWhiteForm()
	ATTACK = true
	Rooted = true
	XEYE.Parent = nil
	BALL.Parent = Character
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
    text.Text = " "
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.5, 1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(20), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(20), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
        WACKYEFFECT({Time = 60, EffectType = "Wave", Size = VT(12,0.55,12), Size2 = VT(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = C3(0/255, 0/255, 0/255), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	UNANCHOR = false
	RootPart.Anchored = true
	for i = 0, 2, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0.05 * COS(SINE / 12), 0, -10 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(20), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(20), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, 0.5) * ANGLES(RAD(-25 - 4 * COS(SINE / 12)), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-30 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
        WACKYEFFECT({Time = 60, EffectType = "Wave", Size = VT(12,0.55,12), Size2 = VT(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = C3(255/255, 255/255, 255/255), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	    UNANCHOR = true
	    RootPart.Anchored = false
        MODE = "90s"
		SONG = 1166995642
        PITCH = 1
        VOLUME = 3.5
        sick.TimePosition = 17.5
        FACE = 2365263255
        Speed = 16
        text.Text = "90's"
        ned.Text = "90's"
        TEXTCOLOR = C3(255/255,255/255,255/255)
		PRT.Color = C3(255/255,255/255,255/255)
		EYE.Color = C3(95/255,95/255,95/255)
		EYE2.Color = C3(95/255,95/255,95/255)
		Hair.Color = C3(255/255,255/255,255/255)
		Hair2.Color = C3(27/255,42/255,53/255)
        MAINRUINCOLOR = BrickColor.new("Institutional white")
        SECONDRUINCOLOR  = BrickColor.new("Black")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function EightyForm()
	ATTACK = true
	Rooted = true
	XEYE.Parent = nil
	BALL.Parent = Character
    text.Text = " "
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, 0.5) * ANGLES(RAD(-25 - 4 * COS(SINE / 12)), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-30 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
        WACKYEFFECT({Time = 60, EffectType = "Wave", Size = VT(12,0.55,12), Size2 = VT(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = C3(0/255, 0/255, 0/255), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	UNANCHOR = false
	RootPart.Anchored = true
	for i = 0, 2, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -11 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, 0.5) * ANGLES(RAD(-25 - 4 * COS(SINE / 12)), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-30 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, 0.5) * ANGLES(RAD(-25 - 4 * COS(SINE / 12)), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-30 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	UNANCHOR = true
	RootPart.Anchored = false
        WACKYEFFECT({Time = 60, EffectType = "Wave", Size = VT(12,0.55,12), Size2 = VT(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = C3(255/255, 255/255, 255/255), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
        MODE = "80s"
        text.Text = "80's"
        ned.Text = "80's"
        TEXTCOLOR = C3(27/255,42/255,53/255)
		PRT.Color = C3(27/255,42/255,53/255)
		EYE.Color = C3(95/255,95/255,95/255)
		EYE2.Color = C3(95/255,95/255,95/255)
		Hair.Color = C3(27/255,42/255,53/255)
		Hair2.Color = C3(255/255,255/255,255/255)
        MAINRUINCOLOR = BrickColor.new("Black")
        SECONDRUINCOLOR  = BrickColor.new("Institutional white")
        FACE = 2365263255
		SONG = 1141556798
        PITCH = 1
        VOLUME = 3.5
        sick.TimePosition = 0.1
        Speed = 16
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	    UNANCHOR = true
	    RootPart.Anchored = false
	ATTACK = false
	Rooted = false
end

function BlackForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
	SONG = 1420353940
    PITCH = 1
    VOLUME = 2.5
    sick.TimePosition = 0.5
    text.Text = ""
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(0),RAD(0))*CF(0,1,0).p
    chatfunc("Riddle me this..")
    BigBlack("Riddle me This.",MAINRUINCOLOR.Color,3)
	for i=0, 4, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.3) * ANGLES(RAD(-40), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)				
	end
    BigBlack("Riddle me that.",MAINRUINCOLOR.Color,3)
	chatfunc("Riddle me that..")
	for i=0, 4, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, 0.3) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(-30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)			
	end
	BigBlack("Who's afraid of The Big Black?",MAINRUINCOLOR.Color,1.5)
	chatfunc("Who's afraid of The Big Black?")
	for i=0, 5, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.05 * COS(SINE / 30)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35 - 2.5 * SIN(SINE / 30)), RAD(0), RAD(0)), 0.1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 30), -0.5) * ANGLES(RAD(170), RAD(0), RAD(-40)) * RIGHTSHOULDERC0, 0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 30), -0.5) * ANGLES(RAD(170), RAD(0), RAD(40)) * LEFTSHOULDERC0, 0.1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.025 * COS(SINE / 30), -0.5) * ANGLES(RAD(15), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 - 0.025 * COS(SINE / 30), -0.5) * ANGLES(RAD(15), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.1 / Animation_Speed)				
	end
    WACKYEFFECT({Time = 50 ,EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(75,75,75), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.CFrame.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
    WACKYEFFECT({Time = 150 ,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(90,90,90), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.CFrame.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Box", Size = VT(0,0,0), Size2 = VT(5,150,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(5,100,5), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	CreateSound(206082327,Torso,3,1,false)
	for i=0, 0.7, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.3 + 0.05 * COS(SINE / 30)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 30)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1 - 0.1 * COS(SINE / 30), 0) * ANGLES(RAD(-20), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 1 - 0.1 * COS(SINE / 30), 0) * ANGLES(RAD(-20), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.025 * COS(SINE / 30), 0) * ANGLES(RAD(15), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.025 * COS(SINE / 30), 0) * ANGLES(RAD(15), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)				
	end
		MODE = "Black"
        FACE = 148988280
        Speed = 45
        text.Text = "THE BIG BLACK"
        ned.Text = "TBB"
        TEXTCOLOR = C3(27/255,42/255,53/255)
		PRT.Color = C3(27/255,42/255,53/255)
		EYE.Color = C3(27/255,42/255,53/255)
		EYE2.Color = C3(27/255,42/255,53/255)
		Hair.Color = C3(27/255,42/255,53/255)
		Hair2.Color = C3(27/255,42/255,53/255)
        MAINRUINCOLOR = BrickColor.new("Black")
        SECONDRUINCOLOR  = BrickColor.new("Black")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function LostForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 723652641
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0.5
        FACE = 0
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(0),RAD(0))*CF(0,1,0).p
    CreateSound(136007472,Torso,5,1.2,false)
	for i=0, 2.5, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1 + 0.75 * COS(SINE / 1) - 0.75 * COS(SINE / 1), 0.5 + 0.75 * COS(SINE / 1), -0.5) * ANGLES(RAD(155), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1 - 0.75 * COS(SINE / 1) + 0.75 * COS(SINE / 1), 0.5 - 0.75 * COS(SINE / 1), -0.5) * ANGLES(RAD(155), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.25 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)			
	end
    WACKYEFFECT({Time = 75 ,EffectType = "Sphere", Size = VT(75,75,75), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.CFrame.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
    WACKYEFFECT({Time = 50 ,EffectType = "Block", Size = VT(90,90,90), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.CFrame.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 75 ,EffectType = "Box", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    WACKYEFFECT({Time = 50 ,EffectType = "Crystal", Size = VT(5,100,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(POSITION)*ANGLES(RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270)),RAD(MRANDOM(180,270))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    CreateSound(847061203,Torso,3,1,false)
    CreateSound(239000203,Torso,3,1,false)
    CreateSound(579687077,Torso,3,0.75,false)
        MODE = "LostHope"
        Speed = 12
        text.Text = "The Lost"
        ned.Text = "Lost"
        TEXTCOLOR = C3(0/255,0/255,0/255)
		PRT.Color = C3(0/255,0/255,0/255)
		EYE.Color = C3(0/255,0/255,0/255)
		EYE2.Color = C3(0/255,0/255,0/255)
		Hair.Color = C3(0/255,0/255,0/255)
		Hair2.Color = C3(0/255,0/255,0/255)
        MAINRUINCOLOR = BrickColor.new("Really black")
        SECONDRUINCOLOR  = BrickColor.new("Really black")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	for i=0, 1.5, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0), RAD(-30)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)			
	end
	ATTACK = false
	Rooted = false
end

function TerraForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 157460916
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0
        FACE = 155195214
        Speed = 27
        MODE = "Hexa"
        text.Text = "Terra"
        ned.Text = "Terra"
        TEXTCOLOR = C3(170/255,85/255,0/255)
		PRT.Color = C3(86/255,66/255,54/255)
		EYE.Color = C3(39/255,70/255,45/255)
		EYE2.Color = C3(39/255,70/255,45/255)
		Hair.Color = C3(39/255,70/255,45/255)
		Hair2.Color = C3(39/255,70/255,45/255)
        MAINRUINCOLOR = BrickColor.new("Dirt brown")
        SECONDRUINCOLOR  = BrickColor.new("Dirt brown")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function RandomForm()
	ATTACK = true
	Rooted = true
	XEYE.Parent = nil
	BALL.Parent = Character
	    UNANCHOR = true
	    RootPart.Anchored = false
        MODE = "Random"
		SONG = 0
        PITCH = 1
        VOLUME = 3.5
        sick.TimePosition = 0
        FACE = 2365263255
        Speed = 20
        text.Text = "Randomizer"
        ned.Text = "Randomizer"
        TEXTCOLOR = BrickColor.Random().Color
		PRT.Color = BrickColor.Random().Color
		EYE.Color = BrickColor.Random().Color
		EYE2.Color = BrickColor.Random().Color
		Hair.Color = BrickColor.Random().Color
		Hair2.Color = BrickColor.Random().Color
        MAINRUINCOLOR = BrickColor.Random()
        SECONDRUINCOLOR  = BrickColor.Random()
        RecolorThing(BrickColor.Random(),BrickColor.Random(),BrickColor.Random(),BrickColor.Random(),BrickColor.Random(),1,BrickColor.Random(),1,BrickColor.Random(),BrickColor.Random())
	ATTACK = false
	Rooted = false
end

function VantaForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 190845741
        PITCH = 1
        VOLUME = 6
        sick.TimePosition = 12.5
		wait(1)
		for i=0, 2.5, 0.1 / Animation_Speed do
		    Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 - 0.1 * COS(SINE / 12), -1) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.1 - 0.1 * COS(SINE / 12), -0.5) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.025 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)				
        end
		MODE = "Vanta"
        WACKYEFFECT({Time = 30 ,EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.CFrame.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(107/255,50/255,124/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        FACE = 404306534
        Speed = 12
        text.Text = "Vanta-X"
        ned.Text = "Vanta-X"
        TEXTCOLOR = C3(107/255,50/255,124/255)
		PRT.Color = C3(107/255,50/255,124/255)
		EYE.Color = C3(155/255,0/255,255/255)
		EYE2.Color = C3(155/255,0/255,255/255)
		Hair.Color = C3(80/255,0/255,180/255)
		Hair2.Color = C3(50/255,0/255,150/255)
        MAINRUINCOLOR = BrickColor.new("Royal purple")
        SECONDRUINCOLOR  = BrickColor.new("Dark indigo")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function ChronoForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 432493949
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0
        FACE = 2371494469
        Speed = 16
        MODE = "Time"
        text.Text = "Chronos"
        ned.Text = "Chronos"
        TEXTCOLOR = C3(0/255,255/255,0/255)
		PRT.Color = C3(0/255,155/255,0/255)
		EYE.Color = C3(0/255,255/255,0/255)
		EYE2.Color = C3(0/255,255/255,0/255)
		Hair.Color = C3(239/255,184/255,56/255)
		Hair2.Color = C3(245/255,205/255,48/255)
		MODE = "Time"
        MAINRUINCOLOR = BrickColor.new("Lime green")
        SECONDRUINCOLOR  = BrickColor.new("Lime green")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function SenseForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 1497785701
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 13.75
        FACE = 2375008868
        Speed = 13
        MODE = "Sense"
        text.TextColor3 = C3(255/255,255/255,255/255)
        text.Text = "None-Sense"
        ned.Text = "Non-Sense"
        TEXTCOLOR = C3(255/255,255/255,255/255)
        coroutine.resume(coroutine.create(function()
	    repeat
		text.TextColor3 = C3(13/255,105/255,172/255)
		Swait(5)
        text.TextColor3 = C3(196/255,40/255,28/255)
        Swait(5)
	    until MODE ~= "Sense"
        text.TextColor3 = C3(27/255,42/255,53/255)
        end))
		PRT.Color = C3(13/255,105/255,172/255)
		EYE.Color = C3(255/255,255/255,255/255)
		EYE2.Color = C3(255/255,255/255,255/255)
		Hair.Color = C3(196/255,40/255,28/255)
		Hair2.Color = C3(196/255,40/255,28/255)
        MAINRUINCOLOR = BrickColor.new("Bright red")
        SECONDRUINCOLOR  = BrickColor.new("Bright blue")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function SanityForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		SONG = 2347469019
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0
        FACE = 2375030229
        Speed = 30
        TEXTCOLOR = C3(0/255,0/255,0/255)
        text.Text = "Sanity-Less"
        coroutine.resume(coroutine.create(function()
	    repeat
        ned.Text = "Sanity-Less"
		PRT.Color = BrickColor.Random().Color
		EYE.Color = BrickColor.Random().Color
		EYE2.Color = BrickColor.Random().Color
		Hair.Color = BrickColor.Random().Color
		Hair2.Color = BrickColor.Random().Color
        MAINRUINCOLOR = BrickColor.Random()
        SECONDRUINCOLOR = BrickColor.Random()
	    text.TextColor3 = BrickColor.Random().Color
	    text.TextStrokeColor3 = BrickColor.Random().Color
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
        Swait(5)
	 	until MODE ~= "Sanity"
	    text.TextColor3 = C3(27/255,42/255,53/255)
    end))
        TEXTCOLOR = C3(0/255,0/255,0/255)
		PRT.Color = C3(99/255,95/255,98/255)
		EYE.Color = C3(99/255,95/255,98/255)
		EYE2.Color = C3(99/255,95/255,98/255)
		Hair.Color = C3(99/255,95/255,98/255)
		Hair2.Color = C3(99/255,95/255,98/255)
		MODE = "Sanity"
	ATTACK = false
	Rooted = false
end

function FairyForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
	for i=0, 2, 0.1 / Animation_Speed do
            Swait()
         WACKYEFFECT({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(-30), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(40), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(40), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	     end
        WACKYEFFECT({TIME = 30 ,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,1), SoundID = 743499393, SoundPitch = 1.05, SoundVolume = 15})
        MODE = "Fairy"
        ned.Text = "Fairy"
        TEXTCOLOR = C3(255/255,102/255,204/255)
		PRT.Color = C3(98/255,37/255,209/255)
		EYE.Color = C3(255/255,152/255,220/255)
		EYE2.Color = C3(255/255,152/255,220/255)
		Hair.Color = C3(170/255,0/255,170/255)
		Hair2.Color = C3(170/255,0/255,170/255)
        MAINRUINCOLOR = BrickColor.new("Carnation pink")
        SECONDRUINCOLOR  = BrickColor.new("Carnation pink")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
		SONG = 228428389
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0.5
        FACE = 21635489
        Speed = 20
        text.Text = "Fairy"
	ATTACK = false
	Rooted = false
end

function DevilForm()
	ATTACK = true
	Rooted = true
	BALL.Parent = Character
	XEYE.Parent = nil
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 6, 1, false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(-40), RAD(50), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(40), RAD(50), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end	
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(40), RAD(-50), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(-40), RAD(-50), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 6, 1, false)
		WACKYEFFECT({Time = 85, EffectType = "Block", Size = VT(0.55,0.55,0.55), Size2 = VT(55,55,55), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = 743499393, SoundPitch = 0.8, SoundVolume = 10})
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		MODE = "Devil"
        ned.Text = "Devil"
		SONG = 919231299
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 15.2
        FACE = 405705854
        Speed = 20
        text.Text = "Devil"
        TEXTCOLOR = C3(127/255,0/255,0/255)
		PRT.Color = C3(98/255,0/255,0/255)
		EYE.Color = C3(255/255,0/255,0/255)
		EYE2.Color = C3(255/255,0/255,0/255)
		Hair.Color = C3(21/255,0/255,0/255)
		Hair2.Color = C3(53/255,0/255,0/255)
        MAINRUINCOLOR = BrickColor.new("Maroon")
        SECONDRUINCOLOR  = BrickColor.new("Bright red")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

function PurgeForm()
	ATTACK = true
	Rooted = true
        WACKYEFFECT({TIME = 30 ,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,1,0), SoundID = 743499393, SoundPitch = 1.15, SoundVolume = 15})
        MODE = "Purged"
        XEYE.Parent = Character
        BALL.Parent = nil
        TEXTCOLOR = C3(39/255,70/255,45/255)
		PRT.Color = C3(0/255,0/255,0/255)
		EYE.Color = C3(0/255,0/255,0/255)
		EYE2.Color = C3(0/255,0/255,0/255)
		Hair.Color = C3(0/255,0/255,0/255)
		Hair2.Color = C3(0/255,0/255,0/255)
        MAINRUINCOLOR = BrickColor.new("Earth green")
        SECONDRUINCOLOR  = BrickColor.new("Earth green")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
		SONG = 1103329236
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 0
        FACE = 2378683942
        Speed = 20
        text.Text = "The Purge"
        ned.Text = "Purge"
        for i=0, 1, 0.1 / Animation_Speed do
	        Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, -1, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.1) * ANGLES(RAD(140), RAD(0), RAD(-40)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
        end
    CreateSound(363808674, Head, 9999, 1, false)
        for i=0, 0.2, 0.1 / Animation_Speed do
	        Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, -1, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.1) * ANGLES(RAD(140), RAD(0), RAD(-40)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
        end
	ATTACK = false
	Rooted = false
end

function OriginsForm()
	ATTACK = true
	Rooted = true
	    MODE = "Origins"
		SONG = 265913095
        PITCH = 1
        VOLUME = 3
        sick.TimePosition = 17.5
        FACE = 404306534
        Speed = 19
        text.Text = "The Origins"
        ned.Text = "Origins"
        TEXTCOLOR = C3(0/255,0/255,0/255)
		PRT.Color = C3(215/255,147/255,0/255)
		EYE.Color = C3(255/255,0/255,0/255)
		EYE2.Color = C3(255/255,0/255,0/255)
		Hair.Color = C3(0/255,0/255,255/255)
		Hair2.Color = C3(0/255,0/255,255/255)
        MAINRUINCOLOR = BrickColor.new("Navy blue")
        SECONDRUINCOLOR  = BrickColor.new("Neon orange")
        RecolorThing(MAINRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,SECONDRUINCOLOR,1,SECONDRUINCOLOR,1,SECONDRUINCOLOR,THIRDRUINCOLOR)
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			Swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			Humanoid.CameraOffset = Vector3.new(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)))
			Cam.CFrame = Cam.CFrame * CF(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity))) * EULER(RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	end))
end

function ManualDamage(Humanoid,Damage,TorsoPart)
	local defence = Instance.new("BoolValue",Humanoid.Parent)
	defence.Name = ("HitBy"..Player.Name)
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1,100)
		if Damage > Humanoid.Health then
			Damage = math.ceil(Humanoid.Health)
			if Damage == 0 then
				Damage = 0.1
			end
		end
		Humanoid.Health = Humanoid.Health - Damage
	end
end

function ManualAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ManualDamage(HUM,DMG,TORSO)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

function MeleeDMG(Humanoid,Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
		end
	else
		Humanoid.Parent:BreakJoints()
	end
end


function BasicCombo()
	ATTACK = true
	Rooted = false
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		local TOUCHED2 = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
        WACKYEFFECT({Time = 40,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
        WACKYEFFECT({Time = 80,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(12.5,12.5,12.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        CameraEnshaking(3,10)
        ManualAoE(RootPart.Position,17.5,20,60,20,false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function ColorfulCombo()
	ATTACK = true
	Rooted = false
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,25),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,25),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MAINRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SECONDRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		local TOUCHED2 = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SECONDRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MAINRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
        WACKYEFFECT({Time = 40,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = text.TextColor3, SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
        WACKYEFFECT({Time = 80,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(12.5,12.5,12.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = text.TextColor3, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        CameraEnshaking(3,10)
        ManualAoE(RootPart.Position,17.5,20,60,20,false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function PurgeCombo()
	ATTACK = true
	Rooted = false
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(5,10),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,15),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH
	end
	local HIT3 = function()
		local HITS3 = {}
		local TOUCH3 = LeftLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS3 do
						if HITS3[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS3,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH3
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(-25)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightLeg,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(85)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-20), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.25) * ANGLES(RAD(-5), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.25) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftLeg,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT3()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.5) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.85 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0.05) * ANGLES(RAD(-30), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(60), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		Rooted = true
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.05, -0.5) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
        local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25*SIZE, Character)
        WACKYEFFECT({Time = 40,EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = 260435136, SoundPitch = 0.7, SoundVolume = 10})
        WACKYEFFECT({Time = 80,EffectType = "Sphere", Size = VT(0,0.55,0), Size2 = VT(30,0.55,30), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        CameraEnshaking(3,10)
		ManualAoE(HITPOS,15,20,45,75,false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 3 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 3 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.05, -0.5) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
		end	
		Rooted = false
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function FlyingCombo()
	ATTACK = true
	Rooted = false
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH
	end
	local HIT3 = function()
		local HITS3 = {}
		local TOUCH3 = RightLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS3 do
						if HITS3[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS3,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,15),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH3
	end
	local HIT4 = function()
		local HITS4 = {}
		local TOUCH4 = LeftLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS4 do
						if HITS4[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS4,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,15),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH4
	end
	if COMBO == 1 then
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.6) * ANGLES(RAD(10), RAD(0), RAD(-89)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.6) * ANGLES(RAD(10), RAD(0), RAD(89)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED2 = HIT4()
		local TOUCHED = HIT3()
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-30), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-60), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-90), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-120), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-150), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-180), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-210), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-240), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.6) * ANGLES(RAD(10), RAD(0), RAD(-89)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.6) * ANGLES(RAD(10), RAD(0), RAD(89)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED2 = HIT4()
		local TOUCHED = HIT3()
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(30), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(60), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(120), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(150), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(180), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(210), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(240), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(270), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		local TOUCHED2 = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SECONDRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MAINRUINCOLOR.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.7) * ANGLES(RAD(70), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(145), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(145), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
        WACKYEFFECT({Time = 40,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = text.TextColor3, SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
        WACKYEFFECT({Time = 80,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(12.5,12.5,12.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = text.TextColor3, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        CameraEnshaking(3,10)
        ManualAoE(RootPart.Position,17.5,20,60,20,false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-25), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end
	
function SuperStomm()
	ATTACK = true
	Rooted = true
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25*SIZE, Character)
	coroutine.resume(coroutine.create(function()
       Swait(65)
       CameraEnshaking(3,25)
       CreateSound(262562442,RightLeg,60,1,false)
       CreateDebreeRing(HITFLOOR,HITPOS,90,VT(10,10,10),2)
       WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0.55,0)*SIZE, Size2 = VT(90,3,90), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(159/255, 0/255, 0/255), SoundID = nil, SoundPitch = 0.96, SoundVolume = 10})
       ApplyAoE2(HITPOS,80,50,100,75,false)
		    end))
	CreateSound(163619849,RightLeg,10,1,false)
	for i=0, 2, 0.1 / Animation_Speed do
		WACKYEFFECT({EffectType = "Block", Size = VT(2,2,2), Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(40)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(35), RAD(0), RAD(-40)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(90), RAD(-45), RAD(-55)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(30), RAD(85)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.4*SIZE - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(105), RAD(-85)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(-105), RAD(85)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.7*SIZE - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(10), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), 0.13) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end


	
--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false and MODE ~= "Purged" and MODE ~= "Sense" and MODE ~= "Sanity" and MODE ~= "Origins" and MODE ~= "Fairy" and MODE ~= "Black" then
		BasicCombo()
	elseif ATTACK == false and MODE == "Sense" or MODE == "Sanity" or ATTACK == false and MODE == "Origins" then
		ColorfulCombo()
	elseif ATTACK == false and MODE == "Fairy" or ATTACK == false and MODE == "Black" then
		FlyingCombo()
	elseif ATTACK == false and MODE == "Purged" then
		PurgeCombo()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	if Key ~= "w" and Key ~= "a" and Key ~= "s" and Key ~= "d" then
		KEYHOLD = true
		if Key == "n" and ATTACK == false and MODE == "Lunar" then
			SolarForm()
		
		elseif Key == "n" and ATTACK == false and MODE == "Solar" then
			ResetMode()
		end

		if Key == "m" and ATTACK == false and MODE == "Lunar" then
			OriginsForm()
		
		elseif Key == "m" and ATTACK == false and MODE == "Origins" then
			ResetMode()
		end

		if Key == "q" and ATTACK == false and MODE ~= "Time" then
			ChronoForm()

		elseif Key == "m" and ATTACK == false and MODE == "Time" then
			SuperiorForm()

		elseif Key == "q" and ATTACK == false and MODE == "Time" then
			ResetMode()
		end

		if Key == "e" and ATTACK == false and MODE ~= "Hexa" then
			TerraForm()

		elseif Key == "e" and ATTACK == false and MODE == "Hexa" then
			ResetMode()
		end

		if Key == "p" and ATTACK == false and MODE ~= "Random" then
			RandomForm()
            sick.TimePosition = 0.01
            RCHOICE = MRANDOM(1,6)

		elseif Key == "m" and ATTACK == false and MODE == "Random" then
		    RCHOICE = MRANDOM(1,6)
            sick.TimePosition = 0.01

		elseif Key == "p" and ATTACK == false and MODE == "Random" then
			ResetMode()
		end

        if Key == "m" and ATTACK == false and MODE == "Hexa" then
	        VantaForm()
	    end
	
        elseif Key == "m" and ATTACK == false and MODE == "Vanta" then
	        TerraForm()
        end
	
		if Key == "r" and ATTACK == false and MODE ~= "Sense" then
			SenseForm()

		elseif Key == "r" and ATTACK == false and MODE == "Sense" then
			ResetMode()
     	end
	
		if Key == "m" and ATTACK == false and MODE == "Sense" then
			SanityForm()

		elseif Key == "m" and ATTACK == false and MODE == "Sanity" then
			SenseForm()
     	end
	
		if Key == "y" and ATTACK == false and MODE ~= "Fairy" then
			FairyForm()

		elseif Key == "y" and ATTACK == false and MODE == "Fairy" then
			ResetMode()
		end
	
		if Key == "m" and ATTACK == false and MODE == "Fairy" then
			DevilForm()

		elseif Key == "m" and ATTACK == false and MODE == "Devil" then
			FairyForm()
     	end
	
		if Key == "u" and ATTACK == false and MODE ~= "90s" then
			BlackWhiteForm()

		elseif Key == "u" and ATTACK == false and MODE == "90s" then
			ResetMode()
		end

		if Key == "m" and ATTACK == false and MODE == "90s" then
			EightyForm()

		elseif Key == "m" and ATTACK == false and MODE == "80s" then
			BlackWhiteForm()
     	end

		if Key == "t" and ATTACK == false and MODE ~= "LostHope" then
			LostForm()

		elseif Key == "t" and ATTACK == false and MODE == "LostHope" then
			ResetMode()
		end

		if Key == "n" and ATTACK == false and MODE == "LostHope" then
			PurgeForm()
		elseif Key == "n" and ATTACK == false and MODE == "Purged" then
			LostForm()

		elseif Key == "m" and ATTACK == false and MODE == "LostHope" then
			BlackForm()

		elseif Key == "m" and ATTACK == false and MODE == "Black" then
			LostForm()
		end

		if Key == "z" and ATTACK == false and MODE == "Superior" then
			SuperStomm()
		end
   end

function KeyUp(Key)
	if Key ~= "w" and Key ~= "a" and Key ~= "s" and Key ~= "d" then
		KEYHOLD = false
	end
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local BLINKLOOP = 0
script.Parent = WEAPONGUI
ANIMATE.Parent = nil

local bguis = Instance.new("BillboardGui",tors)
bguis.Size = UDim2.new(25, 0, 25, 0)
local imgca = Instance.new("ImageLabel",bguis)
imgca.BackgroundTransparency = 1
imgca.ImageTransparency = 1
imgca.Size = UDim2.new(3,0,3,0)
imgca.Image = "rbxassetid://0" --997291547,521073910,2312119891
imgca.ImageColor3 = Color3.new(0,0,0)

coroutine.resume(coroutine.create(function()
	repeat
		Swait()
imgca.Rotation = imgca.Rotation + 5 + sick.PlaybackLoudness/25
bguis.Size = UDim2.new(12 + 3 * math.cos(SINE / 30),0, 12 + 3 * math.cos(SINE / 30),0)
imgca.ImageColor3 = MAINRUINCOLOR.Color
imgca.ImageTransparency = 0 + 0.25 * math.cos(SINE / 30)
text.Position = UDim2.new(0,0 - 5 * SIN(SINE / 32),0,0 - 5 * SIN(SINE / 45))
text.Rotation = 0 - 2 * math.cos(SINE / 24)
techc.Rotation = techc.Rotation + 1
circl.Rotation = circl.Rotation - 1 + sick.PlaybackLoudness/75
circl2.Rotation = circl2.Rotation + 1 + sick.PlaybackLoudness/50
imgl2.Rotation = imgl2.Rotation - 1 + sick.PlaybackLoudness/50
imgl2b.Rotation = imgl2b.Rotation + 1 + sick.PlaybackLoudness/25
ned.Rotation = 0 - 4 * math.cos(SINE / 24)
ned.Position = UDim2.new(0.7,0 - 10 * math.cos(SINE / 32),0.8,0 - 10 * math.cos(SINE / 45))
until Humanoid.Health == 0
end))

while true do
	Swait()
	if Humanoid then
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()
	end
	SINE = SINE + CHANGE*2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
	HairWeld1.C1 = Clerp(HairWeld1.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0 + 1.5 * SIN(SINE / 12) - 2.5 * COS(SINE / 12)), RAD(4.5 * SIN(SINE / 12))), 1 / Animation_Speed)
	Hair2Weld2.C1 = Clerp(Hair2Weld2.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0 - 1.5 * SIN(SINE / 12) + 2.5 * COS(SINE / 12)), RAD(-4.5 * SIN(SINE / 12))), 1 / Animation_Speed)
	HoodWeld.C1 = Clerp(HoodWeld.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0 + 0.75 * SIN(SINE / 12) - 1.75 * COS(SINE / 12)), RAD(2.75 * SIN(SINE / 12))), 1 / Animation_Speed)
	handlexweld.C1 = handlexweld.C1 * ANGLES(RAD(0), RAD(0), RAD(-2))
    if MODE ~= "Lunar" and MODE ~= "Solar" and MODE ~= "Black" and MODE ~= "Hexa" and MODE ~= "Time" and MODE ~= "Purge" then
    rwing1weld.C1 = Clerp(rwing1weld.C1, CF(-2.5, -1, 0) * ANGLES(RAD(0), RAD(0 + 0.75 * SIN(SINE / 15) - 1.75 * COS(SINE / 15)), RAD(-1 - 8 * SIN(SINE / 15))), 3 / Animation_Speed)
    rwing2weld.C1 = Clerp(rwing2weld.C1, CF(-4, -1.25, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 2 * COS(SINE / 15)), RAD(-5  - 6 * SIN(SINE / 15))), 3 / Animation_Speed)
    rwing3weld.C1 = Clerp(rwing3weld.C1, CF(-5.5, -1.5, 0) * ANGLES(RAD(0), RAD(0 + 1.25 * SIN(SINE / 15) - 2.25 * COS(SINE / 15)), RAD(-10 - 4 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing1weld.C1 = Clerp(lwing1weld.C1, CF(2.5, -1, 0) * ANGLES(RAD(0), RAD(0 - 0.75 * SIN(SINE / 15) + 1.75 * COS(SINE / 15)), RAD(-1 + 8 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing2weld.C1 = Clerp(lwing2weld.C1, CF(4, -1.25, 0) * ANGLES(RAD(0), RAD(0 - 1 * SIN(SINE / 15) + 2 * COS(SINE / 15)), RAD(5 + 6 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing3weld.C1 = Clerp(lwing3weld.C1, CF(5.5, -1.5, 0) * ANGLES(RAD(0), RAD(0 - 1.25 * SIN(SINE / 15) + 2.25 * COS(SINE / 15)), RAD(10 + 4 * SIN(SINE / 15))), 3 / Animation_Speed)
	handleweld.C1 = Clerp(handleweld.C1, CF(0, -1, -1.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
    end
    if MODE == "Lunar" or MODE == "Solar" or MODE == "Hexa" or MODE == "Time" then
    rwing1weld.C1 = Clerp(rwing1weld.C1, CF(-2.5, -1, 0) * ANGLES(RAD(0), RAD(0 + 0.75 * SIN(SINE / 15) - 1.75 * COS(SINE / 15)), RAD(-1 - 8 * SIN(SINE / 15))), 3 / Animation_Speed)
    rwing2weld.C1 = Clerp(rwing2weld.C1, CF(-4, -1.25, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 2 * COS(SINE / 15)), RAD(-5  - 6 * SIN(SINE / 15))), 3 / Animation_Speed)
    rwing3weld.C1 = Clerp(rwing3weld.C1, CF(-5.5, -1.5, 0) * ANGLES(RAD(0), RAD(0 + 1.25 * SIN(SINE / 15) - 2.25 * COS(SINE / 15)), RAD(-10 - 4 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing1weld.C1 = Clerp(rwing1weld.C1, CF(-2.5, -1, 0) * ANGLES(RAD(0), RAD(0 + 0.75 * SIN(SINE / 15) - 1.75 * COS(SINE / 15)), RAD(-1 - 8 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing2weld.C1 = Clerp(rwing2weld.C1, CF(-4, -1.25, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 2 * COS(SINE / 15)), RAD(-5  - 6 * SIN(SINE / 15))), 3 / Animation_Speed)
    lwing3weld.C1 = Clerp(rwing3weld.C1, CF(-5.5, -1.5, 0) * ANGLES(RAD(0), RAD(0 + 1.25 * SIN(SINE / 15) - 2.25 * COS(SINE / 15)), RAD(-10 - 4 * SIN(SINE / 15))), 3 / Animation_Speed)
	handleweld.C1 = Clerp(handleweld.C1, CF(0, -1, -1.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
    end
    if MODE == "Black" then
    rwing1weld.C1 = Clerp(rwing1weld.C1, CF(0.5, 4, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 1 * COS(SINE / 15)), RAD(-45)), 3 / Animation_Speed)
    rwing2weld.C1 = Clerp(rwing2weld.C1, CF(0, -1, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 1 * COS(SINE / 15)), RAD(180)), 3 / Animation_Speed)
    rwing3weld.C1 = Clerp(rwing3weld.C1, CF(-0.5, 4, 0) * ANGLES(RAD(0), RAD(0 + 1 * SIN(SINE / 15) - 1 * COS(SINE / 15)), RAD(45)), 3 / Animation_Speed)
    lwing1weld.C1 = rwing2weld.C1
    lwing2weld.C1 = rwing2weld.C1
    lwing3weld.C1 = rwing2weld.C1
    handleweld.C1 = Clerp(handleweld.C1, CF(0, -3, -1.4) * ANGLES(RAD(0), RAD(0), RAD(0 + 999 * COS(SINE / 50))), 3 / Animation_Speed)
    end
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		if MODE == "Lunar" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.1 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.1 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)
		elseif MODE == "Solar" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.05 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		elseif MODE == "Fairy" then
        RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        elseif MODE ~= "Lunar" and MODE ~= "Solar" and MODE ~= "Black" and MODE ~= "Vanta" and MODE ~= "Devil" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.05 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		elseif MODE == "Hexa" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2- 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(65 * COS(SINE / WALKSPEEDVALUE))), 0.5 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(65 * COS(SINE / WALKSPEEDVALUE))), 0.5 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
 		elseif MODE == "Time" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2- 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(65 * COS(SINE / WALKSPEEDVALUE))), 0.5 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(65 * COS(SINE / WALKSPEEDVALUE))), 0.5 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
       elseif MODE == "Vanta" then
        RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        elseif MODE == "Black" then
        RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		elseif MODE == "Devil" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.05 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.2 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
end
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
        if MODE == "Lunar" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        elseif MODE == "Solar" then
	    RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
        elseif MODE == "Fairy" then
	    RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        elseif MODE ~= "Lunar" and MODE ~= "Solar" and MODE ~= "Black" and MODE ~= "Vanta" and MODE ~= "Devil" then
	    RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)	    
		elseif MODE == "Hexa" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "Time" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
        elseif MODE == "Vanta" then
	    RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        elseif MODE == "Black" then
	    RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        elseif MODE == "Devil" then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
end
	if FULL == false then
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
		    if MODE ~= "Purged" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 1 / Animation_Speed)
            elseif MODE == "Purged" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(-2, -0.6, 0.5 + ((1) - 1)) * ANGLES(RAD(0), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.1) * ANGLES(RAD(140), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 1 / Animation_Speed)

            end
end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = "Fall"
			if ATTACK == false then
			if MODE ~= "Purged" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 1 / Animation_Speed)
			elseif MODE == "Purged" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(-2, -0.6, 0.5 + ((1) - 1)) * ANGLES(RAD(0), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.1) * ANGLES(RAD(140), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 1 / Animation_Speed)
				
		end
           end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			ANIM = "Idle"
			if ATTACK == false then
			if MODE == "Lunar" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-3.5 * COS(SINE / 12)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(OFFSET)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(2.5 * COS(SINE / 12))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-8), RAD(5), RAD(15-2.5 * COS(SINE / 12))), 0.8 / Animation_Speed)
			elseif MODE == "Hexa" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.5, -0.45) * ANGLES(RAD(100), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.15, -0.45) * ANGLES(RAD(80), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(45), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
            elseif MODE == "Fairy" then
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.2 + 0.2 * COS(SINE / 30)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 3 / Animation_Speed)
			elseif MODE == "Origins" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-3.5 * COS(SINE / 12)), RAD(-45), RAD(12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(OFFSET)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(2.5 * COS(SINE / 12))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-8), RAD(5), RAD(15-2.5 * COS(SINE / 12))), 0.8 / Animation_Speed)
			elseif MODE == "Solar" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-3.5 * COS(SINE / 12)), RAD(-45), RAD(12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif MODE == "Purged" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(-2, -0.6, 0.65 + 0.5 * COS(SINE / 9) + ((1) - 1)) * ANGLES(RAD(0), RAD(25), RAD(0)), 0.6 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 + 0.25 * COS(SINE / 9), -0.1) * ANGLES(RAD(140), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.6 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif MODE == "Sanity" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.4 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-3.5 * COS(SINE / 12)), RAD(-45), RAD(12)) * ANGLES(RAD(-35 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(83), RAD(20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.45) * ANGLES(RAD(0), RAD(-83), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif MODE == "Time" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.4, 0) * ANGLES(RAD(-25), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.4, 0) * ANGLES(RAD(-25), RAD(0), RAD(15)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif MODE == "80s" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, 0.5) * ANGLES(RAD(-25 - 4 * COS(SINE / 12)), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-30 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed) 
			elseif MODE == "90s" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.4, 0.35, 0.4) * ANGLES(RAD(15 - 3.5 * COS(SINE / 12)), RAD(0), RAD(-12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), 0, 0 + 0.05 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4, 0.35, 0.4) * ANGLES(RAD(15), RAD(0), RAD(12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif MODE == "Random" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(85.57 - 4 * COS(SINE / 12)), RAD(-179.97), RAD(94.08)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.8, 0, -0.5) * ANGLES(RAD(85.57 - 4 * COS(SINE / 12)), RAD(-179.97), RAD(-94.08)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.3) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(9.09)), 1 / Animation_Speed) 
			elseif MODE == "Superior" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.15*SIZE) - 1)) * ANGLES(RAD(25 - 4 * SIN(SINE / 12)), RAD(0), RAD(15 - 3)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25*SIZE, 0.7*SIZE, -0.5*SIZE) * ANGLES(RAD(0.98), RAD(-119.59 + 2.5 * SIN(SINE / 25)), RAD(-175.39 + 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(9.71), RAD(3.14 - -2.5 * SIN(SINE / 12)), RAD(0.2 - -2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif ATTACK == false and MODE == "Vanta" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 - 0.1 * COS(SINE / 12), -1) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.1 - 0.1 * COS(SINE / 12), -0.5) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.025 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)				
			elseif MODE == "Sense" then
			if MRANDOM(1,20) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1)
            end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.15) - 1)) * ANGLES(RAD(25 - 4 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0 + 2.5 * SIN(SINE / 25)), RAD(40 + 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-40 - 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
            elseif MODE == "Devil" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 3 / Animation_Speed)
			if MRANDOM(1,7) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
			end
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.6 + 0.2 * SIN(SINE / 24), 0) * ANGLES(RAD(0), RAD(0), RAD(10 - 10 * COS(SINE / 24))) * ANGLES(RAD(0), RAD(-15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6 + 0.2 * SIN(SINE / 24), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 10 * COS(SINE / 24))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif MODE == "LostHope" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(12)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-3.5 * COS(SINE / 24)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 24) + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 24), -0.01) * ANGLES(RAD(15), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 24), -0.01) * ANGLES(RAD(15), RAD(-75), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			elseif ATTACK == false and MODE == "Black" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 3 / Animation_Speed)
			if MRANDOM(1,3) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1)
            end
			if MRANDOM(1,2) == 1 then
               MagicSphere(VT(0.25,0.25,0.25),15,RightArm.CFrame * CF((0),(-0.5),(0)) * CF(MRANDOM(-0.6,0.6),MRANDOM(-0.6,0.6),MRANDOM(-0.6,0.6)),"Black",VT(-1/15,-1/15,-1/15))
               MagicSphere(VT(0.5,0.5,0.5),15,RightArm.CFrame * CF((0),(-0.5),(0)) * CF(MRANDOM(-0.6,0.6),MRANDOM(-0.6,0.6),MRANDOM(-0.6,0.6)),"Black",VT(-2/15,-2/15,-2/15))
            end
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1, 0) * ANGLES(RAD(125 - 3.5 * COS(SINE / 12)), RAD(0), RAD(16)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.2 + 0.2 * COS(SINE / 30)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-35), RAD(25), RAD(55)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1.15, -0.6, -0.5) * ANGLES(RAD(14), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-18), RAD(-79), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			ANIM = "Walk"
			if ATTACK == false then
			if MODE == "Lunar" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 2.5 * SIN(SINE / 12)), RAD(5), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-50 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(OFFSET)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 2 / Animation_Speed)
			elseif MODE == "Superior" then
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.1*SIZE) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.15*SIZE) - 1)) * ANGLES(RAD(15 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 1/ Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.9*SIZE, 0.5*SIZE + 0.05*SIZE * SIN(SINE / 12), -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.9*SIZE, 0.25*SIZE + 0.05*SIZE * SIN(SINE / 12), -0.35) * ANGLES(RAD(70), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE , -1*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
            elseif MODE == "80s" then
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, -0.025, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(80 * SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(5), RAD(0 - 40 * SIN(SINE / WALKSPEEDVALUE))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-80 * SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(5), RAD(0 - 40 * SIN(SINE / WALKSPEEDVALUE))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(-5), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-5), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			elseif MODE == "Solar" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-3.5 * COS(SINE / 12)), RAD(-45), RAD(12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 2 / Animation_Speed)
			elseif MODE == "Origins" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 2.5 * SIN(SINE / 12)), RAD(5), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(0), RAD(-45), RAD(12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(OFFSET)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "Purged" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(-2, -0.6, 0.5 + ((1) - 1)) * ANGLES(RAD(0), RAD(25), RAD(0)), 0.6 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.1) * ANGLES(RAD(140), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(0), RAD(45), RAD(-12)) * ANGLES(RAD(-45 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 2 / Animation_Speed)
			elseif MODE == "Sanity" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 6)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(-70 - 25 * COS(SINE / 6)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(-70 - 25 * COS(SINE / 6)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, -0.3) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 0.15 / Animation_Speed)
            elseif MODE == "Fairy" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif MODE == "Devil" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 + MRANDOM(-5,5) - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			elseif MODE ~= "Lunar" and MODE ~= "Solar" and MODE ~= "Black" and MODE ~= "Vanta" and MODE ~= "LostHope" and MODE ~= "Hexa" and MODE ~= "Time" and MODE ~= "Sanity" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40  * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40  * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 2 / Animation_Speed)
			elseif MODE == "Hexa" or MODE == "Time" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, -0.025, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-15), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-50 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			elseif MODE == "LostHope" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(12)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-3.5 * COS(SINE / 24)), RAD(0), RAD(12)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 24) + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1 + 0.05 * COS(SINE / 24)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.05 * COS(SINE / 24), 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 24), 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 2 / Animation_Speed)
			elseif MODE == "Vanta" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(15 - 3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(23 - 3 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.2) * ANGLES(RAD(-40), RAD(0), RAD(-35)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.2) * ANGLES(RAD(-40), RAD(0), RAD(35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif MODE == "Black" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 30)) * ANGLES(RAD(65 - 3 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(-23 - 3 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			if MRANDOM(1,3) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-5,5)), RAD(MRANDOM(-10,10)), RAD(MRANDOM(-10,10))), 1)
            end
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.2) * ANGLES(RAD(-40), RAD(0 - 10 * SIN(SINE / 30)), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.2) * ANGLES(RAD(-40), RAD(0 + 10 * SIN(SINE / 30)), RAD(-15)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.08 * COS(SINE / 30), -0.5) * ANGLES(RAD(0), RAD(90 + 10 * COS(SINE / 30)), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.08 * COS(SINE / 30), -0.01) * ANGLES(RAD(0), RAD(-90 - 10 * COS(SINE / 30)), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			   end
            end
		end
	end
	text.TextStrokeColor3 = TEXTCOLOR
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	if Head:FindFirstChild("face") then
		Head.face.Texture = "rbxassetid://"..FACE
	end
    if MODE ~= "Random" then
	sick.SoundId = "rbxassetid://"..SONG
    elseif MODE == "Random" then
	sick.SoundId = "rbxassetid://"..RANDOMIZERMOOSICK[RCHOICE]
    end
    sick.Looped = true
    sick.Pitch = PITCH
    sick.Volume = VOLUME
	Humanoid.Name = MRANDOM(100000000,999999999)
	Humanoid.PlatformStand = false
	for _, c in pairs(Cam:GetChildren()) do
		if game.Players:FindFirstChild(c.Name) == nil and c.ClassName == "BillboardGui" then
			c:remove()
		end
	end
	for LIST = 1, #WHITELIST do
		if WHITELIST[LIST] ~= nil then
			local CHARACTER = workspace:FindFirstChild(WHITELIST[LIST])
			if CHARACTER then
				if Cam:FindFirstChild(WHITELIST[LIST]) == nil then
					local TORSO = CHARACTER:FindFirstChild("Torso") or CHARACTER:FindFirstChild("UpperTorso")
					if TORSO then
						CreateSound(201858045, Cam, 3, 1)	
						local GUI = Instance.new("BillboardGui",Cam)
						GUI.Name = WHITELIST[LIST]
						GUI.Size = UDim2.new(5,0,5,0)
						GUI.Adornee = TORSO
						local GUI2 = IT("ImageLabel",GUI)
						GUI2.BackgroundTransparency = 1
						GUI2.BorderSizePixel = 0
						GUI2.ImageTransparency = 1
						GUI2.Size = UDim2.new(1,0,1,0)
						GUI2.SizeConstraint = "RelativeYY"
						GUI.AlwaysOnTop = true
						GUI2.Image = "http://www.roblox.com/asset/?id=142164463"
					end
				else
					local GUI = Cam:FindFirstChild(WHITELIST[LIST])
					if GUI.ImageLabel.ImageTransparency <= 1 then
						GUI.ImageLabel.ImageTransparency = GUI.ImageLabel.ImageTransparency - 0.03
					end
					local TORSO = CHARACTER:FindFirstChild("Torso") or CHARACTER:FindFirstChild("UpperTorso")
					if TORSO then
						GUI.Adornee = TORSO
					end
				end
			else
				if Cam:FindFirstChild(WHITELIST[LIST]) then
					Cam:FindFirstChild(WHITELIST[LIST]):remove()
				end
			end
		else
			if Cam:FindFirstChild(WHITELIST[LIST]) then
				Cam:FindFirstChild(WHITELIST[LIST]):remove()
			end
			table.remove(WHITELIST,LIST)
		end
	end
	BLINKLOOP = BLINKLOOP + 1
	if BLINKLOOP >=325 then
		BLINKLOOP = 0
		Blink()
	BLINKLOOP = BLINKLOOP + 1
	if BLINKLOOP >=250 then
		BLINKLOOP = 0
		Blink2()
    end
	end
	if MODE == "90s" or MODE == "80s" then
	if HITFLOOR ~= nil then
       if MRANDOM(1,12) == 1 then
        WACKYEFFECT({Time = 120, EffectType = "Sphere", Size = VT(0,0.55,0), Size2 = VT(10,0.55,10), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})

	end
	end
	end
	if MODE == "Devil" then
	if HITFLOOR ~= nil then
	   if MRANDOM(1,4) == 1 then
         WACKYEFFECT({EffectType = "Box", Size = VT(0.9,0.55,0.9), Size2 = VT(0,5,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),-2.5,MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
 	end
	end
	end
	    if MODE == "Black" or MODE == "Fairy" then
		if HITFLOOR ~= nil then
		if MRANDOM(1,9) == 1 then
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.8,0), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(15,30)/30, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.8,0), MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.8,0), MoveToPos = nil, RotationX = 0, RotationY = 30, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.8,0), MoveToPos = nil, RotationX = 0, RotationY = -30, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        if MRANDOM(1,7) == 1 then
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0.4, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = -0.4, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.05,0.25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = -0.4, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
    end
	end
    end
    end
	Humanoid.DisplayDistanceType = "None"
	Humanoid.PlatformStand = false
	for _, c in pairs(Torso:GetChildren()) do
		if c:IsA("JointInstance") or c.ClassName == "Sound" then
		else
			c:remove()
		end
	end
end
--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--