-- Thanatos Script, by yeox769.
-- Built with my Yeox Engine.
-- Credit goes to Ucalegen/Fenrier for the clerp function, as well as the functions required to make it work.

-- If you somehow managed to get this script, you may edit it.
-- If you do edit this, however, please give credit in some way.

-- If you leak this, please at least give credit.
-- I'd prefer if you didn't leak this at all though, but I know you people are going to anyway.

game.Players:Chat("-gh 5890526241")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
warn("Netless Activated!")

_G.loop = true
local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }
    
    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')--This will get the first "SpecialMesh" it finds if it does not find any, then it will return nil
    if Mesh and m then --If Mesh is set to true and it finds a mesh it will destroy it
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true
    
    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}
        
end 
local hat = Align(char['Frozen Scythe'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,2.25,-1.55)*CFrame.Angles(math.rad(0),math.rad(90),120)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)

--Converted with ttyyuu12345's model to script plugin v4
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
Model0 = Instance.new("Model")
Model1 = Instance.new("Model")
Part2 = Instance.new("Part")
WedgePart3 = Instance.new("WedgePart")
Part4 = Instance.new("Part")
BlockMesh5 = Instance.new("BlockMesh")
Part6 = Instance.new("Part")
BlockMesh7 = Instance.new("BlockMesh")
Part8 = Instance.new("Part")
BlockMesh9 = Instance.new("BlockMesh")
Part10 = Instance.new("Part")
BlockMesh11 = Instance.new("BlockMesh")
WedgePart12 = Instance.new("WedgePart")
WedgePart13 = Instance.new("WedgePart")
WedgePart14 = Instance.new("WedgePart")
WedgePart15 = Instance.new("WedgePart")
WedgePart16 = Instance.new("WedgePart")
WedgePart17 = Instance.new("WedgePart")
WedgePart18 = Instance.new("WedgePart")
WedgePart19 = Instance.new("WedgePart")
WedgePart20 = Instance.new("WedgePart")
WedgePart21 = Instance.new("WedgePart")
WedgePart22 = Instance.new("WedgePart")
WedgePart23 = Instance.new("WedgePart")
Part24 = Instance.new("Part")
BlockMesh25 = Instance.new("BlockMesh")
Part26 = Instance.new("Part")
BlockMesh27 = Instance.new("BlockMesh")
Part28 = Instance.new("Part")
BlockMesh29 = Instance.new("BlockMesh")
Part30 = Instance.new("Part")
BlockMesh31 = Instance.new("BlockMesh")
Part32 = Instance.new("Part")
BlockMesh33 = Instance.new("BlockMesh")
Part34 = Instance.new("Part")
BlockMesh35 = Instance.new("BlockMesh")
Part36 = Instance.new("Part")
BlockMesh37 = Instance.new("BlockMesh")
Part38 = Instance.new("Part")
BlockMesh39 = Instance.new("BlockMesh")
Part40 = Instance.new("Part")
BlockMesh41 = Instance.new("BlockMesh")
Part42 = Instance.new("Part")
BlockMesh43 = Instance.new("BlockMesh")
Part44 = Instance.new("Part")
BlockMesh45 = Instance.new("BlockMesh")
Part46 = Instance.new("Part")
BlockMesh47 = Instance.new("BlockMesh")
Part48 = Instance.new("Part")
Decal49 = Instance.new("Decal")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
WedgePart52 = Instance.new("WedgePart")
WedgePart53 = Instance.new("WedgePart")
WedgePart54 = Instance.new("WedgePart")
Model55 = Instance.new("Model")
Part56 = Instance.new("Part")
Model57 = Instance.new("Model")
Part58 = Instance.new("Part")
WedgePart59 = Instance.new("WedgePart")
Part60 = Instance.new("Part")
BlockMesh61 = Instance.new("BlockMesh")
Part62 = Instance.new("Part")
BlockMesh63 = Instance.new("BlockMesh")
WedgePart64 = Instance.new("WedgePart")
WedgePart65 = Instance.new("WedgePart")
WedgePart66 = Instance.new("WedgePart")
WedgePart67 = Instance.new("WedgePart")
WedgePart68 = Instance.new("WedgePart")
WedgePart69 = Instance.new("WedgePart")
WedgePart70 = Instance.new("WedgePart")
WedgePart71 = Instance.new("WedgePart")
WedgePart72 = Instance.new("WedgePart")
WedgePart73 = Instance.new("WedgePart")
WedgePart74 = Instance.new("WedgePart")
WedgePart75 = Instance.new("WedgePart")
WedgePart76 = Instance.new("WedgePart")
Part77 = Instance.new("Part")
BlockMesh78 = Instance.new("BlockMesh")
Part79 = Instance.new("Part")
BlockMesh80 = Instance.new("BlockMesh")
Part81 = Instance.new("Part")
BlockMesh82 = Instance.new("BlockMesh")
Part83 = Instance.new("Part")
BlockMesh84 = Instance.new("BlockMesh")
Part85 = Instance.new("Part")
BlockMesh86 = Instance.new("BlockMesh")
Part87 = Instance.new("Part")
BlockMesh88 = Instance.new("BlockMesh")
Part89 = Instance.new("Part")
BlockMesh90 = Instance.new("BlockMesh")
Part91 = Instance.new("Part")
BlockMesh92 = Instance.new("BlockMesh")
Part93 = Instance.new("Part")
BlockMesh94 = Instance.new("BlockMesh")
Part95 = Instance.new("Part")
BlockMesh96 = Instance.new("BlockMesh")
Part97 = Instance.new("Part")
BlockMesh98 = Instance.new("BlockMesh")
Part99 = Instance.new("Part")
BlockMesh100 = Instance.new("BlockMesh")
Part101 = Instance.new("Part")
BlockMesh102 = Instance.new("BlockMesh")
Part103 = Instance.new("Part")
BlockMesh104 = Instance.new("BlockMesh")
Part105 = Instance.new("Part")
Part106 = Instance.new("Part")
WedgePart107 = Instance.new("WedgePart")
WedgePart108 = Instance.new("WedgePart")
Model109 = Instance.new("Model")
Part110 = Instance.new("Part")
Model111 = Instance.new("Model")
Part112 = Instance.new("Part")
Part113 = Instance.new("Part")
BlockMesh114 = Instance.new("BlockMesh")
Part115 = Instance.new("Part")
BlockMesh116 = Instance.new("BlockMesh")
Part117 = Instance.new("Part")
BlockMesh118 = Instance.new("BlockMesh")
Part119 = Instance.new("Part")
CylinderMesh120 = Instance.new("CylinderMesh")
Part121 = Instance.new("Part")
CylinderMesh122 = Instance.new("CylinderMesh")
Part123 = Instance.new("Part")
BlockMesh124 = Instance.new("BlockMesh")
Part125 = Instance.new("Part")
CylinderMesh126 = Instance.new("CylinderMesh")
Part127 = Instance.new("Part")
CylinderMesh128 = Instance.new("CylinderMesh")
Part129 = Instance.new("Part")
BlockMesh130 = Instance.new("BlockMesh")
Part131 = Instance.new("Part")
BlockMesh132 = Instance.new("BlockMesh")
WedgePart133 = Instance.new("WedgePart")
SpecialMesh134 = Instance.new("SpecialMesh")
WedgePart135 = Instance.new("WedgePart")
SpecialMesh136 = Instance.new("SpecialMesh")
WedgePart137 = Instance.new("WedgePart")
WedgePart138 = Instance.new("WedgePart")
WedgePart139 = Instance.new("WedgePart")
SpecialMesh140 = Instance.new("SpecialMesh")
WedgePart141 = Instance.new("WedgePart")
SpecialMesh142 = Instance.new("SpecialMesh")
WedgePart143 = Instance.new("WedgePart")
SpecialMesh144 = Instance.new("SpecialMesh")
WedgePart145 = Instance.new("WedgePart")
WedgePart146 = Instance.new("WedgePart")
WedgePart147 = Instance.new("WedgePart")
WedgePart148 = Instance.new("WedgePart")
WedgePart149 = Instance.new("WedgePart")
SpecialMesh150 = Instance.new("SpecialMesh")
WedgePart151 = Instance.new("WedgePart")
SpecialMesh152 = Instance.new("SpecialMesh")
WedgePart153 = Instance.new("WedgePart")
SpecialMesh154 = Instance.new("SpecialMesh")
WedgePart155 = Instance.new("WedgePart")
SpecialMesh156 = Instance.new("SpecialMesh")
WedgePart157 = Instance.new("WedgePart")
SpecialMesh158 = Instance.new("SpecialMesh")
WedgePart159 = Instance.new("WedgePart")
SpecialMesh160 = Instance.new("SpecialMesh")
WedgePart161 = Instance.new("WedgePart")
SpecialMesh162 = Instance.new("SpecialMesh")
WedgePart163 = Instance.new("WedgePart")
SpecialMesh164 = Instance.new("SpecialMesh")
WedgePart165 = Instance.new("WedgePart")
SpecialMesh166 = Instance.new("SpecialMesh")
WedgePart167 = Instance.new("WedgePart")
SpecialMesh168 = Instance.new("SpecialMesh")
WedgePart169 = Instance.new("WedgePart")
SpecialMesh170 = Instance.new("SpecialMesh")
WedgePart171 = Instance.new("WedgePart")
SpecialMesh172 = Instance.new("SpecialMesh")
WedgePart173 = Instance.new("WedgePart")
SpecialMesh174 = Instance.new("SpecialMesh")
WedgePart175 = Instance.new("WedgePart")
SpecialMesh176 = Instance.new("SpecialMesh")
WedgePart177 = Instance.new("WedgePart")
SpecialMesh178 = Instance.new("SpecialMesh")
WedgePart179 = Instance.new("WedgePart")
WedgePart180 = Instance.new("WedgePart")
SpecialMesh181 = Instance.new("SpecialMesh")
WedgePart182 = Instance.new("WedgePart")
SpecialMesh183 = Instance.new("SpecialMesh")
WedgePart184 = Instance.new("WedgePart")
SpecialMesh185 = Instance.new("SpecialMesh")
WedgePart186 = Instance.new("WedgePart")
SpecialMesh187 = Instance.new("SpecialMesh")
WedgePart188 = Instance.new("WedgePart")
SpecialMesh189 = Instance.new("SpecialMesh")
WedgePart190 = Instance.new("WedgePart")
Part191 = Instance.new("Part")
BlockMesh192 = Instance.new("BlockMesh")
Part193 = Instance.new("Part")
BlockMesh194 = Instance.new("BlockMesh")
Part195 = Instance.new("Part")
BlockMesh196 = Instance.new("BlockMesh")
Part197 = Instance.new("Part")
BlockMesh198 = Instance.new("BlockMesh")
Part199 = Instance.new("Part")
BlockMesh200 = Instance.new("BlockMesh")
Part201 = Instance.new("Part")
BlockMesh202 = Instance.new("BlockMesh")
Part203 = Instance.new("Part")
CylinderMesh204 = Instance.new("CylinderMesh")
Part205 = Instance.new("Part")
CylinderMesh206 = Instance.new("CylinderMesh")
Part207 = Instance.new("Part")
CylinderMesh208 = Instance.new("CylinderMesh")
Part209 = Instance.new("Part")
CylinderMesh210 = Instance.new("CylinderMesh")
Part211 = Instance.new("Part")
CylinderMesh212 = Instance.new("CylinderMesh")
Part213 = Instance.new("Part")
CylinderMesh214 = Instance.new("CylinderMesh")
Part215 = Instance.new("Part")
BlockMesh216 = Instance.new("BlockMesh")
Part217 = Instance.new("Part")
BlockMesh218 = Instance.new("BlockMesh")
Part219 = Instance.new("Part")
BlockMesh220 = Instance.new("BlockMesh")
Part221 = Instance.new("Part")
BlockMesh222 = Instance.new("BlockMesh")
Part223 = Instance.new("Part")
BlockMesh224 = Instance.new("BlockMesh")
Part225 = Instance.new("Part")
BlockMesh226 = Instance.new("BlockMesh")
Part227 = Instance.new("Part")
BlockMesh228 = Instance.new("BlockMesh")
Part229 = Instance.new("Part")
BlockMesh230 = Instance.new("BlockMesh")
Part231 = Instance.new("Part")
BlockMesh232 = Instance.new("BlockMesh")
Part233 = Instance.new("Part")
BlockMesh234 = Instance.new("BlockMesh")
Part235 = Instance.new("Part")
BlockMesh236 = Instance.new("BlockMesh")
Part237 = Instance.new("Part")
BlockMesh238 = Instance.new("BlockMesh")
Part239 = Instance.new("Part")
BlockMesh240 = Instance.new("BlockMesh")
Part241 = Instance.new("Part")
BlockMesh242 = Instance.new("BlockMesh")
Part243 = Instance.new("Part")
BlockMesh244 = Instance.new("BlockMesh")
Part245 = Instance.new("Part")
BlockMesh246 = Instance.new("BlockMesh")
Part247 = Instance.new("Part")
BlockMesh248 = Instance.new("BlockMesh")
Part249 = Instance.new("Part")
BlockMesh250 = Instance.new("BlockMesh")
Part251 = Instance.new("Part")
BlockMesh252 = Instance.new("BlockMesh")
Part253 = Instance.new("Part")
BlockMesh254 = Instance.new("BlockMesh")
Part255 = Instance.new("Part")
BlockMesh256 = Instance.new("BlockMesh")
Part257 = Instance.new("Part")
BlockMesh258 = Instance.new("BlockMesh")
Part259 = Instance.new("Part")
BlockMesh260 = Instance.new("BlockMesh")
Part261 = Instance.new("Part")
BlockMesh262 = Instance.new("BlockMesh")
Part263 = Instance.new("Part")
BlockMesh264 = Instance.new("BlockMesh")
Part265 = Instance.new("Part")
BlockMesh266 = Instance.new("BlockMesh")
Part267 = Instance.new("Part")
BlockMesh268 = Instance.new("BlockMesh")
Part269 = Instance.new("Part")
BlockMesh270 = Instance.new("BlockMesh")
Part271 = Instance.new("Part")
BlockMesh272 = Instance.new("BlockMesh")
Part273 = Instance.new("Part")
BlockMesh274 = Instance.new("BlockMesh")
Part275 = Instance.new("Part")
BlockMesh276 = Instance.new("BlockMesh")
Part277 = Instance.new("Part")
BlockMesh278 = Instance.new("BlockMesh")
Part279 = Instance.new("Part")
BlockMesh280 = Instance.new("BlockMesh")
Script281 = Instance.new("Script")
Model0.Name = "Sonarmor"
Model0.Parent = mas
Model1.Name = "LeftArm"
Model1.Parent = Model0
Part2.Name = "Left Arm1"
Part2.Parent = Model1
Part2.BrickColor = BrickColor.new("Pastel yellow")
Part2.Transparency = 1
Part2.Rotation = Vector3.new(-180, -90, 0)
Part2.Anchored = true
Part2.CanCollide = false
Part2.FormFactor = Enum.FormFactor.Symmetric
Part2.Size = Vector3.new(1, 2, 1)
Part2.CFrame = CFrame.new(84.721138, 2.97380614, 69.5937424, 8.15038344e-21, 2.35065841e-06, -1, 9.82558322e-19, -1, -2.35065841e-06, -1, -9.82558322e-19, -8.15269293e-21)
Part2.Color = Color3.new(1, 1, 0.8)
Part2.Position = Vector3.new(84.721138, 2.97380614, 69.5937424)
Part2.Orientation = Vector3.new(0, -90, 180)
Part2.Color = Color3.new(1, 1, 0.8)
WedgePart3.Parent = Model1
WedgePart3.Material = Enum.Material.SmoothPlastic
WedgePart3.BrickColor = BrickColor.new("Navy blue")
WedgePart3.Reflectance = 0.0049999998882413
WedgePart3.Rotation = Vector3.new(13.4300003, 0, 90)
WedgePart3.Anchored = true
WedgePart3.CanCollide = false
WedgePart3.FormFactor = Enum.FormFactor.Symmetric
WedgePart3.Size = Vector3.new(0.220499977, 0.385874987, 0.79909116)
WedgePart3.CFrame = CFrame.new(84.5220337, 5.39255524, 67.3724747, 1.1144477e-07, -0.999996722, 9.83477548e-07, 0.972667575, -1.19206263e-07, -0.232179835, 0.232180044, 9.53674146e-07, 0.972667694)
WedgePart3.BottomSurface = Enum.SurfaceType.Smooth
WedgePart3.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart3.Position = Vector3.new(84.5220337, 5.39255524, 67.3724747)
WedgePart3.Orientation = Vector3.new(13.4300003, 0, 90)
WedgePart3.Color = Color3.new(0, 0.12549, 0.376471)
Part4.Name = "Brick"
Part4.Parent = Model1
Part4.Material = Enum.Material.SmoothPlastic
Part4.BrickColor = BrickColor.new("Navy blue")
Part4.Rotation = Vector3.new(0, 90, 0)
Part4.Anchored = true
Part4.CanCollide = false
Part4.FormFactor = Enum.FormFactor.Symmetric
Part4.Size = Vector3.new(1.19828081, 0.570214629, 1.1971724)
Part4.CFrame = CFrame.new(84.7160492, 2.46017599, 69.6111679, -1.74450037e-07, -1.85120143e-06, 1, -4.62681055e-06, 0.99999994, 1.85119507e-06, -0.99999994, -4.62681055e-06, -1.74458165e-07)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0, 0.12549, 0.376471)
Part4.Position = Vector3.new(84.7160492, 2.46017599, 69.6111679)
Part4.Orientation = Vector3.new(0, 90, 0)
Part4.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh5.Parent = Part4
Part6.Name = "Brick"
Part6.Parent = Model1
Part6.Material = Enum.Material.SmoothPlastic
Part6.BrickColor = BrickColor.new("Black")
Part6.Reflectance = 0.0049999998882413
Part6.Rotation = Vector3.new(79.2300034, 0, 0)
Part6.Anchored = true
Part6.CanCollide = false
Part6.FormFactor = Enum.FormFactor.Symmetric
Part6.Size = Vector3.new(1.10684443, 0.201244384, 0.806359112)
Part6.CFrame = CFrame.new(84.713829, 4.26771784, 69.8875198, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part6.Position = Vector3.new(84.713829, 4.26771784, 69.8875198)
Part6.Orientation = Vector3.new(79.2300034, 0, 0)
Part6.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh7.Parent = Part6
Part8.Name = "Brick"
Part8.Parent = Model1
Part8.Material = Enum.Material.SmoothPlastic
Part8.BrickColor = BrickColor.new("Black")
Part8.Reflectance = 0.0049999998882413
Part8.Rotation = Vector3.new(79.2300034, 0, 0)
Part8.Anchored = true
Part8.CanCollide = false
Part8.FormFactor = Enum.FormFactor.Symmetric
Part8.Size = Vector3.new(0.201244384, 1.03670979, 0.806359112)
Part8.CFrame = CFrame.new(85.166626, 4.1874733, 69.4766769, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part8.Position = Vector3.new(85.166626, 4.1874733, 69.4766769)
Part8.Orientation = Vector3.new(79.2300034, 0, 0)
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh9.Parent = Part8
Part10.Name = "Brick"
Part10.Parent = Model1
Part10.Material = Enum.Material.SmoothPlastic
Part10.BrickColor = BrickColor.new("Black")
Part10.Reflectance = 0.0049999998882413
Part10.Rotation = Vector3.new(88.4300003, 0, 0)
Part10.Anchored = true
Part10.CanCollide = false
Part10.FormFactor = Enum.FormFactor.Symmetric
Part10.Size = Vector3.new(0.201244384, 0.212827399, 1.0574975)
Part10.CFrame = CFrame.new(85.166626, 4.22347689, 68.9344482, 1, 1.08608943e-13, 2.84414961e-12, -2.84009643e-12, 0.027451029, -0.99962306, 1.86642856e-13, 0.99962306, 0.027451029)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part10.Position = Vector3.new(85.166626, 4.22347689, 68.9344482)
Part10.Orientation = Vector3.new(88.4300003, 0, 0)
Part10.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh11.Parent = Part10
WedgePart12.Parent = Model1
WedgePart12.Material = Enum.Material.SmoothPlastic
WedgePart12.BrickColor = BrickColor.new("Black")
WedgePart12.Reflectance = 0.0049999998882413
WedgePart12.Rotation = Vector3.new(13.4300003, 0, 90)
WedgePart12.Anchored = true
WedgePart12.CanCollide = false
WedgePart12.FormFactor = Enum.FormFactor.Symmetric
WedgePart12.Size = Vector3.new(0.201244384, 0.201244384, 0.628686726)
WedgePart12.CFrame = CFrame.new(84.2616959, 4.99800968, 68.1583786, 5.42964393e-08, -0.999996722, -1.74445791e-10, 0.972667515, 4.60768099e-08, -0.232180193, 0.232180342, -1.65836891e-08, 0.972667634)
WedgePart12.BottomSurface = Enum.SurfaceType.Smooth
WedgePart12.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart12.Position = Vector3.new(84.2616959, 4.99800968, 68.1583786)
WedgePart12.Orientation = Vector3.new(13.4300003, 0, 90)
WedgePart12.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart13.Parent = Model1
WedgePart13.Material = Enum.Material.SmoothPlastic
WedgePart13.BrickColor = BrickColor.new("Black")
WedgePart13.Reflectance = 0.0049999998882413
WedgePart13.Rotation = Vector3.new(13.4300003, 0, -90)
WedgePart13.Anchored = true
WedgePart13.CanCollide = false
WedgePart13.FormFactor = Enum.FormFactor.Symmetric
WedgePart13.Size = Vector3.new(0.201244384, 0.352177709, 0.729308963)
WedgePart13.CFrame = CFrame.new(84.8906479, 5.15557432, 67.4995956, 1.11450326e-07, 0.999996722, -9.83475843e-07, -0.972667575, -1.19211848e-07, -0.232179835, -0.232180044, 9.53674544e-07, 0.972667694)
WedgePart13.BottomSurface = Enum.SurfaceType.Smooth
WedgePart13.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart13.Position = Vector3.new(84.8906479, 5.15557432, 67.4995956)
WedgePart13.Orientation = Vector3.new(13.4300003, 0, -90)
WedgePart13.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart14.Parent = Model1
WedgePart14.Material = Enum.Material.SmoothPlastic
WedgePart14.BrickColor = BrickColor.new("Black")
WedgePart14.Reflectance = 0.0049999998882413
WedgePart14.Rotation = Vector3.new(13.4300003, 0, -180)
WedgePart14.Anchored = true
WedgePart14.CanCollide = false
WedgePart14.Size = Vector3.new(0.201244384, 0.224141195, 0.517623842)
WedgePart14.CFrame = CFrame.new(84.2610245, 4.65805483, 68.6664963, -0.99999994, 1.67656744e-05, 7.46475916e-06, -1.80406896e-05, -0.972671866, -0.232184008, 3.36804032e-06, -0.232183963, 0.972671926)
WedgePart14.BottomSurface = Enum.SurfaceType.Smooth
WedgePart14.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart14.Position = Vector3.new(84.2610245, 4.65805483, 68.6664963)
WedgePart14.Orientation = Vector3.new(13.4300003, 0, -180)
WedgePart14.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart15.Parent = Model1
WedgePart15.Material = Enum.Material.SmoothPlastic
WedgePart15.BrickColor = BrickColor.new("Black")
WedgePart15.Reflectance = 0.0049999998882413
WedgePart15.Rotation = Vector3.new(-166.570007, 0, 0)
WedgePart15.Anchored = true
WedgePart15.CanCollide = false
WedgePart15.Size = Vector3.new(0.201244384, 0.226340756, 0.503780782)
WedgePart15.CFrame = CFrame.new(85.166626, 4.53830528, 69.1634369, 1, -1.67652124e-05, 7.60012563e-06, -1.80716834e-05, -0.972671926, 0.232184038, 3.49981519e-06, -0.232184038, -0.972671926)
WedgePart15.BottomSurface = Enum.SurfaceType.Smooth
WedgePart15.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart15.Position = Vector3.new(85.166626, 4.53830528, 69.1634369)
WedgePart15.Orientation = Vector3.new(-13.4300003, 180, -180)
WedgePart15.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart16.Parent = Model1
WedgePart16.Material = Enum.Material.SmoothPlastic
WedgePart16.BrickColor = BrickColor.new("Black")
WedgePart16.Reflectance = 0.0049999998882413
WedgePart16.Rotation = Vector3.new(13.4300003, 0, 90)
WedgePart16.Anchored = true
WedgePart16.CanCollide = false
WedgePart16.FormFactor = Enum.FormFactor.Symmetric
WedgePart16.Size = Vector3.new(0.201244384, 0.352177709, 0.729308963)
WedgePart16.CFrame = CFrame.new(84.5387802, 5.15557432, 67.4995956, 1.1144477e-07, -0.999996722, 9.83477548e-07, 0.972667575, -1.19206263e-07, -0.232179835, 0.232180044, 9.53674146e-07, 0.972667694)
WedgePart16.BottomSurface = Enum.SurfaceType.Smooth
WedgePart16.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart16.Position = Vector3.new(84.5387802, 5.15557432, 67.4995956)
WedgePart16.Orientation = Vector3.new(13.4300003, 0, 90)
WedgePart16.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart17.Parent = Model1
WedgePart17.Material = Enum.Material.SmoothPlastic
WedgePart17.BrickColor = BrickColor.new("Black")
WedgePart17.Reflectance = 0.0049999998882413
WedgePart17.Rotation = Vector3.new(-166.570007, 0, 0)
WedgePart17.Anchored = true
WedgePart17.CanCollide = false
WedgePart17.Size = Vector3.new(0.201244384, 0.224141195, 0.498885751)
WedgePart17.CFrame = CFrame.new(84.2610321, 4.54004574, 69.1608963, 0.99999994, 1.67656744e-05, -7.4647578e-06, 1.80406896e-05, -0.972671866, 0.232183889, -3.36804032e-06, -0.232183903, -0.972671926)
WedgePart17.BottomSurface = Enum.SurfaceType.Smooth
WedgePart17.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart17.Position = Vector3.new(84.2610321, 4.54004574, 69.1608963)
WedgePart17.Orientation = Vector3.new(-13.4300003, -180, 180)
WedgePart17.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart18.Parent = Model1
WedgePart18.Material = Enum.Material.SmoothPlastic
WedgePart18.BrickColor = BrickColor.new("Black")
WedgePart18.Reflectance = 0.0049999998882413
WedgePart18.Rotation = Vector3.new(13.4300003, 0, -90)
WedgePart18.Anchored = true
WedgePart18.CanCollide = false
WedgePart18.FormFactor = Enum.FormFactor.Symmetric
WedgePart18.Size = Vector3.new(0.201244384, 0.201244384, 0.628686726)
WedgePart18.CFrame = CFrame.new(85.1665039, 4.99800968, 68.1583786, 5.43020029e-08, 0.999996722, 1.76164416e-10, -0.972667515, 4.60712499e-08, -0.232180193, -0.232180342, -1.65833196e-08, 0.972667634)
WedgePart18.BottomSurface = Enum.SurfaceType.Smooth
WedgePart18.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart18.Position = Vector3.new(85.1665039, 4.99800968, 68.1583786)
WedgePart18.Orientation = Vector3.new(13.4300003, 0, -90)
WedgePart18.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart19.Parent = Model1
WedgePart19.Material = Enum.Material.SmoothPlastic
WedgePart19.BrickColor = BrickColor.new("Black")
WedgePart19.Reflectance = 0.0049999998882413
WedgePart19.Rotation = Vector3.new(13.4300003, 0, 180)
WedgePart19.Anchored = true
WedgePart19.CanCollide = false
WedgePart19.Size = Vector3.new(0.201244384, 0.226340756, 0.518070102)
WedgePart19.CFrame = CFrame.new(85.166626, 4.6569376, 68.6664658, -1, -1.67652124e-05, -7.60012745e-06, 1.80716834e-05, -0.972671986, -0.232184127, -3.49981519e-06, -0.232184127, 0.972671986)
WedgePart19.BottomSurface = Enum.SurfaceType.Smooth
WedgePart19.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart19.Position = Vector3.new(85.166626, 4.6569376, 68.6664658)
WedgePart19.Orientation = Vector3.new(13.4300003, 0, 180)
WedgePart19.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart20.Parent = Model1
WedgePart20.Material = Enum.Material.SmoothPlastic
WedgePart20.BrickColor = BrickColor.new("Navy blue")
WedgePart20.Reflectance = 0.0049999998882413
WedgePart20.Rotation = Vector3.new(13.4300003, 0, 180)
WedgePart20.Anchored = true
WedgePart20.CanCollide = false
WedgePart20.Size = Vector3.new(0.220499977, 0.247997627, 0.567640364)
WedgePart20.CFrame = CFrame.new(85.2099533, 4.84621525, 68.6509476, -1, -1.67652124e-05, -7.60012745e-06, 1.80716834e-05, -0.972671986, -0.232184127, -3.49981519e-06, -0.232184127, 0.972671986)
WedgePart20.BottomSurface = Enum.SurfaceType.Smooth
WedgePart20.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart20.Position = Vector3.new(85.2099533, 4.84621525, 68.6509476)
WedgePart20.Orientation = Vector3.new(13.4300003, 0, 180)
WedgePart20.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart21.Parent = Model1
WedgePart21.Material = Enum.Material.SmoothPlastic
WedgePart21.BrickColor = BrickColor.new("Navy blue")
WedgePart21.Reflectance = 0.0049999998882413
WedgePart21.Rotation = Vector3.new(-166.570007, 0, 0)
WedgePart21.Anchored = true
WedgePart21.CanCollide = false
WedgePart21.Size = Vector3.new(0.220499977, 0.245587617, 0.546620429)
WedgePart21.CFrame = CFrame.new(84.2177048, 4.7181406, 69.1926804, 0.99999994, 1.67656744e-05, -7.4647578e-06, 1.80406896e-05, -0.972671866, 0.232183889, -3.36804032e-06, -0.232183903, -0.972671926)
WedgePart21.BottomSurface = Enum.SurfaceType.Smooth
WedgePart21.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart21.Position = Vector3.new(84.2177048, 4.7181406, 69.1926804)
WedgePart21.Orientation = Vector3.new(-13.4300003, -180, 180)
WedgePart21.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart22.Parent = Model1
WedgePart22.Material = Enum.Material.SmoothPlastic
WedgePart22.BrickColor = BrickColor.new("Navy blue")
WedgePart22.Reflectance = 0.0049999998882413
WedgePart22.Rotation = Vector3.new(13.4300003, 0, 90)
WedgePart22.Anchored = true
WedgePart22.CanCollide = false
WedgePart22.FormFactor = Enum.FormFactor.Symmetric
WedgePart22.Size = Vector3.new(0.220499977, 0.220499977, 0.688841164)
WedgePart22.CFrame = CFrame.new(84.2184372, 5.2199173, 68.0942612, 5.42964393e-08, -0.999996722, -1.74445791e-10, 0.972667515, 4.60768099e-08, -0.232180193, 0.232180342, -1.65836891e-08, 0.972667634)
WedgePart22.BottomSurface = Enum.SurfaceType.Smooth
WedgePart22.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart22.Position = Vector3.new(84.2184372, 5.2199173, 68.0942612)
WedgePart22.Orientation = Vector3.new(13.4300003, 0, 90)
WedgePart22.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart23.Parent = Model1
WedgePart23.Material = Enum.Material.SmoothPlastic
WedgePart23.BrickColor = BrickColor.new("Navy blue")
WedgePart23.Reflectance = 0.0049999998882413
WedgePart23.Rotation = Vector3.new(13.4300003, 0, -90)
WedgePart23.Anchored = true
WedgePart23.CanCollide = false
WedgePart23.FormFactor = Enum.FormFactor.Symmetric
WedgePart23.Size = Vector3.new(0.220499977, 0.220499977, 0.688841164)
WedgePart23.CFrame = CFrame.new(85.2098083, 5.2199173, 68.0942612, 5.43020029e-08, 0.999996722, 1.76164416e-10, -0.972667515, 4.60712499e-08, -0.232180193, -0.232180342, -1.65833196e-08, 0.972667634)
WedgePart23.BottomSurface = Enum.SurfaceType.Smooth
WedgePart23.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart23.Position = Vector3.new(85.2098083, 5.2199173, 68.0942612)
WedgePart23.Orientation = Vector3.new(13.4300003, 0, -90)
WedgePart23.Color = Color3.new(0, 0.12549, 0.376471)
Part24.Name = "Brick"
Part24.Parent = Model1
Part24.Material = Enum.Material.SmoothPlastic
Part24.BrickColor = BrickColor.new("Medium blue")
Part24.Rotation = Vector3.new(0, 90, 0)
Part24.Anchored = true
Part24.CanCollide = false
Part24.FormFactor = Enum.FormFactor.Symmetric
Part24.Size = Vector3.new(1.23828077, 0.200000003, 1.23717237)
Part24.CFrame = CFrame.new(84.7160416, 2.58101511, 69.6111679, -1.74450037e-07, -1.85120143e-06, 1, -4.62681055e-06, 0.99999994, 1.85119507e-06, -0.99999994, -4.62681055e-06, -1.74458165e-07)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Color = Color3.new(0.431373, 0.6, 0.792157)
Part24.Position = Vector3.new(84.7160416, 2.58101511, 69.6111679)
Part24.Orientation = Vector3.new(0, 90, 0)
Part24.Color = Color3.new(0.431373, 0.6, 0.792157)
BlockMesh25.Parent = Part24
Part26.Name = "Brick"
Part26.Parent = Model1
Part26.Material = Enum.Material.SmoothPlastic
Part26.BrickColor = BrickColor.new("Really black")
Part26.Rotation = Vector3.new(0, 90, 0)
Part26.Anchored = true
Part26.CanCollide = false
Part26.FormFactor = Enum.FormFactor.Symmetric
Part26.Size = Vector3.new(1.09828091, 1.83832359, 1.0971725)
Part26.CFrame = CFrame.new(84.7160492, 3.10478282, 69.611145, -1.74450037e-07, -1.85120143e-06, 1, -4.62681055e-06, 0.99999994, 1.85119507e-06, -0.99999994, -4.62681055e-06, -1.74458165e-07)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part26.Position = Vector3.new(84.7160492, 3.10478282, 69.611145)
Part26.Orientation = Vector3.new(0, 90, 0)
Part26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh27.Parent = Part26
Part28.Name = "Brick"
Part28.Parent = Model1
Part28.Material = Enum.Material.SmoothPlastic
Part28.BrickColor = BrickColor.new("Medium blue")
Part28.Rotation = Vector3.new(0, 90, 0)
Part28.Anchored = true
Part28.CanCollide = false
Part28.FormFactor = Enum.FormFactor.Symmetric
Part28.Size = Vector3.new(1.23828077, 0.200000003, 1.23717237)
Part28.CFrame = CFrame.new(84.7160492, 2.31716251, 69.6111603, -1.74450037e-07, -1.85120143e-06, 1, -4.62681055e-06, 0.99999994, 1.85119507e-06, -0.99999994, -4.62681055e-06, -1.74458165e-07)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Color = Color3.new(0.431373, 0.6, 0.792157)
Part28.Position = Vector3.new(84.7160492, 2.31716251, 69.6111603)
Part28.Orientation = Vector3.new(0, 90, 0)
Part28.Color = Color3.new(0.431373, 0.6, 0.792157)
BlockMesh29.Parent = Part28
Part30.Name = "Brick"
Part30.Parent = Model1
Part30.Material = Enum.Material.SmoothPlastic
Part30.BrickColor = BrickColor.new("Black")
Part30.Reflectance = 0.0049999998882413
Part30.Rotation = Vector3.new(88.4300003, 0, 0)
Part30.Anchored = true
Part30.CanCollide = false
Part30.FormFactor = Enum.FormFactor.Symmetric
Part30.Size = Vector3.new(0.924965441, 0.201244384, 1.06169295)
Part30.CFrame = CFrame.new(84.6228867, 4.22645569, 68.9277115, 1, 1.08608943e-13, 2.84414961e-12, -2.84009643e-12, 0.027451029, -0.99962306, 1.86642856e-13, 0.99962306, 0.027451029)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part30.Position = Vector3.new(84.6228867, 4.22645569, 68.9277115)
Part30.Orientation = Vector3.new(88.4300003, 0, 0)
Part30.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh31.Parent = Part30
Part32.Name = "Brick"
Part32.Parent = Model1
Part32.Material = Enum.Material.SmoothPlastic
Part32.BrickColor = BrickColor.new("Black")
Part32.Reflectance = 0.0049999998882413
Part32.Rotation = Vector3.new(79.2300034, 0, 0)
Part32.Anchored = true
Part32.CanCollide = false
Part32.FormFactor = Enum.FormFactor.Symmetric
Part32.Size = Vector3.new(0.201244384, 1.03670979, 0.806359112)
Part32.CFrame = CFrame.new(84.2610245, 4.18971729, 69.4767838, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part32.Position = Vector3.new(84.2610245, 4.18971729, 69.4767838)
Part32.Orientation = Vector3.new(79.2300034, 0, 0)
Part32.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh33.Parent = Part32
Part34.Name = "Brick"
Part34.Parent = Model1
Part34.Material = Enum.Material.SmoothPlastic
Part34.BrickColor = BrickColor.new("Navy blue")
Part34.Reflectance = 0.0049999998882413
Part34.Rotation = Vector3.new(79.2300034, 0, 0)
Part34.Anchored = true
Part34.CanCollide = false
Part34.FormFactor = Enum.FormFactor.Symmetric
Part34.Size = Vector3.new(0.220499977, 1.13590491, 0.883513689)
Part34.CFrame = CFrame.new(84.2177048, 4.3342948, 69.5388107, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Color = Color3.new(0, 0.12549, 0.376471)
Part34.Position = Vector3.new(84.2177048, 4.3342948, 69.5388107)
Part34.Orientation = Vector3.new(79.2300034, 0, 0)
Part34.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh35.Parent = Part34
Part36.Name = "Brick"
Part36.Parent = Model1
Part36.Material = Enum.Material.SmoothPlastic
Part36.BrickColor = BrickColor.new("Navy blue")
Part36.Reflectance = 0.0049999998882413
Part36.Rotation = Vector3.new(79.2300034, 0, 0)
Part36.Anchored = true
Part36.CanCollide = false
Part36.FormFactor = Enum.FormFactor.Symmetric
Part36.Size = Vector3.new(0.220499977, 1.13590491, 0.883513689)
Part36.CFrame = CFrame.new(85.2099533, 4.33183575, 69.5387192, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.Color = Color3.new(0, 0.12549, 0.376471)
Part36.Position = Vector3.new(85.2099533, 4.33183575, 69.5387192)
Part36.Orientation = Vector3.new(79.2300034, 0, 0)
Part36.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh37.Parent = Part36
Part38.Name = "Brick"
Part38.Parent = Model1
Part38.Material = Enum.Material.SmoothPlastic
Part38.BrickColor = BrickColor.new("Navy blue")
Part38.Reflectance = 0.0049999998882413
Part38.Rotation = Vector3.new(103.43, 0, 0)
Part38.Anchored = true
Part38.CanCollide = false
Part38.FormFactor = Enum.FormFactor.Symmetric
Part38.Size = Vector3.new(1.21275008, 1.59979963, 0.220499977)
Part38.CFrame = CFrame.new(84.713829, 4.95423746, 69.2073441, 1, 8.59323843e-13, 2.78033499e-12, -2.84009643e-12, -0.232184067, -0.972671926, 1.86642856e-13, 0.972671926, -0.232184067)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Color = Color3.new(0, 0.12549, 0.376471)
Part38.Position = Vector3.new(84.713829, 4.95423746, 69.2073441)
Part38.Orientation = Vector3.new(76.5699997, 180, -180)
Part38.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh39.Parent = Part38
Part40.Name = "Brick"
Part40.Parent = Model1
Part40.Material = Enum.Material.SmoothPlastic
Part40.BrickColor = BrickColor.new("Navy blue")
Part40.Reflectance = 0.0049999998882413
Part40.Rotation = Vector3.new(79.2300034, 0, 0)
Part40.Anchored = true
Part40.CanCollide = false
Part40.FormFactor = Enum.FormFactor.Symmetric
Part40.Size = Vector3.new(1.21275008, 0.220499977, 0.883513689)
Part40.CFrame = CFrame.new(84.713829, 4.41975594, 69.9888382, 1, -3.8433216e-13, 2.83340517e-12, -2.84009643e-12, 0.186832219, -0.982391834, 1.86642856e-13, 0.982391834, 0.186832219)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Color = Color3.new(0, 0.12549, 0.376471)
Part40.Position = Vector3.new(84.713829, 4.41975594, 69.9888382)
Part40.Orientation = Vector3.new(79.2300034, 0, 0)
Part40.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh41.Parent = Part40
Part42.Name = "Brick"
Part42.Parent = Model1
Part42.Material = Enum.Material.SmoothPlastic
Part42.BrickColor = BrickColor.new("Navy blue")
Part42.Reflectance = 0.0049999998882413
Part42.Rotation = Vector3.new(88.4300003, 0, 0)
Part42.Anchored = true
Part42.CanCollide = false
Part42.FormFactor = Enum.FormFactor.Symmetric
Part42.Size = Vector3.new(1.0134685, 0.220499977, 1.16327846)
Part42.CFrame = CFrame.new(84.6141891, 4.37454987, 68.9372253, 1, 1.08608943e-13, 2.84414961e-12, -2.84009643e-12, 0.027451029, -0.99962306, 1.86642856e-13, 0.99962306, 0.027451029)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.Color = Color3.new(0, 0.12549, 0.376471)
Part42.Position = Vector3.new(84.6141891, 4.37454987, 68.9372253)
Part42.Orientation = Vector3.new(88.4300003, 0, 0)
Part42.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh43.Parent = Part42
Part44.Name = "Brick"
Part44.Parent = Model1
Part44.Material = Enum.Material.SmoothPlastic
Part44.BrickColor = BrickColor.new("Navy blue")
Part44.Reflectance = 0.0049999998882413
Part44.Rotation = Vector3.new(88.4300003, 0, 0)
Part44.Anchored = true
Part44.CanCollide = false
Part44.FormFactor = Enum.FormFactor.Symmetric
Part44.Size = Vector3.new(0.220499977, 0.233191282, 1.15868151)
Part44.CFrame = CFrame.new(85.2099533, 4.37127972, 68.9445953, 1, 1.08608943e-13, 2.84414961e-12, -2.84009643e-12, 0.027451029, -0.99962306, 1.86642856e-13, 0.99962306, 0.027451029)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Color = Color3.new(0, 0.12549, 0.376471)
Part44.Position = Vector3.new(85.2099533, 4.37127972, 68.9445953)
Part44.Orientation = Vector3.new(88.4300003, 0, 0)
Part44.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh45.Parent = Part44
Part46.Name = "Brick"
Part46.Parent = Model1
Part46.Material = Enum.Material.SmoothPlastic
Part46.BrickColor = BrickColor.new("Black")
Part46.Reflectance = 0.0049999998882413
Part46.Rotation = Vector3.new(103.43, 0, 0)
Part46.Anchored = true
Part46.CanCollide = false
Part46.FormFactor = Enum.FormFactor.Symmetric
Part46.Size = Vector3.new(1.10684443, 1.46009409, 0.201244384)
Part46.CFrame = CFrame.new(84.713829, 4.75552416, 69.1742554, 1, 8.59323843e-13, 2.78033499e-12, -2.84009643e-12, -0.232184067, -0.972671926, 1.86642856e-13, 0.972671926, -0.232184067)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part46.Position = Vector3.new(84.713829, 4.75552416, 69.1742554)
Part46.Orientation = Vector3.new(76.5699997, 180, -180)
Part46.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh47.Parent = Part46
Part48.Parent = Model1
Part48.Transparency = 1
Part48.Rotation = Vector3.new(103.43, 0, 0)
Part48.Anchored = true
Part48.CanCollide = false
Part48.FormFactor = Enum.FormFactor.Symmetric
Part48.Size = Vector3.new(1.15937805, 1.40214789, 0.200000048)
Part48.CFrame = CFrame.new(84.7078781, 4.9594717, 69.2473831, 1, -2.23584706e-08, 2.78033477e-12, -5.19422949e-09, -0.232183963, -0.972671866, 2.17484519e-08, 0.972671866, -0.232183963)
Part48.Position = Vector3.new(84.7078781, 4.9594717, 69.2473831)
Part48.Orientation = Vector3.new(76.5699997, 180, -180)
Decal49.Parent = Part48
Decal49.Texture = "http://www.roblox.com/asset/?id=590273972"
Part50.Parent = Model1
Part50.Material = Enum.Material.SmoothPlastic
Part50.BrickColor = BrickColor.new("Navy blue")
Part50.Reflectance = 0.0049999998882413
Part50.Rotation = Vector3.new(13.4300003, 0, -180)
Part50.Anchored = true
Part50.CanCollide = false
Part50.Size = Vector3.new(0.770880163, 0.220499977, 0.688839018)
Part50.CFrame = CFrame.new(84.7141266, 5.2199173, 68.0942612, -0.99999994, 2.78033629e-12, 8.30897634e-13, 2.84009621e-12, -0.972672582, -0.232180983, -1.86642843e-13, -0.232181013, 0.972672522)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.Color = Color3.new(0, 0.12549, 0.376471)
Part50.Position = Vector3.new(84.7141266, 5.2199173, 68.0942612)
Part50.Orientation = Vector3.new(13.4300003, 0, 180)
Part50.Color = Color3.new(0, 0.12549, 0.376471)
Part51.Parent = Model1
Part51.Material = Enum.Material.SmoothPlastic
Part51.BrickColor = BrickColor.new("Black")
Part51.Reflectance = 0.0049999998882413
Part51.Rotation = Vector3.new(13.4300003, 0, -180)
Part51.Anchored = true
Part51.CanCollide = false
Part51.Size = Vector3.new(0.703561604, 0.201244384, 0.628684759)
Part51.CFrame = CFrame.new(84.7140961, 4.99800968, 68.1583786, -0.99999994, 2.78033629e-12, 8.30897634e-13, 2.84009621e-12, -0.972672582, -0.232180983, -1.86642843e-13, -0.232181013, 0.972672522)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part51.Position = Vector3.new(84.7140961, 4.99800968, 68.1583786)
Part51.Orientation = Vector3.new(13.4300003, 0, 180)
Part51.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart52.Parent = Model1
WedgePart52.Material = Enum.Material.SmoothPlastic
WedgePart52.BrickColor = BrickColor.new("Navy blue")
WedgePart52.Reflectance = 0.0049999998882413
WedgePart52.Rotation = Vector3.new(-166.570007, 0, 0)
WedgePart52.Anchored = true
WedgePart52.CanCollide = false
WedgePart52.Size = Vector3.new(0.220499977, 0.247997627, 0.551983833)
WedgePart52.CFrame = CFrame.new(85.2099533, 4.71623325, 69.1954803, 1, -1.67652124e-05, 7.60012563e-06, -1.80716834e-05, -0.972671926, 0.232184038, 3.49981519e-06, -0.232184038, -0.972671926)
WedgePart52.BottomSurface = Enum.SurfaceType.Smooth
WedgePart52.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart52.Position = Vector3.new(85.2099533, 4.71623325, 69.1954803)
WedgePart52.Orientation = Vector3.new(-13.4300003, 180, -180)
WedgePart52.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart53.Parent = Model1
WedgePart53.Material = Enum.Material.SmoothPlastic
WedgePart53.BrickColor = BrickColor.new("Navy blue")
WedgePart53.Reflectance = 0.0049999998882413
WedgePart53.Rotation = Vector3.new(13.4300003, 0, -90)
WedgePart53.Anchored = true
WedgePart53.CanCollide = false
WedgePart53.FormFactor = Enum.FormFactor.Symmetric
WedgePart53.Size = Vector3.new(0.220499977, 0.385874987, 0.79909116)
WedgePart53.CFrame = CFrame.new(84.9075699, 5.39255524, 67.3724747, 1.11450326e-07, 0.999996722, -9.83475843e-07, -0.972667575, -1.19211848e-07, -0.232179835, -0.232180044, 9.53674544e-07, 0.972667694)
WedgePart53.BottomSurface = Enum.SurfaceType.Smooth
WedgePart53.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart53.Position = Vector3.new(84.9075699, 5.39255524, 67.3724747)
WedgePart53.Orientation = Vector3.new(13.4300003, 0, -90)
WedgePart53.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart54.Parent = Model1
WedgePart54.Material = Enum.Material.SmoothPlastic
WedgePart54.BrickColor = BrickColor.new("Navy blue")
WedgePart54.Reflectance = 0.0049999998882413
WedgePart54.Rotation = Vector3.new(13.4300003, 0, -180)
WedgePart54.Anchored = true
WedgePart54.CanCollide = false
WedgePart54.Size = Vector3.new(0.220499977, 0.245587617, 0.567151427)
WedgePart54.CFrame = CFrame.new(84.2177048, 4.8474412, 68.6509781, -0.99999994, 1.67656744e-05, 7.46475916e-06, -1.80406896e-05, -0.972671866, -0.232184008, 3.36804032e-06, -0.232183963, 0.972671926)
WedgePart54.BottomSurface = Enum.SurfaceType.Smooth
WedgePart54.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart54.Position = Vector3.new(84.2177048, 4.8474412, 68.6509781)
WedgePart54.Orientation = Vector3.new(13.4300003, 0, -180)
WedgePart54.Color = Color3.new(0, 0.12549, 0.376471)
Model55.Name = "LeftLeg"
Model55.Parent = Model0
Part56.Name = "Left Leg1"
Part56.Parent = Model55
Part56.BrickColor = BrickColor.new("Pastel yellow")
Part56.Transparency = 1
Part56.Rotation = Vector3.new(0, -90, 0)
Part56.Anchored = true
Part56.CanCollide = false
Part56.FormFactor = Enum.FormFactor.Symmetric
Part56.Size = Vector3.new(1, 2, 1)
Part56.CFrame = CFrame.new(84.6178741, 1.43210542, 70.6219406, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.Color = Color3.new(1, 1, 0.8)
Part56.Position = Vector3.new(84.6178741, 1.43210542, 70.6219406)
Part56.Orientation = Vector3.new(0, -90, 0)
Part56.Color = Color3.new(1, 1, 0.8)
Model57.Name = "RightArm"
Model57.Parent = Model0
Part58.Name = "Right Arm1"
Part58.Parent = Model57
Part58.BrickColor = BrickColor.new("Pastel yellow")
Part58.Transparency = 1
Part58.Rotation = Vector3.new(0, -90, 0)
Part58.Anchored = true
Part58.CanCollide = false
Part58.FormFactor = Enum.FormFactor.Symmetric
Part58.Size = Vector3.new(1, 2, 1)
Part58.CFrame = CFrame.new(84.7411346, 2.97469735, 72.663681, 8.15269212e-21, -2.35065841e-06, -1, -9.82558219e-19, 1, -2.35065841e-06, 1, 9.82558219e-19, 8.15038264e-21)
Part58.Color = Color3.new(1, 1, 0.8)
Part58.Position = Vector3.new(84.7411346, 2.97469735, 72.663681)
Part58.Orientation = Vector3.new(0, -90, 0)
Part58.Color = Color3.new(1, 1, 0.8)
WedgePart59.Parent = Model57
WedgePart59.Material = Enum.Material.SmoothPlastic
WedgePart59.BrickColor = BrickColor.new("Black")
WedgePart59.Reflectance = 0.0049999998882413
WedgePart59.Rotation = Vector3.new(166.570007, 0, 90)
WedgePart59.Anchored = true
WedgePart59.CanCollide = false
WedgePart59.FormFactor = Enum.FormFactor.Symmetric
WedgePart59.Size = Vector3.new(0.201244384, 0.201244384, 0.628686726)
WedgePart59.CFrame = CFrame.new(84.2616959, 4.99801111, 74.0790176, -5.42963967e-08, -0.999996722, -1.74767589e-10, -0.972667396, 4.60768206e-08, -0.232180774, 0.232180953, 1.65832912e-08, -0.972667456)
WedgePart59.BottomSurface = Enum.SurfaceType.Smooth
WedgePart59.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart59.Position = Vector3.new(84.2616959, 4.99801111, 74.0790176)
WedgePart59.Orientation = Vector3.new(13.4300003, -180, -90)
WedgePart59.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part60.Name = "Brick"
Part60.Parent = Model57
Part60.Material = Enum.Material.SmoothPlastic
Part60.BrickColor = BrickColor.new("Medium blue")
Part60.Rotation = Vector3.new(0, 90, 0)
Part60.Anchored = true
Part60.CanCollide = false
Part60.FormFactor = Enum.FormFactor.Symmetric
Part60.Size = Vector3.new(1.23828077, 0.200000003, 1.23717237)
Part60.CFrame = CFrame.new(84.7160492, 2.58102369, 72.6230316, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Color = Color3.new(0.431373, 0.6, 0.792157)
Part60.Position = Vector3.new(84.7160492, 2.58102369, 72.6230316)
Part60.Orientation = Vector3.new(0, 90, 0)
Part60.Color = Color3.new(0.431373, 0.6, 0.792157)
BlockMesh61.Parent = Part60
Part62.Name = "Brick"
Part62.Parent = Model57
Part62.Material = Enum.Material.SmoothPlastic
Part62.BrickColor = BrickColor.new("Navy blue")
Part62.Reflectance = 0.0049999998882413
Part62.Rotation = Vector3.new(91.5699997, 0, 180)
Part62.Anchored = true
Part62.CanCollide = false
Part62.FormFactor = Enum.FormFactor.Symmetric
Part62.Size = Vector3.new(0.220499977, 0.233191282, 1.15868151)
Part62.CFrame = CFrame.new(85.2099533, 4.37128067, 73.2928162, -1, -2.60803667e-13, 2.9527652e-12, 2.84009643e-12, 0.0274504386, -0.99962306, -1.86642856e-13, -0.99962306, -0.0274504386)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Color = Color3.new(0, 0.12549, 0.376471)
Part62.Position = Vector3.new(85.2099533, 4.37128067, 73.2928162)
Part62.Orientation = Vector3.new(88.4300003, 180, 0)
Part62.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh63.Parent = Part62
WedgePart64.Parent = Model57
WedgePart64.Material = Enum.Material.SmoothPlastic
WedgePart64.BrickColor = BrickColor.new("Navy blue")
WedgePart64.Reflectance = 0.0049999998882413
WedgePart64.Rotation = Vector3.new(166.570007, 0, 0)
WedgePart64.Anchored = true
WedgePart64.CanCollide = false
WedgePart64.Size = Vector3.new(0.220499977, 0.247997627, 0.567640364)
WedgePart64.CFrame = CFrame.new(85.2099533, 4.84621668, 73.5864563, 1, -1.67652124e-05, -7.6001279e-06, -1.8071687e-05, -0.972671807, -0.232184678, -3.49980428e-06, 0.232184678, -0.972671807)
WedgePart64.BottomSurface = Enum.SurfaceType.Smooth
WedgePart64.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart64.Position = Vector3.new(85.2099533, 4.84621668, 73.5864563)
WedgePart64.Orientation = Vector3.new(13.4300003, -180, -180)
WedgePart64.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart65.Parent = Model57
WedgePart65.Material = Enum.Material.SmoothPlastic
WedgePart65.BrickColor = BrickColor.new("Navy blue")
WedgePart65.Reflectance = 0.0049999998882413
WedgePart65.Rotation = Vector3.new(166.570007, 0, 0)
WedgePart65.Anchored = true
WedgePart65.CanCollide = false
WedgePart65.Size = Vector3.new(0.220499977, 0.245587617, 0.567151427)
WedgePart65.CFrame = CFrame.new(84.2177048, 4.84744263, 73.5864029, 0.99999994, 1.67656744e-05, 7.46475916e-06, 1.80406932e-05, -0.972671747, -0.232184559, 3.36802987e-06, 0.232184559, -0.972671807)
WedgePart65.BottomSurface = Enum.SurfaceType.Smooth
WedgePart65.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart65.Position = Vector3.new(84.2177048, 4.84744263, 73.5864029)
WedgePart65.Orientation = Vector3.new(13.4300003, 180, 180)
WedgePart65.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart66.Parent = Model57
WedgePart66.Material = Enum.Material.SmoothPlastic
WedgePart66.BrickColor = BrickColor.new("Navy blue")
WedgePart66.Reflectance = 0.0049999998882413
WedgePart66.Rotation = Vector3.new(-13.4300003, 0, 180)
WedgePart66.Anchored = true
WedgePart66.CanCollide = false
WedgePart66.Size = Vector3.new(0.220499977, 0.247997627, 0.551983833)
WedgePart66.CFrame = CFrame.new(85.2099533, 4.71623421, 73.0419388, -1, -1.67652124e-05, 7.60012608e-06, 1.8071687e-05, -0.972671807, 0.232184619, 3.49980428e-06, 0.232184619, 0.972671807)
WedgePart66.BottomSurface = Enum.SurfaceType.Smooth
WedgePart66.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart66.Position = Vector3.new(85.2099533, 4.71623421, 73.0419388)
WedgePart66.Orientation = Vector3.new(-13.4300003, 0, 180)
WedgePart66.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart67.Parent = Model57
WedgePart67.Material = Enum.Material.SmoothPlastic
WedgePart67.BrickColor = BrickColor.new("Navy blue")
WedgePart67.Reflectance = 0.0049999998882413
WedgePart67.Rotation = Vector3.new(166.570007, 0, -90)
WedgePart67.Anchored = true
WedgePart67.CanCollide = false
WedgePart67.FormFactor = Enum.FormFactor.Symmetric
WedgePart67.Size = Vector3.new(0.220499977, 0.220499977, 0.688841164)
WedgePart67.CFrame = CFrame.new(85.209816, 5.21992493, 74.1431198, -5.43020455e-08, 0.999996722, 1.75842618e-10, 0.972667396, 4.60712606e-08, -0.232180774, -0.232180953, 1.65836624e-08, -0.972667456)
WedgePart67.BottomSurface = Enum.SurfaceType.Smooth
WedgePart67.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart67.Position = Vector3.new(85.209816, 5.21992493, 74.1431198)
WedgePart67.Orientation = Vector3.new(13.4300003, 180, 90)
WedgePart67.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart68.Parent = Model57
WedgePart68.Material = Enum.Material.SmoothPlastic
WedgePart68.BrickColor = BrickColor.new("Navy blue")
WedgePart68.Reflectance = 0.0049999998882413
WedgePart68.Rotation = Vector3.new(166.570007, 0, -90)
WedgePart68.Anchored = true
WedgePart68.CanCollide = false
WedgePart68.FormFactor = Enum.FormFactor.Symmetric
WedgePart68.Size = Vector3.new(0.220499977, 0.385874987, 0.79909116)
WedgePart68.CFrame = CFrame.new(84.9075699, 5.39256382, 74.8649445, -1.11450369e-07, 0.999996722, -9.83476184e-07, 0.972667456, -1.1921243e-07, -0.232180417, -0.232180595, -9.53674203e-07, -0.972667515)
WedgePart68.BottomSurface = Enum.SurfaceType.Smooth
WedgePart68.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart68.Position = Vector3.new(84.9075699, 5.39256382, 74.8649445)
WedgePart68.Orientation = Vector3.new(13.4300003, -180, 90)
WedgePart68.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart69.Parent = Model57
WedgePart69.Material = Enum.Material.SmoothPlastic
WedgePart69.BrickColor = BrickColor.new("Navy blue")
WedgePart69.Reflectance = 0.0049999998882413
WedgePart69.Rotation = Vector3.new(-13.4300003, 0, -180)
WedgePart69.Anchored = true
WedgePart69.CanCollide = false
WedgePart69.Size = Vector3.new(0.220499977, 0.245587617, 0.546620429)
WedgePart69.CFrame = CFrame.new(84.2177048, 4.71814156, 73.0447464, -0.99999994, 1.67656744e-05, -7.46475735e-06, -1.80406932e-05, -0.972671747, 0.23218447, -3.36802987e-06, 0.23218447, 0.972671807)
WedgePart69.BottomSurface = Enum.SurfaceType.Smooth
WedgePart69.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart69.Position = Vector3.new(84.2177048, 4.71814156, 73.0447464)
WedgePart69.Orientation = Vector3.new(-13.4300003, 0, -180)
WedgePart69.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart70.Parent = Model57
WedgePart70.Material = Enum.Material.SmoothPlastic
WedgePart70.BrickColor = BrickColor.new("Navy blue")
WedgePart70.Reflectance = 0.0049999998882413
WedgePart70.Rotation = Vector3.new(166.570007, 0, 90)
WedgePart70.Anchored = true
WedgePart70.CanCollide = false
WedgePart70.FormFactor = Enum.FormFactor.Symmetric
WedgePart70.Size = Vector3.new(0.220499977, 0.385874987, 0.79909116)
WedgePart70.CFrame = CFrame.new(84.5220337, 5.39256382, 74.8649445, -1.11444727e-07, -0.999996722, 9.83477094e-07, -0.972667456, -1.19206732e-07, -0.232180417, 0.232180595, -9.53674316e-07, -0.972667515)
WedgePart70.BottomSurface = Enum.SurfaceType.Smooth
WedgePart70.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart70.Position = Vector3.new(84.5220337, 5.39256382, 74.8649445)
WedgePart70.Orientation = Vector3.new(13.4300003, 180, -90)
WedgePart70.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart71.Parent = Model57
WedgePart71.Material = Enum.Material.SmoothPlastic
WedgePart71.BrickColor = BrickColor.new("Navy blue")
WedgePart71.Reflectance = 0.0049999998882413
WedgePart71.Rotation = Vector3.new(166.570007, 0, 90)
WedgePart71.Anchored = true
WedgePart71.CanCollide = false
WedgePart71.FormFactor = Enum.FormFactor.Symmetric
WedgePart71.Size = Vector3.new(0.220499977, 0.220499977, 0.688841164)
WedgePart71.CFrame = CFrame.new(84.2184372, 5.21992493, 74.1431198, -5.42963967e-08, -0.999996722, -1.74767589e-10, -0.972667396, 4.60768206e-08, -0.232180774, 0.232180953, 1.65832912e-08, -0.972667456)
WedgePart71.BottomSurface = Enum.SurfaceType.Smooth
WedgePart71.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart71.Position = Vector3.new(84.2184372, 5.21992493, 74.1431198)
WedgePart71.Orientation = Vector3.new(13.4300003, -180, -90)
WedgePart71.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart72.Parent = Model57
WedgePart72.Material = Enum.Material.SmoothPlastic
WedgePart72.BrickColor = BrickColor.new("Black")
WedgePart72.Reflectance = 0.0049999998882413
WedgePart72.Rotation = Vector3.new(166.570007, 0, 0)
WedgePart72.Anchored = true
WedgePart72.CanCollide = false
WedgePart72.Size = Vector3.new(0.201244384, 0.226340756, 0.518070102)
WedgePart72.CFrame = CFrame.new(85.166626, 4.65694332, 73.5709457, 1, -1.67652124e-05, -7.6001279e-06, -1.8071687e-05, -0.972671807, -0.232184678, -3.49980428e-06, 0.232184678, -0.972671807)
WedgePart72.BottomSurface = Enum.SurfaceType.Smooth
WedgePart72.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart72.Position = Vector3.new(85.166626, 4.65694332, 73.5709457)
WedgePart72.Orientation = Vector3.new(13.4300003, -180, -180)
WedgePart72.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart73.Parent = Model57
WedgePart73.Material = Enum.Material.SmoothPlastic
WedgePart73.BrickColor = BrickColor.new("Black")
WedgePart73.Reflectance = 0.0049999998882413
WedgePart73.Rotation = Vector3.new(-13.4300003, 0, 180)
WedgePart73.Anchored = true
WedgePart73.CanCollide = false
WedgePart73.Size = Vector3.new(0.201244384, 0.226340756, 0.503780782)
WedgePart73.CFrame = CFrame.new(85.166626, 4.53830671, 73.0739899, -1, -1.67652124e-05, 7.60012608e-06, 1.8071687e-05, -0.972671807, 0.232184619, 3.49980428e-06, 0.232184619, 0.972671807)
WedgePart73.BottomSurface = Enum.SurfaceType.Smooth
WedgePart73.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart73.Position = Vector3.new(85.166626, 4.53830671, 73.0739899)
WedgePart73.Orientation = Vector3.new(-13.4300003, 0, 180)
WedgePart73.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart74.Parent = Model57
WedgePart74.Material = Enum.Material.SmoothPlastic
WedgePart74.BrickColor = BrickColor.new("Black")
WedgePart74.Reflectance = 0.0049999998882413
WedgePart74.Rotation = Vector3.new(166.570007, 0, 90)
WedgePart74.Anchored = true
WedgePart74.CanCollide = false
WedgePart74.FormFactor = Enum.FormFactor.Symmetric
WedgePart74.Size = Vector3.new(0.201244384, 0.352177709, 0.729308963)
WedgePart74.CFrame = CFrame.new(84.5387802, 5.15557623, 74.7378082, -1.11444727e-07, -0.999996722, 9.83477094e-07, -0.972667456, -1.19206732e-07, -0.232180417, 0.232180595, -9.53674316e-07, -0.972667515)
WedgePart74.BottomSurface = Enum.SurfaceType.Smooth
WedgePart74.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart74.Position = Vector3.new(84.5387802, 5.15557623, 74.7378082)
WedgePart74.Orientation = Vector3.new(13.4300003, 180, -90)
WedgePart74.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart75.Parent = Model57
WedgePart75.Material = Enum.Material.SmoothPlastic
WedgePart75.BrickColor = BrickColor.new("Black")
WedgePart75.Reflectance = 0.0049999998882413
WedgePart75.Rotation = Vector3.new(166.570007, 0, -90)
WedgePart75.Anchored = true
WedgePart75.CanCollide = false
WedgePart75.FormFactor = Enum.FormFactor.Symmetric
WedgePart75.Size = Vector3.new(0.201244384, 0.201244384, 0.628686726)
WedgePart75.CFrame = CFrame.new(85.1665039, 4.99801111, 74.0790176, -5.43020455e-08, 0.999996722, 1.75842618e-10, 0.972667396, 4.60712606e-08, -0.232180774, -0.232180953, 1.65836624e-08, -0.972667456)
WedgePart75.BottomSurface = Enum.SurfaceType.Smooth
WedgePart75.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart75.Position = Vector3.new(85.1665039, 4.99801111, 74.0790176)
WedgePart75.Orientation = Vector3.new(13.4300003, 180, 90)
WedgePart75.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart76.Parent = Model57
WedgePart76.Material = Enum.Material.SmoothPlastic
WedgePart76.BrickColor = BrickColor.new("Black")
WedgePart76.Reflectance = 0.0049999998882413
WedgePart76.Rotation = Vector3.new(-13.4300003, 0, -180)
WedgePart76.Anchored = true
WedgePart76.CanCollide = false
WedgePart76.Size = Vector3.new(0.201244384, 0.224141195, 0.498885751)
WedgePart76.CFrame = CFrame.new(84.2610245, 4.54004765, 73.0765152, -0.99999994, 1.67656744e-05, -7.46475735e-06, -1.80406932e-05, -0.972671747, 0.23218447, -3.36802987e-06, 0.23218447, 0.972671807)
WedgePart76.BottomSurface = Enum.SurfaceType.Smooth
WedgePart76.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart76.Position = Vector3.new(84.2610245, 4.54004765, 73.0765152)
WedgePart76.Orientation = Vector3.new(-13.4300003, 0, -180)
WedgePart76.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part77.Name = "Brick"
Part77.Parent = Model57
Part77.Material = Enum.Material.SmoothPlastic
Part77.BrickColor = BrickColor.new("Navy blue")
Part77.Rotation = Vector3.new(0, 90, 0)
Part77.Anchored = true
Part77.CanCollide = false
Part77.FormFactor = Enum.FormFactor.Symmetric
Part77.Size = Vector3.new(1.19828081, 0.570214629, 1.1971724)
Part77.CFrame = CFrame.new(84.7160492, 2.46018195, 72.6230011, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Color = Color3.new(0, 0.12549, 0.376471)
Part77.Position = Vector3.new(84.7160492, 2.46018195, 72.6230011)
Part77.Orientation = Vector3.new(0, 90, 0)
Part77.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh78.Parent = Part77
Part79.Name = "Brick"
Part79.Parent = Model57
Part79.Material = Enum.Material.SmoothPlastic
Part79.BrickColor = BrickColor.new("Medium blue")
Part79.Rotation = Vector3.new(0, 90, 0)
Part79.Anchored = true
Part79.CanCollide = false
Part79.FormFactor = Enum.FormFactor.Symmetric
Part79.Size = Vector3.new(1.23828077, 0.200000003, 1.23717237)
Part79.CFrame = CFrame.new(84.7160492, 2.31716919, 72.6229935, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.Color = Color3.new(0.431373, 0.6, 0.792157)
Part79.Position = Vector3.new(84.7160492, 2.31716919, 72.6229935)
Part79.Orientation = Vector3.new(0, 90, 0)
Part79.Color = Color3.new(0.431373, 0.6, 0.792157)
BlockMesh80.Parent = Part79
Part81.Name = "Brick"
Part81.Parent = Model57
Part81.Material = Enum.Material.SmoothPlastic
Part81.BrickColor = BrickColor.new("Really black")
Part81.Rotation = Vector3.new(0, 90, 0)
Part81.Anchored = true
Part81.CanCollide = false
Part81.FormFactor = Enum.FormFactor.Symmetric
Part81.Size = Vector3.new(1.09828091, 1.83832359, 1.0971725)
Part81.CFrame = CFrame.new(84.7160492, 3.1047945, 72.6229782, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part81.Position = Vector3.new(84.7160492, 3.1047945, 72.6229782)
Part81.Orientation = Vector3.new(0, 90, 0)
Part81.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh82.Parent = Part81
Part83.Name = "Brick"
Part83.Parent = Model57
Part83.Material = Enum.Material.SmoothPlastic
Part83.BrickColor = BrickColor.new("Navy blue")
Part83.Reflectance = 0.0049999998882413
Part83.Rotation = Vector3.new(91.5699997, 0, 180)
Part83.Anchored = true
Part83.CanCollide = false
Part83.FormFactor = Enum.FormFactor.Symmetric
Part83.Size = Vector3.new(1.0134685, 0.220499977, 1.16327846)
Part83.CFrame = CFrame.new(84.6141891, 4.37454891, 73.3001938, -1, -2.60803667e-13, 2.9527652e-12, 2.84009643e-12, 0.0274504386, -0.99962306, -1.86642856e-13, -0.99962306, -0.0274504386)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.Color = Color3.new(0, 0.12549, 0.376471)
Part83.Position = Vector3.new(84.6141891, 4.37454891, 73.3001938)
Part83.Orientation = Vector3.new(88.4300003, 180, 0)
Part83.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh84.Parent = Part83
Part85.Name = "Brick"
Part85.Parent = Model57
Part85.Material = Enum.Material.SmoothPlastic
Part85.BrickColor = BrickColor.new("Black")
Part85.Reflectance = 0.0049999998882413
Part85.Rotation = Vector3.new(76.5699997, 0, -180)
Part85.Anchored = true
Part85.CanCollide = false
Part85.FormFactor = Enum.FormFactor.Symmetric
Part85.Size = Vector3.new(1.10684443, 1.46009409, 0.201244384)
Part85.CFrame = CFrame.new(84.713829, 4.75552559, 73.0631714, -1, 5.37522772e-13, 2.93691568e-12, 2.84009643e-12, -0.232184634, -0.972671747, -1.86642856e-13, -0.972671747, 0.232184634)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part85.Position = Vector3.new(84.713829, 4.75552559, 73.0631714)
Part85.Orientation = Vector3.new(76.5699997, 0, 180)
Part85.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh86.Parent = Part85
Part87.Name = "Brick"
Part87.Parent = Model57
Part87.Material = Enum.Material.SmoothPlastic
Part87.BrickColor = BrickColor.new("Black")
Part87.Reflectance = 0.0049999998882413
Part87.Rotation = Vector3.new(91.5699997, 0, 180)
Part87.Anchored = true
Part87.CanCollide = false
Part87.FormFactor = Enum.FormFactor.Symmetric
Part87.Size = Vector3.new(0.924965441, 0.201244384, 1.06169295)
Part87.CFrame = CFrame.new(84.6228943, 4.22646284, 73.3096848, -1, -2.60803667e-13, 2.9527652e-12, 2.84009643e-12, 0.0274504386, -0.99962306, -1.86642856e-13, -0.99962306, -0.0274504386)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part87.Position = Vector3.new(84.6228943, 4.22646284, 73.3096848)
Part87.Orientation = Vector3.new(88.4300003, 180, 0)
Part87.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh88.Parent = Part87
Part89.Name = "Brick"
Part89.Parent = Model57
Part89.Material = Enum.Material.SmoothPlastic
Part89.BrickColor = BrickColor.new("Black")
Part89.Reflectance = 0.0049999998882413
Part89.Rotation = Vector3.new(91.5699997, 0, 180)
Part89.Anchored = true
Part89.CanCollide = false
Part89.FormFactor = Enum.FormFactor.Symmetric
Part89.Size = Vector3.new(0.201244384, 0.212827399, 1.0574975)
Part89.CFrame = CFrame.new(85.166626, 4.22347784, 73.3029556, -1, -2.60803667e-13, 2.9527652e-12, 2.84009643e-12, 0.0274504386, -0.99962306, -1.86642856e-13, -0.99962306, -0.0274504386)
Part89.BottomSurface = Enum.SurfaceType.Smooth
Part89.TopSurface = Enum.SurfaceType.Smooth
Part89.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part89.Position = Vector3.new(85.166626, 4.22347784, 73.3029556)
Part89.Orientation = Vector3.new(88.4300003, 180, 0)
Part89.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh90.Parent = Part89
Part91.Name = "Brick"
Part91.Parent = Model57
Part91.Material = Enum.Material.SmoothPlastic
Part91.BrickColor = BrickColor.new("Black")
Part91.Reflectance = 0.0049999998882413
Part91.Rotation = Vector3.new(100.769997, 0, 180)
Part91.Anchored = true
Part91.CanCollide = false
Part91.FormFactor = Enum.FormFactor.Symmetric
Part91.Size = Vector3.new(0.201244384, 1.03670979, 0.806359112)
Part91.CFrame = CFrame.new(84.2610321, 4.18972492, 72.7606277, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.TopSurface = Enum.SurfaceType.Smooth
Part91.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part91.Position = Vector3.new(84.2610321, 4.18972492, 72.7606277)
Part91.Orientation = Vector3.new(79.2300034, 180, 0)
Part91.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh92.Parent = Part91
Part93.Name = "Brick"
Part93.Parent = Model57
Part93.Material = Enum.Material.SmoothPlastic
Part93.BrickColor = BrickColor.new("Navy blue")
Part93.Reflectance = 0.0049999998882413
Part93.Rotation = Vector3.new(100.769997, 0, 180)
Part93.Anchored = true
Part93.CanCollide = false
Part93.FormFactor = Enum.FormFactor.Symmetric
Part93.Size = Vector3.new(1.21275008, 0.220499977, 0.883513689)
Part93.CFrame = CFrame.new(84.713829, 4.4197588, 72.2485504, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part93.BottomSurface = Enum.SurfaceType.Smooth
Part93.TopSurface = Enum.SurfaceType.Smooth
Part93.Color = Color3.new(0, 0.12549, 0.376471)
Part93.Position = Vector3.new(84.713829, 4.4197588, 72.2485504)
Part93.Orientation = Vector3.new(79.2300034, 180, 0)
Part93.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh94.Parent = Part93
Part95.Name = "Brick"
Part95.Parent = Model57
Part95.Material = Enum.Material.SmoothPlastic
Part95.BrickColor = BrickColor.new("Navy blue")
Part95.Reflectance = 0.0049999998882413
Part95.Rotation = Vector3.new(76.5699997, 0, -180)
Part95.Anchored = true
Part95.CanCollide = false
Part95.FormFactor = Enum.FormFactor.Symmetric
Part95.Size = Vector3.new(1.21275008, 1.59979963, 0.220499977)
Part95.CFrame = CFrame.new(84.713829, 4.95423937, 73.0300903, -1, 5.37522772e-13, 2.93691568e-12, 2.84009643e-12, -0.232184634, -0.972671747, -1.86642856e-13, -0.972671747, 0.232184634)
Part95.BottomSurface = Enum.SurfaceType.Smooth
Part95.TopSurface = Enum.SurfaceType.Smooth
Part95.Color = Color3.new(0, 0.12549, 0.376471)
Part95.Position = Vector3.new(84.713829, 4.95423937, 73.0300903)
Part95.Orientation = Vector3.new(76.5699997, 0, 180)
Part95.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh96.Parent = Part95
Part97.Name = "Brick"
Part97.Parent = Model57
Part97.Material = Enum.Material.SmoothPlastic
Part97.BrickColor = BrickColor.new("Navy blue")
Part97.Reflectance = 0.0049999998882413
Part97.Rotation = Vector3.new(100.769997, 0, 180)
Part97.Anchored = true
Part97.CanCollide = false
Part97.FormFactor = Enum.FormFactor.Symmetric
Part97.Size = Vector3.new(0.220499977, 1.13590491, 0.883513689)
Part97.CFrame = CFrame.new(85.2099533, 4.3318367, 72.6986923, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.Color = Color3.new(0, 0.12549, 0.376471)
Part97.Position = Vector3.new(85.2099533, 4.3318367, 72.6986923)
Part97.Orientation = Vector3.new(79.2300034, 180, 0)
Part97.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh98.Parent = Part97
Part99.Name = "Brick"
Part99.Parent = Model57
Part99.Material = Enum.Material.SmoothPlastic
Part99.BrickColor = BrickColor.new("Navy blue")
Part99.Reflectance = 0.0049999998882413
Part99.Rotation = Vector3.new(100.769997, 0, 180)
Part99.Anchored = true
Part99.CanCollide = false
Part99.FormFactor = Enum.FormFactor.Symmetric
Part99.Size = Vector3.new(0.220499977, 1.13590491, 0.883513689)
Part99.CFrame = CFrame.new(84.2177048, 4.33429432, 72.6985855, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.Color = Color3.new(0, 0.12549, 0.376471)
Part99.Position = Vector3.new(84.2177048, 4.33429432, 72.6985855)
Part99.Orientation = Vector3.new(79.2300034, 180, 0)
Part99.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh100.Parent = Part99
Part101.Name = "Brick"
Part101.Parent = Model57
Part101.Material = Enum.Material.SmoothPlastic
Part101.BrickColor = BrickColor.new("Black")
Part101.Reflectance = 0.0049999998882413
Part101.Rotation = Vector3.new(100.769997, 0, 180)
Part101.Anchored = true
Part101.CanCollide = false
Part101.FormFactor = Enum.FormFactor.Symmetric
Part101.Size = Vector3.new(0.201244384, 1.03670979, 0.806359112)
Part101.CFrame = CFrame.new(85.166626, 4.18747377, 72.7607269, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part101.Position = Vector3.new(85.166626, 4.18747377, 72.7607269)
Part101.Orientation = Vector3.new(79.2300034, 180, 0)
Part101.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh102.Parent = Part101
Part103.Name = "Brick"
Part103.Parent = Model57
Part103.Material = Enum.Material.SmoothPlastic
Part103.BrickColor = BrickColor.new("Black")
Part103.Reflectance = 0.0049999998882413
Part103.Rotation = Vector3.new(100.769997, 0, 180)
Part103.Anchored = true
Part103.CanCollide = false
Part103.FormFactor = Enum.FormFactor.Symmetric
Part103.Size = Vector3.new(1.10684443, 0.201244384, 0.806359112)
Part103.CFrame = CFrame.new(84.713829, 4.2677207, 72.3498917, -1, -7.07928887e-13, 2.79888959e-12, 2.84009643e-12, 0.186831623, -0.982391953, -1.86642856e-13, -0.982391953, -0.186831623)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part103.Position = Vector3.new(84.713829, 4.2677207, 72.3498917)
Part103.Orientation = Vector3.new(79.2300034, 180, 0)
Part103.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh104.Parent = Part103
Part105.Parent = Model57
Part105.Material = Enum.Material.SmoothPlastic
Part105.BrickColor = BrickColor.new("Black")
Part105.Reflectance = 0.0049999998882413
Part105.Rotation = Vector3.new(166.570007, 0, 0)
Part105.Anchored = true
Part105.CanCollide = false
Part105.Size = Vector3.new(0.703561604, 0.201244384, 0.628684759)
Part105.CFrame = CFrame.new(84.7140961, 4.99801111, 74.0790176, 0.99999994, 2.8232295e-12, 4.80674799e-13, -2.84009621e-12, -0.972672462, -0.232181579, 1.86642843e-13, 0.232181609, -0.972672462)
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part105.Position = Vector3.new(84.7140961, 4.99801111, 74.0790176)
Part105.Orientation = Vector3.new(13.4300003, 180, -180)
Part105.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part106.Parent = Model57
Part106.Material = Enum.Material.SmoothPlastic
Part106.BrickColor = BrickColor.new("Navy blue")
Part106.Reflectance = 0.0049999998882413
Part106.Rotation = Vector3.new(166.570007, 0, 0)
Part106.Anchored = true
Part106.CanCollide = false
Part106.Size = Vector3.new(0.770880163, 0.220499977, 0.688839018)
Part106.CFrame = CFrame.new(84.7141266, 5.21992493, 74.1431198, 0.99999994, 2.8232295e-12, 4.80674799e-13, -2.84009621e-12, -0.972672462, -0.232181579, 1.86642843e-13, 0.232181609, -0.972672462)
Part106.BottomSurface = Enum.SurfaceType.Smooth
Part106.TopSurface = Enum.SurfaceType.Smooth
Part106.Color = Color3.new(0, 0.12549, 0.376471)
Part106.Position = Vector3.new(84.7141266, 5.21992493, 74.1431198)
Part106.Orientation = Vector3.new(13.4300003, 180, -180)
Part106.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart107.Parent = Model57
WedgePart107.Material = Enum.Material.SmoothPlastic
WedgePart107.BrickColor = BrickColor.new("Black")
WedgePart107.Reflectance = 0.0049999998882413
WedgePart107.Rotation = Vector3.new(166.570007, 0, 0)
WedgePart107.Anchored = true
WedgePart107.CanCollide = false
WedgePart107.Size = Vector3.new(0.201244384, 0.224141195, 0.517623842)
WedgePart107.CFrame = CFrame.new(84.2610245, 4.65805626, 73.5709, 0.99999994, 1.67656744e-05, 7.46475916e-06, 1.80406932e-05, -0.972671747, -0.232184559, 3.36802987e-06, 0.232184559, -0.972671807)
WedgePart107.BottomSurface = Enum.SurfaceType.Smooth
WedgePart107.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart107.Position = Vector3.new(84.2610245, 4.65805626, 73.5709)
WedgePart107.Orientation = Vector3.new(13.4300003, 180, 180)
WedgePart107.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart108.Parent = Model57
WedgePart108.Material = Enum.Material.SmoothPlastic
WedgePart108.BrickColor = BrickColor.new("Black")
WedgePart108.Reflectance = 0.0049999998882413
WedgePart108.Rotation = Vector3.new(166.570007, 0, -90)
WedgePart108.Anchored = true
WedgePart108.CanCollide = false
WedgePart108.FormFactor = Enum.FormFactor.Symmetric
WedgePart108.Size = Vector3.new(0.201244384, 0.352177709, 0.729308963)
WedgePart108.CFrame = CFrame.new(84.8906479, 5.15557623, 74.7378082, -1.11450369e-07, 0.999996722, -9.83476184e-07, 0.972667456, -1.1921243e-07, -0.232180417, -0.232180595, -9.53674203e-07, -0.972667515)
WedgePart108.BottomSurface = Enum.SurfaceType.Smooth
WedgePart108.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart108.Position = Vector3.new(84.8906479, 5.15557623, 74.7378082)
WedgePart108.Orientation = Vector3.new(13.4300003, -180, 90)
WedgePart108.Color = Color3.new(0.105882, 0.164706, 0.207843)
Model109.Name = "RightLeg"
Model109.Parent = Model0
Part110.Name = "Right Leg1"
Part110.Parent = Model109
Part110.BrickColor = BrickColor.new("Pastel yellow")
Part110.Transparency = 1
Part110.Rotation = Vector3.new(-0.980000019, -90, 0)
Part110.Anchored = true
Part110.CanCollide = false
Part110.FormFactor = Enum.FormFactor.Symmetric
Part110.Size = Vector3.new(1, 2, 1)
Part110.CFrame = CFrame.new(84.6179352, 1.43810642, 71.6209641, -6.09021917e-17, -7.13092728e-15, -1, 0.0170776155, 0.999854267, -7.13092644e-15, 0.999854267, -0.0170776155, 6.08859128e-17)
Part110.BottomSurface = Enum.SurfaceType.Smooth
Part110.Color = Color3.new(1, 1, 0.8)
Part110.Position = Vector3.new(84.6179352, 1.43810642, 71.6209641)
Part110.Orientation = Vector3.new(0, -90, 0.980000019)
Part110.Color = Color3.new(1, 1, 0.8)
Model111.Name = "Torso"
Model111.Parent = Model0
Part112.Name = "Torso1"
Part112.Parent = Model111
Part112.BrickColor = BrickColor.new("Pastel yellow")
Part112.Transparency = 1
Part112.Rotation = Vector3.new(90.0100021, -89.0199966, -89.9899979)
Part112.Anchored = true
Part112.CanCollide = false
Part112.FormFactor = Enum.FormFactor.Symmetric
Part112.Size = Vector3.new(2, 2, 1)
Part112.CFrame = CFrame.new(84.7530441, 2.97952414, 71.1198654, 1.62258732e-06, 0.0170781817, -0.999854147, 3.48963596e-08, -0.999854207, -0.0170781817, -1, -7.1804287e-09, -1.62294657e-06)
Part112.LeftSurface = Enum.SurfaceType.Weld
Part112.RightSurface = Enum.SurfaceType.Weld
Part112.Color = Color3.new(1, 1, 0.8)
Part112.Position = Vector3.new(84.7530441, 2.97952414, 71.1198654)
Part112.Orientation = Vector3.new(0.980000019, -90, 180)
Part112.Color = Color3.new(1, 1, 0.8)
Part113.Name = "Brick"
Part113.Parent = Model111
Part113.Material = Enum.Material.SmoothPlastic
Part113.BrickColor = BrickColor.new("Navy blue")
Part113.Rotation = Vector3.new(153.779999, 55.4099998, -160.850006)
Part113.Anchored = true
Part113.CanCollide = false
Part113.FormFactor = Enum.FormFactor.Symmetric
Part113.Size = Vector3.new(0.621950567, 0.569770336, 0.200000003)
Part113.CFrame = CFrame.new(84.077301, 4.22622871, 71.6350861, -0.53629142, 0.186246887, 0.823227525, -0.0492874496, 0.966775298, -0.250831395, -0.842592597, -0.175093502, -0.509293735)
Part113.BottomSurface = Enum.SurfaceType.Smooth
Part113.TopSurface = Enum.SurfaceType.Smooth
Part113.Color = Color3.new(0, 0.12549, 0.376471)
Part113.Position = Vector3.new(84.077301, 4.22622871, 71.6350861)
Part113.Orientation = Vector3.new(14.5299997, 121.739998, -2.92000008)
Part113.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh114.Parent = Part113
Part115.Name = "Brick"
Part115.Parent = Model111
Part115.Material = Enum.Material.SmoothPlastic
Part115.BrickColor = BrickColor.new("Lapis")
Part115.Rotation = Vector3.new(98.8700027, 0, -90)
Part115.Anchored = true
Part115.CanCollide = false
Part115.FormFactor = Enum.FormFactor.Symmetric
Part115.Size = Vector3.new(0.200000003, 0.200000048, 0.400000036)
Part115.CFrame = CFrame.new(85.0661545, 0.575267553, 69.5961533, -4.57742686e-07, 1, 1.60785328e-06, 0.154153615, 1.65919141e-06, -0.988046944, -0.988047063, -2.04414434e-07, -0.154153585)
Part115.BottomSurface = Enum.SurfaceType.Smooth
Part115.TopSurface = Enum.SurfaceType.Smooth
Part115.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part115.Position = Vector3.new(85.0661545, 0.575267553, 69.5961533)
Part115.Orientation = Vector3.new(81.1299973, 180, 90)
Part115.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh116.Parent = Part115
BlockMesh116.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh116.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part117.Name = "1"
Part117.Parent = Model111
Part117.Material = Enum.Material.SmoothPlastic
Part117.BrickColor = BrickColor.new("Pastel Blue")
Part117.Reflectance = 0.20000000298023
Part117.Rotation = Vector3.new(90, 90, 0)
Part117.Anchored = true
Part117.CanCollide = false
Part117.FormFactor = Enum.FormFactor.Symmetric
Part117.Size = Vector3.new(0.200000003, 1.48148215, 0.200000003)
Part117.CFrame = CFrame.new(85.1873627, 3.88405132, 71.120018, -1.85120132e-06, -5.99948677e-08, 1, 0.99999994, 2.66171992e-06, 1.85119575e-06, -2.66171992e-06, 0.99999994, 5.99902847e-08)
Part117.BottomSurface = Enum.SurfaceType.Smooth
Part117.TopSurface = Enum.SurfaceType.Smooth
Part117.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part117.Position = Vector3.new(85.1873627, 3.88405132, 71.120018)
Part117.Orientation = Vector3.new(0, 90, 90)
Part117.Color = Color3.new(0.501961, 0.733333, 0.858824)
BlockMesh118.Parent = Part117
BlockMesh118.Scale = Vector3.new(0.300000012, 1, 1)
BlockMesh118.Scale = Vector3.new(0.300000012, 1, 1)
Part119.Name = "1"
Part119.Parent = Model111
Part119.Material = Enum.Material.SmoothPlastic
Part119.BrickColor = BrickColor.new("Pastel Blue")
Part119.Reflectance = 0.20000000298023
Part119.Rotation = Vector3.new(-90, 0, 90)
Part119.Anchored = true
Part119.CanCollide = false
Part119.FormFactor = Enum.FormFactor.Symmetric
Part119.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part119.CFrame = CFrame.new(85.1887817, 3.88477206, 70.3631363, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part119.BottomSurface = Enum.SurfaceType.Smooth
Part119.TopSurface = Enum.SurfaceType.Smooth
Part119.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part119.Position = Vector3.new(85.1887817, 3.88477206, 70.3631363)
Part119.Orientation = Vector3.new(-90, 90, 0)
Part119.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh120.Parent = Part119
CylinderMesh120.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh120.Scale = Vector3.new(1, 1, 0.5)
Part121.Name = "1"
Part121.Parent = Model111
Part121.Material = Enum.Material.SmoothPlastic
Part121.BrickColor = BrickColor.new("Pastel Blue")
Part121.Reflectance = 0.20000000298023
Part121.Rotation = Vector3.new(-90, 0, 90)
Part121.Anchored = true
Part121.CanCollide = false
Part121.FormFactor = Enum.FormFactor.Symmetric
Part121.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part121.CFrame = CFrame.new(85.1887817, 3.88585806, 71.872261, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part121.BottomSurface = Enum.SurfaceType.Smooth
Part121.TopSurface = Enum.SurfaceType.Smooth
Part121.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part121.Position = Vector3.new(85.1887817, 3.88585806, 71.872261)
Part121.Orientation = Vector3.new(-90, 90, 0)
Part121.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh122.Parent = Part121
CylinderMesh122.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh122.Scale = Vector3.new(1, 1, 0.5)
Part123.Name = "1"
Part123.Parent = Model111
Part123.Material = Enum.Material.SmoothPlastic
Part123.BrickColor = BrickColor.new("Pastel Blue")
Part123.Reflectance = 0.20000000298023
Part123.Rotation = Vector3.new(90, 90, 0)
Part123.Anchored = true
Part123.CanCollide = false
Part123.FormFactor = Enum.FormFactor.Symmetric
Part123.Size = Vector3.new(0.200000003, 1.2814821, 0.200000003)
Part123.CFrame = CFrame.new(85.1873627, 3.37702417, 71.1200256, -1.85120132e-06, -5.99948677e-08, 1, 0.99999994, 2.66171992e-06, 1.85119575e-06, -2.66171992e-06, 0.99999994, 5.99902847e-08)
Part123.BottomSurface = Enum.SurfaceType.Smooth
Part123.TopSurface = Enum.SurfaceType.Smooth
Part123.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part123.Position = Vector3.new(85.1873627, 3.37702417, 71.1200256)
Part123.Orientation = Vector3.new(0, 90, 90)
Part123.Color = Color3.new(0.501961, 0.733333, 0.858824)
BlockMesh124.Parent = Part123
BlockMesh124.Scale = Vector3.new(0.300000012, 1, 1)
BlockMesh124.Scale = Vector3.new(0.300000012, 1, 1)
Part125.Name = "1"
Part125.Parent = Model111
Part125.Material = Enum.Material.SmoothPlastic
Part125.BrickColor = BrickColor.new("Pastel Blue")
Part125.Reflectance = 0.20000000298023
Part125.Rotation = Vector3.new(-90, 0, 90)
Part125.Anchored = true
Part125.CanCollide = false
Part125.FormFactor = Enum.FormFactor.Symmetric
Part125.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part125.CFrame = CFrame.new(85.1887817, 3.3777411, 70.4631577, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part125.BottomSurface = Enum.SurfaceType.Smooth
Part125.TopSurface = Enum.SurfaceType.Smooth
Part125.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part125.Position = Vector3.new(85.1887817, 3.3777411, 70.4631577)
Part125.Orientation = Vector3.new(-90, 90, 0)
Part125.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh126.Parent = Part125
CylinderMesh126.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh126.Scale = Vector3.new(1, 1, 0.5)
Part127.Name = "1"
Part127.Parent = Model111
Part127.Material = Enum.Material.SmoothPlastic
Part127.BrickColor = BrickColor.new("Pastel Blue")
Part127.Reflectance = 0.20000000298023
Part127.Rotation = Vector3.new(-90, 0, 90)
Part127.Anchored = true
Part127.CanCollide = false
Part127.FormFactor = Enum.FormFactor.Symmetric
Part127.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part127.CFrame = CFrame.new(85.1887817, 3.37882566, 71.7722549, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part127.BottomSurface = Enum.SurfaceType.Smooth
Part127.TopSurface = Enum.SurfaceType.Smooth
Part127.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part127.Position = Vector3.new(85.1887817, 3.37882566, 71.7722549)
Part127.Orientation = Vector3.new(-90, 90, 0)
Part127.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh128.Parent = Part127
CylinderMesh128.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh128.Scale = Vector3.new(1, 1, 0.5)
Part129.Name = "Brick"
Part129.Parent = Model111
Part129.Material = Enum.Material.SmoothPlastic
Part129.BrickColor = BrickColor.new("Pastel Blue")
Part129.Reflectance = 0.20000000298023
Part129.Rotation = Vector3.new(0, 90, 0)
Part129.Anchored = true
Part129.CanCollide = false
Part129.FormFactor = Enum.FormFactor.Symmetric
Part129.Size = Vector3.new(0.200000003, 1.90897512, 0.200000003)
Part129.CFrame = CFrame.new(85.1915894, 2.922647, 71.1200027, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part129.BottomSurface = Enum.SurfaceType.Smooth
Part129.TopSurface = Enum.SurfaceType.Smooth
Part129.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part129.Position = Vector3.new(85.1915894, 2.922647, 71.1200027)
Part129.Orientation = Vector3.new(0, 90, 0)
Part129.Color = Color3.new(0.501961, 0.733333, 0.858824)
BlockMesh130.Parent = Part129
BlockMesh130.Scale = Vector3.new(0.300000012, 1, 1)
BlockMesh130.Scale = Vector3.new(0.300000012, 1, 1)
Part131.Name = "Brick"
Part131.Parent = Model111
Part131.Material = Enum.Material.SmoothPlastic
Part131.BrickColor = BrickColor.new("Really black")
Part131.Rotation = Vector3.new(0, 90, 0)
Part131.Anchored = true
Part131.CanCollide = false
Part131.FormFactor = Enum.FormFactor.Symmetric
Part131.Size = Vector3.new(0.275762081, 2.04569292, 0.200000003)
Part131.CFrame = CFrame.new(85.182869, 2.9881115, 70.2552872, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part131.BottomSurface = Enum.SurfaceType.Smooth
Part131.TopSurface = Enum.SurfaceType.Smooth
Part131.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part131.Position = Vector3.new(85.182869, 2.9881115, 70.2552872)
Part131.Orientation = Vector3.new(0, 90, 0)
Part131.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh132.Parent = Part131
WedgePart133.Parent = Model111
WedgePart133.Material = Enum.Material.SmoothPlastic
WedgePart133.BrickColor = BrickColor.new("Really black")
WedgePart133.Rotation = Vector3.new(0, -0.0500000007, 0.129999995)
WedgePart133.Anchored = true
WedgePart133.CanCollide = false
WedgePart133.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart133.CFrame = CFrame.new(85.181488, 3.09613848, 70.5079117, 0.999997199, -0.00223094225, -0.000802747905, 0.00223094458, 0.999997556, 2.0340085e-06, 0.000802741386, -3.83704901e-06, 0.999999702)
WedgePart133.BottomSurface = Enum.SurfaceType.Smooth
WedgePart133.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart133.Position = Vector3.new(85.181488, 3.09613848, 70.5079117)
WedgePart133.Orientation = Vector3.new(0, -0.0500000007, 0.129999995)
WedgePart133.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh134.Parent = WedgePart133
SpecialMesh134.Scale = Vector3.new(1.01084137, 0.337857842, 2.72094846)
SpecialMesh134.MeshType = Enum.MeshType.Wedge
SpecialMesh134.Scale = Vector3.new(1.01084137, 0.337857842, 2.72094846)
WedgePart135.Parent = Model111
WedgePart135.Material = Enum.Material.SmoothPlastic
WedgePart135.BrickColor = BrickColor.new("Really black")
WedgePart135.Rotation = Vector3.new(180, 0.0500000007, 179.869995)
WedgePart135.Anchored = true
WedgePart135.CanCollide = false
WedgePart135.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart135.CFrame = CFrame.new(85.1811981, 3.09613752, 70.8738403, -0.999997199, -0.00223094225, 0.000802747731, -0.00223094458, 0.999997556, -1.94460154e-06, -0.000802741386, -3.74764204e-06, -0.999999702)
WedgePart135.BottomSurface = Enum.SurfaceType.Smooth
WedgePart135.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart135.Position = Vector3.new(85.1811981, 3.09613752, 70.8738403)
WedgePart135.Orientation = Vector3.new(0, 179.949997, -0.129999995)
WedgePart135.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh136.Parent = WedgePart135
SpecialMesh136.Scale = Vector3.new(1.01084137, 0.337857842, 0.938339233)
SpecialMesh136.MeshType = Enum.MeshType.Wedge
SpecialMesh136.Scale = Vector3.new(1.01084137, 0.337857842, 0.938339233)
WedgePart137.Parent = Model111
WedgePart137.Material = Enum.Material.SmoothPlastic
WedgePart137.BrickColor = BrickColor.new("Really black")
WedgePart137.Rotation = Vector3.new(-90, 0, 179.910004)
WedgePart137.Anchored = true
WedgePart137.CanCollide = false
WedgePart137.Size = Vector3.new(0.200412184, 0.389923543, 1.16091728)
WedgePart137.CFrame = CFrame.new(85.1823654, 2.54573298, 70.5879745, -0.999998868, -0.00150661916, -1.4348019e-06, -1.44066507e-06, 3.88361514e-06, 1, -0.00150661927, 0.999998868, -3.89665365e-06)
WedgePart137.BottomSurface = Enum.SurfaceType.Smooth
WedgePart137.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart137.Position = Vector3.new(85.1823654, 2.54573298, 70.5879745)
WedgePart137.Orientation = Vector3.new(-90, 179.910004, 0)
WedgePart137.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart138.Parent = Model111
WedgePart138.Material = Enum.Material.SmoothPlastic
WedgePart138.BrickColor = BrickColor.new("Really black")
WedgePart138.Rotation = Vector3.new(90, 0, 0.0900000036)
WedgePart138.Anchored = true
WedgePart138.CanCollide = false
WedgePart138.Size = Vector3.new(0.200412184, 0.389923543, 0.347238541)
WedgePart138.CFrame = CFrame.new(85.1823654, 3.29980421, 70.587944, 0.999998868, -0.00150661916, 1.43467025e-06, 1.44066507e-06, 3.98792326e-06, -1, 0.00150661927, 0.999998868, 4.00096178e-06)
WedgePart138.BottomSurface = Enum.SurfaceType.Smooth
WedgePart138.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart138.Position = Vector3.new(85.1823654, 3.29980421, 70.587944)
WedgePart138.Orientation = Vector3.new(90, -0.0900000036, 0)
WedgePart138.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart139.Parent = Model111
WedgePart139.Material = Enum.Material.SmoothPlastic
WedgePart139.BrickColor = BrickColor.new("Really black")
WedgePart139.Rotation = Vector3.new(-55.7200012, 0, -180)
WedgePart139.Anchored = true
WedgePart139.CanCollide = false
WedgePart139.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart139.CFrame = CFrame.new(85.1822815, 3.04279566, 71.1207199, -1, 9.39884956e-07, -1.14377758e-06, -1.47446929e-06, -0.563230097, 0.826300144, 1.32416773e-07, 0.826300204, 0.563229978)
WedgePart139.BottomSurface = Enum.SurfaceType.Smooth
WedgePart139.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart139.Position = Vector3.new(85.1822815, 3.04279566, 71.1207199)
WedgePart139.Orientation = Vector3.new(-55.7200012, 0, -180)
WedgePart139.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh140.Parent = WedgePart139
SpecialMesh140.Scale = Vector3.new(0.999984741, 0.80983156, 0.552008986)
SpecialMesh140.MeshType = Enum.MeshType.Wedge
SpecialMesh140.Scale = Vector3.new(0.999984741, 0.80983156, 0.552008986)
WedgePart141.Parent = Model111
WedgePart141.Material = Enum.Material.SmoothPlastic
WedgePart141.BrickColor = BrickColor.new("Really black")
WedgePart141.Rotation = Vector3.new(90, 0.0199999996, 0.0299999993)
WedgePart141.Anchored = true
WedgePart141.CanCollide = false
WedgePart141.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart141.CFrame = CFrame.new(85.1822052, 3.45734429, 70.4930878, 0.999999762, -0.000579246494, 0.000356322125, 0.000356324395, 3.86871397e-06, -1, 0.000579245039, 0.999999881, 4.07546759e-06)
WedgePart141.BottomSurface = Enum.SurfaceType.Smooth
WedgePart141.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart141.Position = Vector3.new(85.1822052, 3.45734429, 70.4930878)
WedgePart141.Orientation = Vector3.new(90, -0.0299999993, 0)
WedgePart141.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh142.Parent = WedgePart141
SpecialMesh142.Scale = Vector3.new(1.00078332, 0.99998498, 1.63242829)
SpecialMesh142.MeshType = Enum.MeshType.Wedge
SpecialMesh142.Scale = Vector3.new(1.00078332, 0.99998498, 1.63242829)
WedgePart143.Parent = Model111
WedgePart143.Material = Enum.Material.SmoothPlastic
WedgePart143.BrickColor = BrickColor.new("Really black")
WedgePart143.Rotation = Vector3.new(-90, -0.0199999996, 179.970001)
WedgePart143.Anchored = true
WedgePart143.CanCollide = false
WedgePart143.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart143.CFrame = CFrame.new(85.1824951, 2.62967396, 70.4931183, -0.999999762, -0.000579246436, -0.000356322184, -0.000356324395, 3.79420817e-06, 1, -0.000579245039, 0.999999881, -4.00096178e-06)
WedgePart143.BottomSurface = Enum.SurfaceType.Smooth
WedgePart143.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart143.Position = Vector3.new(85.1824951, 2.62967396, 70.4931183)
WedgePart143.Orientation = Vector3.new(-90, 179.970001, 0)
WedgePart143.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh144.Parent = WedgePart143
SpecialMesh144.Scale = Vector3.new(1.00078332, 0.99998498, 6.64438772)
SpecialMesh144.MeshType = Enum.MeshType.Wedge
SpecialMesh144.Scale = Vector3.new(1.00078332, 0.99998498, 6.64438772)
WedgePart145.Parent = Model111
WedgePart145.Material = Enum.Material.SmoothPlastic
WedgePart145.BrickColor = BrickColor.new("Really black")
WedgePart145.Rotation = Vector3.new(90, 0, 179.919998)
WedgePart145.Anchored = true
WedgePart145.CanCollide = false
WedgePart145.Size = Vector3.new(0.200395763, 0.405991018, 0.36154747)
WedgePart145.CFrame = CFrame.new(85.182373, 3.30695724, 71.6614609, -0.999999046, -0.00144700008, 1.60951686e-06, -1.6037302e-06, -3.98606062e-06, -1, 0.00144700019, -0.999999046, 4.00096178e-06)
WedgePart145.BottomSurface = Enum.SurfaceType.Smooth
WedgePart145.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart145.Position = Vector3.new(85.182373, 3.30695724, 71.6614609)
WedgePart145.Orientation = Vector3.new(90, -179.919998, 0)
WedgePart145.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart146.Parent = Model111
WedgePart146.Material = Enum.Material.SmoothPlastic
WedgePart146.BrickColor = BrickColor.new("Really black")
WedgePart146.Rotation = Vector3.new(-90, 0, 0.0799999982)
WedgePart146.Anchored = true
WedgePart146.CanCollide = false
WedgePart146.Size = Vector3.new(0.200395763, 0.405991018, 1.16122246)
WedgePart146.CFrame = CFrame.new(85.182373, 2.54558897, 71.6615067, 0.999999046, -0.00144700008, -1.60964339e-06, 1.6037302e-06, -4.07546759e-06, 1, -0.00144700019, -0.999999046, -4.07546759e-06)
WedgePart146.BottomSurface = Enum.SurfaceType.Smooth
WedgePart146.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart146.Position = Vector3.new(85.182373, 2.54558897, 71.6615067)
WedgePart146.Orientation = Vector3.new(-90, 0.0799999982, 0)
WedgePart146.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart147.Parent = Model111
WedgePart147.Material = Enum.Material.SmoothPlastic
WedgePart147.BrickColor = BrickColor.new("Really black")
WedgePart147.Rotation = Vector3.new(90, 0.0199999996, 179.970001)
WedgePart147.Anchored = true
WedgePart147.CanCollide = false
WedgePart147.Size = Vector3.new(0.200154141, 0.216064483, 0.35271439)
WedgePart147.CFrame = CFrame.new(85.1822052, 3.47046447, 71.7563477, -0.999999762, -0.000570286938, 0.000350898132, -0.000350895803, -4.10526991e-06, -0.99999994, 0.000570288335, -1, 3.91341746e-06)
WedgePart147.BottomSurface = Enum.SurfaceType.Smooth
WedgePart147.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart147.Position = Vector3.new(85.1822052, 3.47046447, 71.7563477)
WedgePart147.Orientation = Vector3.new(89.9800034, 89.3600006, -90.6699982)
WedgePart147.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart148.Parent = Model111
WedgePart148.Material = Enum.Material.SmoothPlastic
WedgePart148.BrickColor = BrickColor.new("Really black")
WedgePart148.Rotation = Vector3.new(-90, -0.0199999996, 0.0299999993)
WedgePart148.Anchored = true
WedgePart148.CanCollide = false
WedgePart148.Size = Vector3.new(0.200154141, 0.216064483, 1.32918274)
WedgePart148.CFrame = CFrame.new(85.1824951, 2.62952924, 71.7563782, 0.999999762, -0.000570286938, -0.000350898161, 0.000350895803, -4.18163836e-06, 1, -0.000570288335, -0.99999994, -4.00096178e-06)
WedgePart148.BottomSurface = Enum.SurfaceType.Smooth
WedgePart148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart148.Position = Vector3.new(85.1824951, 2.62952924, 71.7563782)
WedgePart148.Orientation = Vector3.new(-90, 0.0299999993, 0)
WedgePart148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart149.Parent = Model111
WedgePart149.Material = Enum.Material.SmoothPlastic
WedgePart149.BrickColor = BrickColor.new("Really black")
WedgePart149.Rotation = Vector3.new(180, -0.0500000007, 179.869995)
WedgePart149.Anchored = true
WedgePart149.CanCollide = false
WedgePart149.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart149.CFrame = CFrame.new(85.1814804, 3.09614229, 71.7310715, -0.999997199, -0.00224562106, -0.000807990902, -0.00224561989, 0.999997437, -2.03587115e-06, 0.000807993289, -2.16066837e-07, -0.999999762)
WedgePart149.BottomSurface = Enum.SurfaceType.Smooth
WedgePart149.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart149.Position = Vector3.new(85.1814804, 3.09614229, 71.7310715)
WedgePart149.Orientation = Vector3.new(0, -179.949997, -0.129999995)
WedgePart149.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh150.Parent = WedgePart149
SpecialMesh150.Scale = Vector3.new(1.01091325, 0.337860286, 2.69684029)
SpecialMesh150.MeshType = Enum.MeshType.Wedge
SpecialMesh150.Scale = Vector3.new(1.01091325, 0.337860286, 2.69684029)
WedgePart151.Parent = Model111
WedgePart151.Material = Enum.Material.SmoothPlastic
WedgePart151.BrickColor = BrickColor.new("Really black")
WedgePart151.Rotation = Vector3.new(0, 0.0500000007, 0.129999995)
WedgePart151.Anchored = true
WedgePart151.CanCollide = false
WedgePart151.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart151.CFrame = CFrame.new(85.1811905, 3.09613752, 71.3675842, 0.999997199, -0.00224562106, 0.000807990727, 0.00224561989, 0.999997437, 2.12527812e-06, -0.000807993289, -3.05473804e-07, 0.999999821)
WedgePart151.BottomSurface = Enum.SurfaceType.Smooth
WedgePart151.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart151.Position = Vector3.new(85.1811905, 3.09613752, 71.3675842)
WedgePart151.Orientation = Vector3.new(0, 0.0500000007, 0.129999995)
WedgePart151.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh152.Parent = WedgePart151
SpecialMesh152.Scale = Vector3.new(1.01091325, 0.337860286, 0.938338399)
SpecialMesh152.MeshType = Enum.MeshType.Wedge
SpecialMesh152.Scale = Vector3.new(1.01091325, 0.337860286, 0.938338399)
WedgePart153.Parent = Model111
WedgePart153.Material = Enum.Material.SmoothPlastic
WedgePart153.BrickColor = BrickColor.new("Navy blue")
WedgePart153.Rotation = Vector3.new(86.8799973, 15.1499996, -7.48000002)
WedgePart153.Anchored = true
WedgePart153.CanCollide = false
WedgePart153.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart153.CFrame = CFrame.new(84.1446457, 4.05169582, 70.7639236, 0.957038879, 0.125684932, 0.261304408, 0.251607925, 0.087944001, -0.963825464, -0.144118473, 0.988164604, 0.0525425151)
WedgePart153.BottomSurface = Enum.SurfaceType.Smooth
WedgePart153.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart153.Position = Vector3.new(84.1446457, 4.05169582, 70.7639236)
WedgePart153.Orientation = Vector3.new(74.5400009, 78.6299973, 70.7300034)
WedgePart153.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh154.Parent = WedgePart153
SpecialMesh154.Scale = Vector3.new(3.79249001, 0.477633595, 0.0880769417)
SpecialMesh154.MeshType = Enum.MeshType.Wedge
SpecialMesh154.Scale = Vector3.new(3.79249001, 0.477633595, 0.0880769417)
WedgePart155.Parent = Model111
WedgePart155.Material = Enum.Material.SmoothPlastic
WedgePart155.BrickColor = BrickColor.new("Navy blue")
WedgePart155.Rotation = Vector3.new(-173.649994, 48.3899994, -169.940002)
WedgePart155.Anchored = true
WedgePart155.CanCollide = false
WedgePart155.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart155.CFrame = CFrame.new(84.4218597, 4.16451406, 70.582016, -0.65387702, 0.11601074, 0.747653902, 0.254984111, 0.964155555, 0.073397398, -0.712339818, 0.238632768, -0.660020113)
WedgePart155.BottomSurface = Enum.SurfaceType.Smooth
WedgePart155.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart155.Position = Vector3.new(84.4218597, 4.16451406, 70.582016)
WedgePart155.Orientation = Vector3.new(-4.21000004, 131.440002, 14.8100004)
WedgePart155.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh156.Parent = WedgePart155
SpecialMesh156.Scale = Vector3.new(4.00483942, 2.83606482, 0.269650221)
SpecialMesh156.MeshType = Enum.MeshType.Wedge
SpecialMesh156.Scale = Vector3.new(4.00483942, 2.83606482, 0.269650221)
WedgePart157.Parent = Model111
WedgePart157.Material = Enum.Material.SmoothPlastic
WedgePart157.BrickColor = BrickColor.new("Navy blue")
WedgePart157.Rotation = Vector3.new(6.3499999, -48.3899994, -10.0600004)
WedgePart157.Anchored = true
WedgePart157.CanCollide = false
WedgePart157.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart157.CFrame = CFrame.new(84.4620514, 4.16846418, 70.5465317, 0.65387702, 0.116010807, -0.747653902, -0.254984111, 0.964155555, -0.0733973011, 0.712339818, 0.238632709, 0.660020053)
WedgePart157.BottomSurface = Enum.SurfaceType.Smooth
WedgePart157.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart157.Position = Vector3.new(84.4620514, 4.16846418, 70.5465317)
WedgePart157.Orientation = Vector3.new(4.21000004, -48.5600014, -14.8100004)
WedgePart157.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh158.Parent = WedgePart157
SpecialMesh158.Scale = Vector3.new(4.00483942, 2.83606482, 0.267972648)
SpecialMesh158.MeshType = Enum.MeshType.Wedge
SpecialMesh158.Scale = Vector3.new(4.00483942, 2.83606482, 0.267972648)
WedgePart159.Parent = Model111
WedgePart159.Material = Enum.Material.SmoothPlastic
WedgePart159.BrickColor = BrickColor.new("Navy blue")
WedgePart159.Rotation = Vector3.new(90, -9.51000023, 38.2000008)
WedgePart159.Anchored = true
WedgePart159.CanCollide = false
WedgePart159.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart159.CFrame = CFrame.new(84.0250778, 4.48755217, 70.9831467, 0.775091887, -0.609853208, -0.16526258, -0.129877046, 0.102194309, -0.986249685, 0.618356287, 0.785897911, 4.05497849e-06)
WedgePart159.BottomSurface = Enum.SurfaceType.Smooth
WedgePart159.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart159.Position = Vector3.new(84.0250778, 4.48755217, 70.9831467)
WedgePart159.Orientation = Vector3.new(80.4899979, -90, -51.7999992)
WedgePart159.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh160.Parent = WedgePart159
SpecialMesh160.Scale = Vector3.new(1.85473442, 0.0282498114, 0.0053952313)
SpecialMesh160.MeshType = Enum.MeshType.Wedge
SpecialMesh160.Scale = Vector3.new(1.85473442, 0.0282498114, 0.0053952313)
WedgePart161.Parent = Model111
WedgePart161.Material = Enum.Material.SmoothPlastic
WedgePart161.BrickColor = BrickColor.new("Navy blue")
WedgePart161.Rotation = Vector3.new(-90, 9.51000023, 141.800003)
WedgePart161.Anchored = true
WedgePart161.CanCollide = false
WedgePart161.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart161.CFrame = CFrame.new(83.9779968, 4.20658875, 70.9831314, -0.775091887, -0.609853208, 0.165262535, 0.129877046, 0.10219422, 0.986249685, -0.618356287, 0.785897911, -3.98047268e-06)
WedgePart161.BottomSurface = Enum.SurfaceType.Smooth
WedgePart161.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart161.Position = Vector3.new(83.9779968, 4.20658875, 70.9831314)
WedgePart161.Orientation = Vector3.new(-80.4899979, 90, 51.7999992)
WedgePart161.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh162.Parent = WedgePart161
SpecialMesh162.Scale = Vector3.new(1.85473442, 0.0282498114, 2.84345865)
SpecialMesh162.MeshType = Enum.MeshType.Wedge
SpecialMesh162.Scale = Vector3.new(1.85473442, 0.0282498114, 2.84345865)
WedgePart163.Parent = Model111
WedgePart163.Material = Enum.Material.SmoothPlastic
WedgePart163.BrickColor = BrickColor.new("Navy blue")
WedgePart163.Rotation = Vector3.new(-173.649994, -9.22999954, -169.990005)
WedgePart163.Anchored = true
WedgePart163.CanCollide = false
WedgePart163.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart163.CFrame = CFrame.new(84.1072159, 4.18705034, 70.8189468, -0.972012162, 0.171640545, -0.16041176, 0.155350938, 0.981806695, 0.109186664, 0.176234171, 0.0812106356, -0.980992436)
WedgePart163.BottomSurface = Enum.SurfaceType.Smooth
WedgePart163.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart163.Position = Vector3.new(84.1072159, 4.18705034, 70.8189468)
WedgePart163.Orientation = Vector3.new(-6.26999998, -170.710007, 8.98999977)
WedgePart163.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh164.Parent = WedgePart163
SpecialMesh164.Scale = Vector3.new(2.80837536, 2.83567548, 0.212128252)
SpecialMesh164.MeshType = Enum.MeshType.Wedge
SpecialMesh164.Scale = Vector3.new(2.80837536, 2.83567548, 0.212128252)
WedgePart165.Parent = Model111
WedgePart165.Material = Enum.Material.SmoothPlastic
WedgePart165.BrickColor = BrickColor.new("Navy blue")
WedgePart165.Rotation = Vector3.new(6.3499999, 9.22999954, -10.0100002)
WedgePart165.Anchored = true
WedgePart165.CanCollide = false
WedgePart165.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart165.CFrame = CFrame.new(84.0994263, 4.19235182, 70.7712784, 0.972012162, 0.171640515, 0.160411775, -0.155350938, 0.981806695, -0.10918659, -0.176234171, 0.0812105462, 0.980992496)
WedgePart165.BottomSurface = Enum.SurfaceType.Smooth
WedgePart165.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart165.Position = Vector3.new(84.0994263, 4.19235182, 70.7712784)
WedgePart165.Orientation = Vector3.new(6.26999998, 9.28999996, -8.98999977)
WedgePart165.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh166.Parent = WedgePart165
SpecialMesh166.Scale = Vector3.new(2.80837536, 2.83567548, 0.273714751)
SpecialMesh166.MeshType = Enum.MeshType.Wedge
SpecialMesh166.Scale = Vector3.new(2.80837536, 2.83567548, 0.273714751)
WedgePart167.Parent = Model111
WedgePart167.Material = Enum.Material.SmoothPlastic
WedgePart167.BrickColor = BrickColor.new("Navy blue")
WedgePart167.Rotation = Vector3.new(173.649994, -48.3899994, -169.940002)
WedgePart167.Anchored = true
WedgePart167.CanCollide = false
WedgePart167.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart167.CFrame = CFrame.new(84.4638138, 4.16846514, 71.6982422, -0.653876841, 0.116011359, -0.747654021, 0.254989713, 0.964153886, -0.0734017119, 0.712337971, -0.238639727, -0.660019517)
WedgePart167.BottomSurface = Enum.SurfaceType.Smooth
WedgePart167.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart167.Position = Vector3.new(84.4638138, 4.16846514, 71.6982422)
WedgePart167.Orientation = Vector3.new(4.21000004, -131.440002, 14.8100004)
WedgePart167.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh168.Parent = WedgePart167
SpecialMesh168.Scale = Vector3.new(4.00483942, 2.83606482, 0.267972648)
SpecialMesh168.MeshType = Enum.MeshType.Wedge
SpecialMesh168.Scale = Vector3.new(4.00483942, 2.83606482, 0.267972648)
WedgePart169.Parent = Model111
WedgePart169.Material = Enum.Material.SmoothPlastic
WedgePart169.BrickColor = BrickColor.new("Navy blue")
WedgePart169.Rotation = Vector3.new(173.649994, 9.22999954, -169.990005)
WedgePart169.Anchored = true
WedgePart169.CanCollide = false
WedgePart169.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart169.CFrame = CFrame.new(84.1011887, 4.19235182, 71.4734879, -0.972012162, 0.171640277, 0.16041179, 0.155349508, 0.981806219, -0.109193146, -0.176235214, -0.0812171847, -0.980991721)
WedgePart169.BottomSurface = Enum.SurfaceType.Smooth
WedgePart169.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart169.Position = Vector3.new(84.1011887, 4.19235182, 71.4734879)
WedgePart169.Orientation = Vector3.new(6.26999998, 170.710007, 8.98999977)
WedgePart169.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh170.Parent = WedgePart169
SpecialMesh170.Scale = Vector3.new(2.80837536, 2.83567548, 0.273714751)
SpecialMesh170.MeshType = Enum.MeshType.Wedge
SpecialMesh170.Scale = Vector3.new(2.80837536, 2.83567548, 0.273714751)
WedgePart171.Parent = Model111
WedgePart171.Material = Enum.Material.SmoothPlastic
WedgePart171.BrickColor = BrickColor.new("Navy blue")
WedgePart171.Rotation = Vector3.new(90, -9.51000023, 141.800003)
WedgePart171.Anchored = true
WedgePart171.CanCollide = false
WedgePart171.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart171.CFrame = CFrame.new(84.0268402, 4.48755026, 71.2616348, -0.775091708, -0.609853506, -0.16526255, 0.129881904, 0.102188051, -0.986249685, 0.618355632, -0.785898507, 3.83146107e-06)
WedgePart171.BottomSurface = Enum.SurfaceType.Smooth
WedgePart171.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart171.Position = Vector3.new(84.0268402, 4.48755026, 71.2616348)
WedgePart171.Orientation = Vector3.new(80.4899979, -90, 51.8100014)
WedgePart171.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh172.Parent = WedgePart171
SpecialMesh172.Scale = Vector3.new(1.85473442, 0.0282498114, 0.0053952313)
SpecialMesh172.MeshType = Enum.MeshType.Wedge
SpecialMesh172.Scale = Vector3.new(1.85473442, 0.0282498114, 0.0053952313)
WedgePart173.Parent = Model111
WedgePart173.Material = Enum.Material.SmoothPlastic
WedgePart173.BrickColor = BrickColor.new("Navy blue")
WedgePart173.Rotation = Vector3.new(-6.3499999, -9.22999954, -10.0100002)
WedgePart173.Anchored = true
WedgePart173.CanCollide = false
WedgePart173.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart173.CFrame = CFrame.new(84.1089783, 4.18705225, 71.4258041, 0.972012162, 0.171640292, -0.160411775, -0.155349508, 0.981806219, 0.109193236, 0.176235214, -0.0812172741, 0.980991721)
WedgePart173.BottomSurface = Enum.SurfaceType.Smooth
WedgePart173.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart173.Position = Vector3.new(84.1089783, 4.18705225, 71.4258041)
WedgePart173.Orientation = Vector3.new(-6.26999998, -9.28999996, -8.98999977)
WedgePart173.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh174.Parent = WedgePart173
SpecialMesh174.Scale = Vector3.new(2.80837536, 2.83567548, 0.212128252)
SpecialMesh174.MeshType = Enum.MeshType.Wedge
SpecialMesh174.Scale = Vector3.new(2.80837536, 2.83567548, 0.212128252)
WedgePart175.Parent = Model111
WedgePart175.Material = Enum.Material.SmoothPlastic
WedgePart175.BrickColor = BrickColor.new("Navy blue")
WedgePart175.Rotation = Vector3.new(-90, 9.51000023, 38.2000008)
WedgePart175.Anchored = true
WedgePart175.CanCollide = false
WedgePart175.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart175.CFrame = CFrame.new(83.9797592, 4.20658875, 71.2616196, 0.775091708, -0.609853506, 0.165262491, -0.129881904, 0.102187976, 0.986249685, -0.618355632, -0.785898507, -3.89106572e-06)
WedgePart175.BottomSurface = Enum.SurfaceType.Smooth
WedgePart175.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart175.Position = Vector3.new(83.9797592, 4.20658875, 71.2616196)
WedgePart175.Orientation = Vector3.new(-80.4899979, 90, -51.8100014)
WedgePart175.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh176.Parent = WedgePart175
SpecialMesh176.Scale = Vector3.new(1.85473442, 0.0282498114, 2.84345865)
SpecialMesh176.MeshType = Enum.MeshType.Wedge
SpecialMesh176.Scale = Vector3.new(1.85473442, 0.0282498114, 2.84345865)
WedgePart177.Parent = Model111
WedgePart177.Material = Enum.Material.SmoothPlastic
WedgePart177.BrickColor = BrickColor.new("Navy blue")
WedgePart177.Rotation = Vector3.new(-6.3499999, 48.3899994, -10.0600004)
WedgePart177.Anchored = true
WedgePart177.CanCollide = false
WedgePart177.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart177.CFrame = CFrame.new(84.4236221, 4.16451979, 71.6627731, 0.653876841, 0.116011299, 0.74765408, -0.254989713, 0.964153886, 0.0734018013, -0.712337971, -0.238639787, 0.660019517)
WedgePart177.BottomSurface = Enum.SurfaceType.Smooth
WedgePart177.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart177.Position = Vector3.new(84.4236221, 4.16451979, 71.6627731)
WedgePart177.Orientation = Vector3.new(-4.21000004, 48.5600014, -14.8100004)
WedgePart177.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh178.Parent = WedgePart177
SpecialMesh178.Scale = Vector3.new(4.00483942, 2.83606482, 0.269650221)
SpecialMesh178.MeshType = Enum.MeshType.Wedge
SpecialMesh178.Scale = Vector3.new(4.00483942, 2.83606482, 0.269650221)
WedgePart179.Parent = Model111
WedgePart179.Material = Enum.Material.SmoothPlastic
WedgePart179.BrickColor = BrickColor.new("Really black")
WedgePart179.Rotation = Vector3.new(176.649994, -32.4300003, -16.2800007)
WedgePart179.Anchored = true
WedgePart179.CanCollide = false
WedgePart179.Size = Vector3.new(0.501514971, 1.8123908, 0.540661097)
WedgePart179.CFrame = CFrame.new(84.3812408, 3.16418386, 71.5519867, 0.810205579, 0.236556157, -0.536291003, 0.249728575, -0.967060745, -0.049287919, -0.530285299, -0.0939938203, -0.842592716)
WedgePart179.BottomSurface = Enum.SurfaceType.Smooth
WedgePart179.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart179.Position = Vector3.new(84.3812408, 3.16418386, 71.5519867)
WedgePart179.Orientation = Vector3.new(2.82999992, -147.520004, 165.520004)
WedgePart179.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart180.Parent = Model111
WedgePart180.Material = Enum.Material.SmoothPlastic
WedgePart180.BrickColor = BrickColor.new("Really black")
WedgePart180.Rotation = Vector3.new(-3.3499999, 32.4300003, -163.720001)
WedgePart180.Anchored = true
WedgePart180.CanCollide = false
WedgePart180.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart180.CFrame = CFrame.new(84.2144699, 3.1488595, 71.289978, -0.810205579, 0.236556113, 0.536291063, -0.249728575, -0.967060685, 0.0492878295, 0.530285299, -0.093993932, 0.842592835)
WedgePart180.BottomSurface = Enum.SurfaceType.Smooth
WedgePart180.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart180.Position = Vector3.new(84.2144699, 3.1488595, 71.289978)
WedgePart180.Orientation = Vector3.new(-2.82999992, 32.4799995, -165.520004)
WedgePart180.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh181.Parent = WedgePart180
SpecialMesh181.Scale = Vector3.new(2.5075748, 9.0619545, 0.406420559)
SpecialMesh181.MeshType = Enum.MeshType.Wedge
SpecialMesh181.Scale = Vector3.new(2.5075748, 9.0619545, 0.406420559)
WedgePart182.Parent = Model111
WedgePart182.Material = Enum.Material.SmoothPlastic
WedgePart182.BrickColor = BrickColor.new("Navy blue")
WedgePart182.Rotation = Vector3.new(93.3300018, 15.0900002, -174.039993)
WedgePart182.Anchored = true
WedgePart182.CanCollide = false
WedgePart182.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart182.CFrame = CFrame.new(84.1439896, 4.05129576, 71.4676208, -0.960297585, 0.10023734, 0.260348022, -0.252465844, 0.0848200619, -0.963881016, -0.118699588, -0.991341591, -0.0561460108)
WedgePart182.BottomSurface = Enum.SurfaceType.Smooth
WedgePart182.Color = Color3.new(0, 0.12549, 0.376471)
WedgePart182.Position = Vector3.new(84.1439896, 4.05129576, 71.4676208)
WedgePart182.Orientation = Vector3.new(74.5500031, 102.169998, -71.4300003)
WedgePart182.Color = Color3.new(0, 0.12549, 0.376471)
SpecialMesh183.Parent = WedgePart182
SpecialMesh183.Scale = Vector3.new(3.76363802, 0.508730888, 0.0892680213)
SpecialMesh183.MeshType = Enum.MeshType.Wedge
SpecialMesh183.Scale = Vector3.new(3.76363802, 0.508730888, 0.0892680213)
WedgePart184.Parent = Model111
WedgePart184.Material = Enum.Material.SmoothPlastic
WedgePart184.BrickColor = BrickColor.new("Really black")
WedgePart184.Rotation = Vector3.new(-86.6699982, -15.0900002, -5.96000004)
WedgePart184.Anchored = true
WedgePart184.CanCollide = false
WedgePart184.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart184.CFrame = CFrame.new(84.3801498, 3.17696238, 71.4166794, 0.960297585, 0.100237362, -0.260347992, 0.252465844, 0.0848200023, 0.963881075, 0.118699588, -0.991341591, 0.0561459363)
WedgePart184.BottomSurface = Enum.SurfaceType.Smooth
WedgePart184.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart184.Position = Vector3.new(84.3801498, 3.17696238, 71.4166794)
WedgePart184.Orientation = Vector3.new(-74.5500031, -77.8300018, 71.4300003)
WedgePart184.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh185.Parent = WedgePart184
SpecialMesh185.Scale = Vector3.new(3.76363802, 0.508730888, 8.98179531)
SpecialMesh185.MeshType = Enum.MeshType.Wedge
SpecialMesh185.Scale = Vector3.new(3.76363802, 0.508730888, 8.98179531)
WedgePart186.Parent = Model111
WedgePart186.Material = Enum.Material.SmoothPlastic
WedgePart186.BrickColor = BrickColor.new("Really black")
WedgePart186.Rotation = Vector3.new(-176.649994, 32.4300003, -16.2099991)
WedgePart186.Anchored = true
WedgePart186.CanCollide = false
WedgePart186.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart186.CFrame = CFrame.new(84.2128601, 3.14833856, 70.9510422, 0.810471892, 0.235643119, 0.536290646, 0.248642325, -0.967340946, 0.049282223, 0.530388892, 0.093402721, -0.842593253)
WedgePart186.BottomSurface = Enum.SurfaceType.Smooth
WedgePart186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart186.Position = Vector3.new(84.2128601, 3.14833856, 70.9510422)
WedgePart186.Orientation = Vector3.new(-2.81999993, 147.520004, 165.580002)
WedgePart186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh187.Parent = WedgePart186
SpecialMesh187.Scale = Vector3.new(2.49772358, 9.06096554, 0.438725233)
SpecialMesh187.MeshType = Enum.MeshType.Wedge
SpecialMesh187.Scale = Vector3.new(2.49772358, 9.06096554, 0.438725233)
WedgePart188.Parent = Model111
WedgePart188.Material = Enum.Material.SmoothPlastic
WedgePart188.BrickColor = BrickColor.new("Really black")
WedgePart188.Rotation = Vector3.new(-93.1200027, -15.1499996, -172.520004)
WedgePart188.Anchored = true
WedgePart188.CanCollide = false
WedgePart188.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
WedgePart188.CFrame = CFrame.new(84.3816833, 3.17736506, 70.8115616, -0.957038879, 0.125684962, -0.261304379, -0.251607925, 0.0879439265, 0.963825405, 0.144118473, 0.988164663, -0.0525424257)
WedgePart188.BottomSurface = Enum.SurfaceType.Smooth
WedgePart188.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart188.Position = Vector3.new(84.3816833, 3.17736506, 70.8115616)
WedgePart188.Orientation = Vector3.new(-74.5400009, -101.370003, -70.7300034)
WedgePart188.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
SpecialMesh189.Parent = WedgePart188
SpecialMesh189.Scale = Vector3.new(3.79249001, 0.477633595, 8.98350334)
SpecialMesh189.MeshType = Enum.MeshType.Wedge
SpecialMesh189.Scale = Vector3.new(3.79249001, 0.477633595, 8.98350334)
WedgePart190.Parent = Model111
WedgePart190.Material = Enum.Material.SmoothPlastic
WedgePart190.BrickColor = BrickColor.new("Really black")
WedgePart190.Rotation = Vector3.new(3.3499999, -32.4300003, -163.789993)
WedgePart190.Anchored = true
WedgePart190.CanCollide = false
WedgePart190.Size = Vector3.new(0.49954474, 1.81219304, 0.534200132)
WedgePart190.CFrame = CFrame.new(84.379631, 3.16365862, 70.689003, -0.810471892, 0.235643178, -0.536290705, -0.248642325, -0.967340887, -0.0492823087, -0.530388892, 0.093402639, 0.842593431)
WedgePart190.BottomSurface = Enum.SurfaceType.Smooth
WedgePart190.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
WedgePart190.Position = Vector3.new(84.379631, 3.16365862, 70.689003)
WedgePart190.Orientation = Vector3.new(2.81999993, -32.4799995, -165.580002)
WedgePart190.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part191.Parent = Model111
Part191.Material = Enum.Material.SmoothPlastic
Part191.BrickColor = BrickColor.new("Bright blue")
Part191.Reflectance = 0.20000000298023
Part191.Rotation = Vector3.new(180, 0, 0)
Part191.Anchored = true
Part191.CanCollide = false
Part191.FormFactor = Enum.FormFactor.Symmetric
Part191.Size = Vector3.new(0.200000003, 0.289398372, 0.200000003)
Part191.CFrame = CFrame.new(85.2290497, 2.24749422, 71.4875183, 0.999990463, 1.68663576e-06, -5.21396615e-08, 1.52207053e-06, -0.99999398, -3.58559191e-06, -4.70573482e-08, 3.27080488e-06, -0.99999404)
Part191.BottomSurface = Enum.SurfaceType.Smooth
Part191.TopSurface = Enum.SurfaceType.Smooth
Part191.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part191.Position = Vector3.new(85.2290497, 2.24749422, 71.4875183)
Part191.Orientation = Vector3.new(0, -180, 180)
Part191.Color = Color3.new(0.0509804, 0.411765, 0.67451)
BlockMesh192.Parent = Part191
BlockMesh192.Scale = Vector3.new(1, 1, 0.200000003)
BlockMesh192.Scale = Vector3.new(1, 1, 0.200000003)
Part193.Parent = Model111
Part193.Material = Enum.Material.SmoothPlastic
Part193.BrickColor = BrickColor.new("Bright blue")
Part193.Reflectance = 0.20000000298023
Part193.Rotation = Vector3.new(90, 0, 0)
Part193.Anchored = true
Part193.CanCollide = false
Part193.FormFactor = Enum.FormFactor.Symmetric
Part193.Size = Vector3.new(0.200000003, 0.704961121, 0.200000003)
Part193.CFrame = CFrame.new(85.2290497, 2.37356567, 71.1549301, 0.999990463, 5.21391357e-08, 1.68663564e-06, 1.52207053e-06, 3.8985163e-06, -0.99999404, -4.70573482e-08, 0.99999404, 3.58559191e-06)
Part193.BottomSurface = Enum.SurfaceType.Smooth
Part193.TopSurface = Enum.SurfaceType.Smooth
Part193.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part193.Position = Vector3.new(85.2290497, 2.37356567, 71.1549301)
Part193.Orientation = Vector3.new(89.8000031, 25.1900005, 21.3299999)
Part193.Color = Color3.new(0.0509804, 0.411765, 0.67451)
BlockMesh194.Parent = Part193
BlockMesh194.Scale = Vector3.new(1, 1, 0.200000003)
BlockMesh194.Scale = Vector3.new(1, 1, 0.200000003)
Part195.Parent = Model111
Part195.Material = Enum.Material.SmoothPlastic
Part195.BrickColor = BrickColor.new("Black")
Part195.Rotation = Vector3.new(180, 0, 180)
Part195.Anchored = true
Part195.CanCollide = false
Part195.FormFactor = Enum.FormFactor.Symmetric
Part195.Size = Vector3.new(1.12655747, 0.300000042, 2.07369661)
Part195.CFrame = CFrame.new(84.7367096, 2.24362898, 71.1229401, -0.999990463, -1.68663564e-06, -5.21395265e-08, -1.52207053e-06, 0.99999398, -3.68990004e-06, 4.70573482e-08, -3.34531069e-06, -0.99999404)
Part195.BottomSurface = Enum.SurfaceType.Smooth
Part195.TopSurface = Enum.SurfaceType.Smooth
Part195.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part195.Position = Vector3.new(84.7367096, 2.24362898, 71.1229401)
Part195.Orientation = Vector3.new(0, -180, 0)
Part195.Color = Color3.new(0.105882, 0.164706, 0.207843)
BlockMesh196.Parent = Part195
Part197.Parent = Model111
Part197.Material = Enum.Material.SmoothPlastic
Part197.BrickColor = BrickColor.new("Bright blue")
Part197.Reflectance = 0.20000000298023
Part197.Rotation = Vector3.new(180, 0, 0)
Part197.Anchored = true
Part197.CanCollide = false
Part197.FormFactor = Enum.FormFactor.Symmetric
Part197.Size = Vector3.new(0.200000003, 0.289398372, 0.200000003)
Part197.CFrame = CFrame.new(85.2290497, 2.2483387, 70.8214417, 0.999990463, 1.68663576e-06, -5.21396615e-08, 1.52207053e-06, -0.99999398, -3.58559191e-06, -4.70573482e-08, 3.27080488e-06, -0.99999404)
Part197.BottomSurface = Enum.SurfaceType.Smooth
Part197.TopSurface = Enum.SurfaceType.Smooth
Part197.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part197.Position = Vector3.new(85.2290497, 2.2483387, 70.8214417)
Part197.Orientation = Vector3.new(0, -180, 180)
Part197.Color = Color3.new(0.0509804, 0.411765, 0.67451)
BlockMesh198.Parent = Part197
BlockMesh198.Scale = Vector3.new(1, 1, 0.200000003)
BlockMesh198.Scale = Vector3.new(1, 1, 0.200000003)
Part199.Parent = Model111
Part199.Material = Enum.Material.SmoothPlastic
Part199.BrickColor = BrickColor.new("Bright blue")
Part199.Reflectance = 0.20000000298023
Part199.Rotation = Vector3.new(90, 0, 0)
Part199.Anchored = true
Part199.CanCollide = false
Part199.FormFactor = Enum.FormFactor.Symmetric
Part199.Size = Vector3.new(0.200000003, 0.704961121, 0.200000003)
Part199.CFrame = CFrame.new(85.2290497, 2.10725856, 71.1549301, 0.999990463, 5.21391357e-08, 1.68663564e-06, 1.52207053e-06, 3.8985163e-06, -0.99999404, -4.70573482e-08, 0.99999404, 3.58559191e-06)
Part199.BottomSurface = Enum.SurfaceType.Smooth
Part199.TopSurface = Enum.SurfaceType.Smooth
Part199.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part199.Position = Vector3.new(85.2290497, 2.10725856, 71.1549301)
Part199.Orientation = Vector3.new(89.8000031, 25.1900005, 21.3299999)
Part199.Color = Color3.new(0.0509804, 0.411765, 0.67451)
BlockMesh200.Parent = Part199
BlockMesh200.Scale = Vector3.new(1, 1, 0.200000003)
BlockMesh200.Scale = Vector3.new(1, 1, 0.200000003)
Part201.Parent = Model111
Part201.Material = Enum.Material.SmoothPlastic
Part201.BrickColor = BrickColor.new("Bright blue")
Part201.Reflectance = 0.20000000298023
Part201.Rotation = Vector3.new(-90, 0, 0)
Part201.Anchored = true
Part201.CanCollide = false
Part201.FormFactor = Enum.FormFactor.Symmetric
Part201.Size = Vector3.new(0.200000003, 0.289398372, 0.200000003)
Part201.CFrame = CFrame.new(85.2290497, 2.24585271, 71.3620148, 0.999990463, -5.21390859e-08, -1.68663564e-06, 1.52207053e-06, -3.92831862e-06, 0.99999404, -4.70573482e-08, -0.99999404, -3.60049307e-06)
Part201.BottomSurface = Enum.SurfaceType.Smooth
Part201.TopSurface = Enum.SurfaceType.Smooth
Part201.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part201.Position = Vector3.new(85.2290497, 2.24585271, 71.3620148)
Part201.Orientation = Vector3.new(-89.8000031, -154.899994, 158.820007)
Part201.Color = Color3.new(0.0509804, 0.411765, 0.67451)
BlockMesh202.Parent = Part201
BlockMesh202.Scale = Vector3.new(1, 1, 0.200000003)
BlockMesh202.Scale = Vector3.new(1, 1, 0.200000003)
Part203.Name = "Cylinder"
Part203.Parent = Model111
Part203.Material = Enum.Material.SmoothPlastic
Part203.BrickColor = BrickColor.new("Really black")
Part203.Rotation = Vector3.new(-90, 0, 90)
Part203.Anchored = true
Part203.CanCollide = false
Part203.FormFactor = Enum.FormFactor.Symmetric
Part203.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part203.CFrame = CFrame.new(85.2129898, 2.2316227, 71.4693756, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part203.BottomSurface = Enum.SurfaceType.Smooth
Part203.TopSurface = Enum.SurfaceType.Smooth
Part203.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part203.Position = Vector3.new(85.2129898, 2.2316227, 71.4693756)
Part203.Orientation = Vector3.new(-90, 90, 0)
Part203.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh204.Parent = Part203
CylinderMesh204.Scale = Vector3.new(0.773780882, 0.773780882, 0.386890441)
CylinderMesh204.Scale = Vector3.new(0.773780882, 0.773780882, 0.386890441)
Part205.Name = "Cylinder"
Part205.Parent = Model111
Part205.Material = Enum.Material.SmoothPlastic
Part205.BrickColor = BrickColor.new("Really black")
Part205.Rotation = Vector3.new(-90, 0, 90)
Part205.Anchored = true
Part205.CanCollide = false
Part205.FormFactor = Enum.FormFactor.Symmetric
Part205.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part205.CFrame = CFrame.new(85.2129898, 2.23079395, 70.7659149, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part205.BottomSurface = Enum.SurfaceType.Smooth
Part205.TopSurface = Enum.SurfaceType.Smooth
Part205.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part205.Position = Vector3.new(85.2129898, 2.23079395, 70.7659149)
Part205.Orientation = Vector3.new(-90, 90, 0)
Part205.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
CylinderMesh206.Parent = Part205
CylinderMesh206.Scale = Vector3.new(0.773780882, 0.773780882, 0.386890441)
CylinderMesh206.Scale = Vector3.new(0.773780882, 0.773780882, 0.386890441)
Part207.Name = "Cylinder"
Part207.Parent = Model111
Part207.Material = Enum.Material.SmoothPlastic
Part207.BrickColor = BrickColor.new("Pastel Blue")
Part207.Reflectance = 0.20000000298023
Part207.Rotation = Vector3.new(-90, 0, 90)
Part207.Anchored = true
Part207.CanCollide = false
Part207.FormFactor = Enum.FormFactor.Symmetric
Part207.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part207.CFrame = CFrame.new(85.2065201, 2.60235643, 71.5077591, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part207.BottomSurface = Enum.SurfaceType.Smooth
Part207.TopSurface = Enum.SurfaceType.Smooth
Part207.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part207.Position = Vector3.new(85.2065201, 2.60235643, 71.5077591)
Part207.Orientation = Vector3.new(-90, 90, 0)
Part207.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh208.Parent = Part207
CylinderMesh208.Scale = Vector3.new(0.857374966, 0.857374966, 0.428687483)
CylinderMesh208.Scale = Vector3.new(0.857374966, 0.857374966, 0.428687483)
Part209.Name = "1"
Part209.Parent = Model111
Part209.Material = Enum.Material.SmoothPlastic
Part209.BrickColor = BrickColor.new("Pastel Blue")
Part209.Reflectance = 0.20000000298023
Part209.Rotation = Vector3.new(-90, 0, 90)
Part209.Anchored = true
Part209.CanCollide = false
Part209.FormFactor = Enum.FormFactor.Symmetric
Part209.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part209.CFrame = CFrame.new(85.1887817, 2.975389, 70.6631317, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part209.BottomSurface = Enum.SurfaceType.Smooth
Part209.TopSurface = Enum.SurfaceType.Smooth
Part209.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part209.Position = Vector3.new(85.1887817, 2.975389, 70.6631317)
Part209.Orientation = Vector3.new(-90, 90, 0)
Part209.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh210.Parent = Part209
CylinderMesh210.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh210.Scale = Vector3.new(1, 1, 0.5)
Part211.Name = "Cylinder"
Part211.Parent = Model111
Part211.Material = Enum.Material.SmoothPlastic
Part211.BrickColor = BrickColor.new("Pastel Blue")
Part211.Reflectance = 0.20000000298023
Part211.Rotation = Vector3.new(-90, 0, 90)
Part211.Anchored = true
Part211.CanCollide = false
Part211.FormFactor = Enum.FormFactor.Symmetric
Part211.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part211.CFrame = CFrame.new(85.2065201, 2.60143566, 70.7283096, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part211.BottomSurface = Enum.SurfaceType.Smooth
Part211.TopSurface = Enum.SurfaceType.Smooth
Part211.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part211.Position = Vector3.new(85.2065201, 2.60143566, 70.7283096)
Part211.Orientation = Vector3.new(-90, 90, 0)
Part211.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh212.Parent = Part211
CylinderMesh212.Scale = Vector3.new(0.857374966, 0.857374966, 0.428687483)
CylinderMesh212.Scale = Vector3.new(0.857374966, 0.857374966, 0.428687483)
Part213.Name = "1"
Part213.Parent = Model111
Part213.Material = Enum.Material.SmoothPlastic
Part213.BrickColor = BrickColor.new("Pastel Blue")
Part213.Reflectance = 0.20000000298023
Part213.Rotation = Vector3.new(-90, 0, 90)
Part213.Anchored = true
Part213.CanCollide = false
Part213.FormFactor = Enum.FormFactor.Symmetric
Part213.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Part213.CFrame = CFrame.new(85.1887817, 2.97647023, 71.5722427, -5.72269414e-08, -1, -1.52209304e-06, -4.00096178e-06, -1.52208713e-06, 1, -1, 5.72326542e-08, -4.00096178e-06)
Part213.BottomSurface = Enum.SurfaceType.Smooth
Part213.TopSurface = Enum.SurfaceType.Smooth
Part213.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part213.Position = Vector3.new(85.1887817, 2.97647023, 71.5722427)
Part213.Orientation = Vector3.new(-90, 90, 0)
Part213.Color = Color3.new(0.501961, 0.733333, 0.858824)
CylinderMesh214.Parent = Part213
CylinderMesh214.Scale = Vector3.new(1, 1, 0.5)
CylinderMesh214.Scale = Vector3.new(1, 1, 0.5)
Part215.Name = "Brick"
Part215.Parent = Model111
Part215.Material = Enum.Material.SmoothPlastic
Part215.BrickColor = BrickColor.new("Lapis")
Part215.Rotation = Vector3.new(-98.8700027, 0, 90)
Part215.Anchored = true
Part215.CanCollide = false
Part215.FormFactor = Enum.FormFactor.Symmetric
Part215.Size = Vector3.new(0.200000003, 0.200000048, 3.76191354)
Part215.CFrame = CFrame.new(85.334816, 2.19722486, 72.4109573, 3.44653273e-07, -1, -1.53493693e-06, -0.154159606, -1.56971362e-06, 0.98804605, -0.98804605, -1.03908391e-07, -0.154159606)
Part215.BottomSurface = Enum.SurfaceType.Smooth
Part215.TopSurface = Enum.SurfaceType.Smooth
Part215.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part215.Position = Vector3.new(85.334816, 2.19722486, 72.4109573)
Part215.Orientation = Vector3.new(-81.1299973, -180, -90)
Part215.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh216.Parent = Part215
BlockMesh216.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh216.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part217.Name = "Brick"
Part217.Parent = Model111
Part217.Material = Enum.Material.SmoothPlastic
Part217.BrickColor = BrickColor.new("Lapis")
Part217.Rotation = Vector3.new(81.1299973, 0, -90)
Part217.Anchored = true
Part217.CanCollide = false
Part217.FormFactor = Enum.FormFactor.Symmetric
Part217.Size = Vector3.new(0.200000003, 0.200000048, 0.200000003)
Part217.CFrame = CFrame.new(85.2253647, 0.689384937, 72.6472626, 3.44653273e-07, 1, 1.62236074e-06, -0.154159606, 1.65609265e-06, -0.98804605, -0.98804605, 9.04312216e-08, 0.154159606)
Part217.BottomSurface = Enum.SurfaceType.Smooth
Part217.TopSurface = Enum.SurfaceType.Smooth
Part217.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part217.Position = Vector3.new(85.2253647, 0.689384937, 72.6472626)
Part217.Orientation = Vector3.new(81.1299973, 0, -90)
Part217.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh218.Parent = Part217
BlockMesh218.Scale = Vector3.new(0.200000003, 0.200000003, 0.5)
BlockMesh218.Scale = Vector3.new(0.200000003, 0.200000003, 0.5)
Part219.Name = "Brick"
Part219.Parent = Model111
Part219.Material = Enum.Material.SmoothPlastic
Part219.BrickColor = BrickColor.new("Lapis")
Part219.Rotation = Vector3.new(171.130005, -90, 0)
Part219.Anchored = true
Part219.CanCollide = false
Part219.FormFactor = Enum.FormFactor.Symmetric
Part219.Size = Vector3.new(0.200000003, 0.200000048, 1.06754613)
Part219.CFrame = CFrame.new(84.7113571, 0.642819166, 72.6564255, 3.44653273e-07, 1.90724722e-06, -1, -0.154159606, -0.98804605, -1.93757319e-06, -0.98804605, 0.154159606, -4.65132004e-08)
Part219.BottomSurface = Enum.SurfaceType.Smooth
Part219.TopSurface = Enum.SurfaceType.Smooth
Part219.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part219.Position = Vector3.new(84.7113571, 0.642819166, 72.6564255)
Part219.Orientation = Vector3.new(0, -90, -171.130005)
Part219.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh220.Parent = Part219
BlockMesh220.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh220.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part221.Name = "Brick"
Part221.Parent = Model111
Part221.Material = Enum.Material.SmoothPlastic
Part221.BrickColor = BrickColor.new("Lapis")
Part221.Rotation = Vector3.new(81.1299973, 0, -90)
Part221.Anchored = true
Part221.CanCollide = false
Part221.FormFactor = Enum.FormFactor.Symmetric
Part221.Size = Vector3.new(0.200000003, 0.200000048, 0.400000036)
Part221.CFrame = CFrame.new(85.0661621, 0.575264692, 72.6628799, 3.44653273e-07, 1, 1.62236074e-06, -0.154159606, 1.65609265e-06, -0.98804605, -0.98804605, 9.04312216e-08, 0.154159606)
Part221.BottomSurface = Enum.SurfaceType.Smooth
Part221.TopSurface = Enum.SurfaceType.Smooth
Part221.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part221.Position = Vector3.new(85.0661621, 0.575264692, 72.6628799)
Part221.Orientation = Vector3.new(81.1299973, 0, -90)
Part221.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh222.Parent = Part221
BlockMesh222.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh222.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part223.Name = "Brick"
Part223.Parent = Model111
Part223.Material = Enum.Material.SmoothPlastic
Part223.BrickColor = BrickColor.new("Really black")
Part223.Rotation = Vector3.new(0, 90, 0)
Part223.Anchored = true
Part223.CanCollide = false
Part223.FormFactor = Enum.FormFactor.Symmetric
Part223.Size = Vector3.new(0.275762081, 2.04569292, 0.200000003)
Part223.CFrame = CFrame.new(85.182869, 2.98781443, 72.0021896, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part223.BottomSurface = Enum.SurfaceType.Smooth
Part223.TopSurface = Enum.SurfaceType.Smooth
Part223.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part223.Position = Vector3.new(85.182869, 2.98781443, 72.0021896)
Part223.Orientation = Vector3.new(0, 90, 0)
Part223.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh224.Parent = Part223
Part225.Name = "Brick"
Part225.Parent = Model111
Part225.Material = Enum.Material.SmoothPlastic
Part225.BrickColor = BrickColor.new("Really black")
Part225.Rotation = Vector3.new(90, 90, 0)
Part225.Anchored = true
Part225.CanCollide = false
Part225.FormFactor = Enum.FormFactor.Symmetric
Part225.Size = Vector3.new(0.200000003, 0.682073951, 0.200000003)
Part225.CFrame = CFrame.new(85.2118912, 2.23023295, 71.1194458, -1.85120132e-06, -5.99948677e-08, 1, 0.99999994, 2.66171992e-06, 1.85119575e-06, -2.66171992e-06, 0.99999994, 5.99902847e-08)
Part225.BottomSurface = Enum.SurfaceType.Smooth
Part225.TopSurface = Enum.SurfaceType.Smooth
Part225.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part225.Position = Vector3.new(85.2118912, 2.23023295, 71.1194458)
Part225.Orientation = Vector3.new(0, 90, 90)
Part225.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh226.Parent = Part225
BlockMesh226.Scale = Vector3.new(0.232134268, 1, 0.773780882)
BlockMesh226.Scale = Vector3.new(0.232134268, 1, 0.773780882)
Part227.Name = "Brick"
Part227.Parent = Model111
Part227.Material = Enum.Material.SmoothPlastic
Part227.BrickColor = BrickColor.new("Really black")
Part227.Rotation = Vector3.new(0, 90, 0)
Part227.Anchored = true
Part227.CanCollide = false
Part227.FormFactor = Enum.FormFactor.Symmetric
Part227.Size = Vector3.new(2.0220542, 0.200000048, 0.909533679)
Part227.CFrame = CFrame.new(84.7550049, 3.90972233, 71.1290512, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part227.BottomSurface = Enum.SurfaceType.Smooth
Part227.TopSurface = Enum.SurfaceType.Smooth
Part227.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part227.Position = Vector3.new(84.7550049, 3.90972233, 71.1290512)
Part227.Orientation = Vector3.new(0, 90, 0)
Part227.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh228.Parent = Part227
Part229.Name = "Brick"
Part229.Parent = Model111
Part229.Material = Enum.Material.SmoothPlastic
Part229.BrickColor = BrickColor.new("Navy blue")
Part229.Rotation = Vector3.new(26.2199993, 55.4099998, -19.1499996)
Part229.Anchored = true
Part229.CanCollide = false
Part229.FormFactor = Enum.FormFactor.Symmetric
Part229.Size = Vector3.new(0.621950567, 0.569770336, 0.200000003)
Part229.CFrame = CFrame.new(84.0755386, 4.22622585, 70.6097031, 0.536291659, 0.186247364, 0.823227346, 0.0492807105, 0.96677655, -0.250827938, -0.842592955, 0.175086141, 0.509295702)
Part229.BottomSurface = Enum.SurfaceType.Smooth
Part229.TopSurface = Enum.SurfaceType.Smooth
Part229.Color = Color3.new(0, 0.12549, 0.376471)
Part229.Position = Vector3.new(84.0755386, 4.22622585, 70.6097031)
Part229.Orientation = Vector3.new(14.5299997, 58.2599983, 2.92000008)
Part229.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh230.Parent = Part229
Part231.Name = "Brick"
Part231.Parent = Model111
Part231.Material = Enum.Material.SmoothPlastic
Part231.BrickColor = BrickColor.new("Really black")
Part231.Rotation = Vector3.new(3.86999989, 9.71000004, -0.649999976)
Part231.Anchored = true
Part231.CanCollide = false
Part231.FormFactor = Enum.FormFactor.Symmetric
Part231.Size = Vector3.new(1, 0.569770336, 0.200000003)
Part231.CFrame = CFrame.new(84.7363968, 4.22474575, 70.4194794, 0.985605001, 0.0112363026, 0.168690681, 8.23754817e-07, 0.997788668, -0.0664664507, -0.169064462, 0.0655097961, 0.983425617)
Part231.BottomSurface = Enum.SurfaceType.Smooth
Part231.TopSurface = Enum.SurfaceType.Smooth
Part231.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part231.Position = Vector3.new(84.7363968, 4.22474575, 70.4194794)
Part231.Orientation = Vector3.new(3.80999994, 9.72999954, 0)
Part231.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh232.Parent = Part231
Part233.Name = "Brick"
Part233.Parent = Model111
Part233.Material = Enum.Material.SmoothPlastic
Part233.BrickColor = BrickColor.new("Really black")
Part233.Rotation = Vector3.new(0, 90, 0)
Part233.Anchored = true
Part233.CanCollide = false
Part233.FormFactor = Enum.FormFactor.Symmetric
Part233.Size = Vector3.new(0.34570837, 0.569770336, 0.200000003)
Part233.CFrame = CFrame.new(84.1144104, 4.1997714, 71.0390701, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part233.BottomSurface = Enum.SurfaceType.Smooth
Part233.TopSurface = Enum.SurfaceType.Smooth
Part233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part233.Position = Vector3.new(84.1144104, 4.1997714, 71.0390701)
Part233.Orientation = Vector3.new(0, 90, 0)
Part233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh234.Parent = Part233
Part235.Name = "Brick"
Part235.Parent = Model111
Part235.Material = Enum.Material.SmoothPlastic
Part235.BrickColor = BrickColor.new("Navy blue")
Part235.Rotation = Vector3.new(90, 80.4899979, -90)
Part235.Anchored = true
Part235.CanCollide = false
Part235.FormFactor = Enum.FormFactor.Symmetric
Part235.Size = Vector3.new(0.34570837, 0.569770336, 0.200000003)
Part235.CFrame = CFrame.new(83.9347992, 4.21437454, 71.0390854, 5.99961609e-08, 0.165252075, 0.986251473, -3.37511301e-06, 0.986251295, -0.16525206, -0.99999994, -3.30992043e-06, 6.14672899e-07)
Part235.BottomSurface = Enum.SurfaceType.Smooth
Part235.TopSurface = Enum.SurfaceType.Smooth
Part235.Color = Color3.new(0, 0.12549, 0.376471)
Part235.Position = Vector3.new(83.9347992, 4.21437454, 71.0390854)
Part235.Orientation = Vector3.new(9.51000023, 90, 0)
Part235.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh236.Parent = Part235
Part237.Name = "Brick"
Part237.Parent = Model111
Part237.Material = Enum.Material.SmoothPlastic
Part237.BrickColor = BrickColor.new("Really black")
Part237.Rotation = Vector3.new(4.76999998, 57.5600014, -1.20000005)
Part237.Anchored = true
Part237.CanCollide = false
Part237.FormFactor = Enum.FormFactor.Symmetric
Part237.Size = Vector3.new(0.567494869, 0.569770336, 0.200000003)
Part237.CFrame = CFrame.new(84.1754456, 4.21170378, 70.7049713, 0.536291659, 0.0112361535, 0.84395802, 0.0492807105, 0.997788727, -0.0445995405, -0.842592955, 0.0655092001, 0.534552038)
Part237.BottomSurface = Enum.SurfaceType.Smooth
Part237.TopSurface = Enum.SurfaceType.Smooth
Part237.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part237.Position = Vector3.new(84.1754456, 4.21170378, 70.7049713)
Part237.Orientation = Vector3.new(2.55999994, 57.6500015, 2.82999992)
Part237.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh238.Parent = Part237
Part239.Name = "Brick"
Part239.Parent = Model111
Part239.Material = Enum.Material.SmoothPlastic
Part239.BrickColor = BrickColor.new("Navy blue")
Part239.Rotation = Vector3.new(17.3299999, 9.30000019, -2.8900001)
Part239.Anchored = true
Part239.CanCollide = false
Part239.FormFactor = Enum.FormFactor.Symmetric
Part239.Size = Vector3.new(1.20342147, 0.569770336, 0.20717591)
Part239.CFrame = CFrame.new(84.8112564, 4.24095535, 70.2542725, 0.985605001, 0.0496909469, 0.161597043, 8.23754817e-07, 0.955829561, -0.293921709, -0.169064462, 0.289690852, 0.942070186)
Part239.BottomSurface = Enum.SurfaceType.Smooth
Part239.TopSurface = Enum.SurfaceType.Smooth
Part239.Color = Color3.new(0, 0.12549, 0.376471)
Part239.Position = Vector3.new(84.8112564, 4.24095535, 70.2542725)
Part239.Orientation = Vector3.new(17.0900002, 9.72999954, 0)
Part239.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh240.Parent = Part239
Part241.Name = "Brick"
Part241.Parent = Model111
Part241.Material = Enum.Material.SmoothPlastic
Part241.BrickColor = BrickColor.new("Navy blue")
Part241.Rotation = Vector3.new(162.669998, 9.30000019, -177.110001)
Part241.Anchored = true
Part241.CanCollide = false
Part241.FormFactor = Enum.FormFactor.Symmetric
Part241.Size = Vector3.new(1.20342147, 0.569770336, 0.20717591)
Part241.CFrame = CFrame.new(84.8130112, 4.24096441, 71.9904709, -0.985605001, 0.0496907383, 0.161597133, -2.17696652e-06, 0.955827594, -0.293928027, -0.169064477, -0.28969726, -0.942068219)
Part241.BottomSurface = Enum.SurfaceType.Smooth
Part241.TopSurface = Enum.SurfaceType.Smooth
Part241.Color = Color3.new(0, 0.12549, 0.376471)
Part241.Position = Vector3.new(84.8130112, 4.24096441, 71.9904709)
Part241.Orientation = Vector3.new(17.0900002, 170.270004, 0)
Part241.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh242.Parent = Part241
Part243.Name = "Brick"
Part243.Parent = Model111
Part243.Material = Enum.Material.SmoothPlastic
Part243.BrickColor = BrickColor.new("Really black")
Part243.Rotation = Vector3.new(175.229996, 57.5600014, -178.800003)
Part243.Anchored = true
Part243.CanCollide = false
Part243.FormFactor = Enum.FormFactor.Symmetric
Part243.Size = Vector3.new(0.567494869, 0.569770336, 0.200000003)
Part243.CFrame = CFrame.new(84.1772079, 4.21171141, 71.5398026, -0.53629142, 0.0112355668, 0.843958139, -0.0492874496, 0.99778825, -0.0446031094, -0.842592597, -0.0655167922, -0.534551501)
Part243.BottomSurface = Enum.SurfaceType.Smooth
Part243.TopSurface = Enum.SurfaceType.Smooth
Part243.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part243.Position = Vector3.new(84.1772079, 4.21171141, 71.5398026)
Part243.Orientation = Vector3.new(2.55999994, 122.349998, -2.82999992)
Part243.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh244.Parent = Part243
Part245.Name = "Brick"
Part245.Parent = Model111
Part245.Material = Enum.Material.SmoothPlastic
Part245.BrickColor = BrickColor.new("Lapis")
Part245.Rotation = Vector3.new(-171.130005, -90, 0)
Part245.Anchored = true
Part245.CanCollide = false
Part245.FormFactor = Enum.FormFactor.Symmetric
Part245.Size = Vector3.new(0.200000003, 0.200000048, 1.06754613)
Part245.CFrame = CFrame.new(84.7113571, 0.642818213, 69.6025925, -4.57742686e-07, 1.889602e-06, -1, 0.154153615, -0.988046944, -1.93757205e-06, -0.988047063, -0.154153585, 1.60981841e-07)
Part245.BottomSurface = Enum.SurfaceType.Smooth
Part245.TopSurface = Enum.SurfaceType.Smooth
Part245.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part245.Position = Vector3.new(84.7113571, 0.642818213, 69.6025925)
Part245.Orientation = Vector3.new(0, -90, 171.130005)
Part245.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh246.Parent = Part245
BlockMesh246.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh246.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part247.Name = "Brick"
Part247.Parent = Model111
Part247.Material = Enum.Material.SmoothPlastic
Part247.BrickColor = BrickColor.new("Lapis")
Part247.Rotation = Vector3.new(98.8700027, 0, -90)
Part247.Anchored = true
Part247.CanCollide = false
Part247.FormFactor = Enum.FormFactor.Symmetric
Part247.Size = Vector3.new(0.200000003, 0.200000048, 0.200000003)
Part247.CFrame = CFrame.new(85.2253647, 0.689387798, 69.6117401, -4.57742686e-07, 1, 1.60785328e-06, 0.154153615, 1.65919141e-06, -0.988046944, -0.988047063, -2.04414434e-07, -0.154153585)
Part247.BottomSurface = Enum.SurfaceType.Smooth
Part247.TopSurface = Enum.SurfaceType.Smooth
Part247.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part247.Position = Vector3.new(85.2253647, 0.689387798, 69.6117401)
Part247.Orientation = Vector3.new(81.1299973, 180, 90)
Part247.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh248.Parent = Part247
BlockMesh248.Scale = Vector3.new(0.200000003, 0.200000003, 0.5)
BlockMesh248.Scale = Vector3.new(0.200000003, 0.200000003, 0.5)
Part249.Name = "Brick"
Part249.Parent = Model111
Part249.Material = Enum.Material.SmoothPlastic
Part249.BrickColor = BrickColor.new("Lapis")
Part249.Rotation = Vector3.new(-81.1299973, 0, 90)
Part249.Anchored = true
Part249.CanCollide = false
Part249.FormFactor = Enum.FormFactor.Symmetric
Part249.Size = Vector3.new(0.200000003, 0.200000048, 3.76191354)
Part249.CFrame = CFrame.new(85.334816, 2.19723153, 69.8480835, -4.57742686e-07, -1, -1.52042981e-06, 0.154153615, -1.57281283e-06, 0.988046944, -0.988047063, 2.17891056e-07, 0.154153585)
Part249.BottomSurface = Enum.SurfaceType.Smooth
Part249.TopSurface = Enum.SurfaceType.Smooth
Part249.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part249.Position = Vector3.new(85.334816, 2.19723153, 69.8480835)
Part249.Orientation = Vector3.new(-81.1299973, 0, 90)
Part249.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh250.Parent = Part249
BlockMesh250.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh250.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part251.Name = "Brick"
Part251.Parent = Model111
Part251.Material = Enum.Material.SmoothPlastic
Part251.BrickColor = BrickColor.new("Lapis")
Part251.Rotation = Vector3.new(-171.130005, -90, 0)
Part251.Anchored = true
Part251.CanCollide = false
Part251.FormFactor = Enum.FormFactor.Symmetric
Part251.Size = Vector3.new(0.200000003, 0.200000048, 0.200000003)
Part251.CFrame = CFrame.new(85.1451187, 0.752628565, 69.6220932, -4.57742686e-07, 1.889602e-06, -1, 0.154153615, -0.988046944, -1.93757205e-06, -0.988047063, -0.154153585, 1.60981841e-07)
Part251.BottomSurface = Enum.SurfaceType.Smooth
Part251.TopSurface = Enum.SurfaceType.Smooth
Part251.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part251.Position = Vector3.new(85.1451187, 0.752628565, 69.6220932)
Part251.Orientation = Vector3.new(0, -90, 171.130005)
Part251.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh252.Parent = Part251
BlockMesh252.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh252.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part253.Name = "Brick"
Part253.Parent = Model111
Part253.Material = Enum.Material.SmoothPlastic
Part253.BrickColor = BrickColor.new("Lapis")
Part253.Rotation = Vector3.new(-171.130005, -90, 0)
Part253.Anchored = true
Part253.CanCollide = false
Part253.FormFactor = Enum.FormFactor.Symmetric
Part253.Size = Vector3.new(0.200000003, 0.200000048, 0.300000042)
Part253.CFrame = CFrame.new(85.1951294, 0.359328985, 69.561882, -4.57742686e-07, 1.889602e-06, -1, 0.154153615, -0.988046944, -1.93757205e-06, -0.988047063, -0.154153585, 1.60981841e-07)
Part253.BottomSurface = Enum.SurfaceType.Smooth
Part253.TopSurface = Enum.SurfaceType.Smooth
Part253.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part253.Position = Vector3.new(85.1951294, 0.359328985, 69.561882)
Part253.Orientation = Vector3.new(0, -90, 171.130005)
Part253.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh254.Parent = Part253
BlockMesh254.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh254.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part255.Name = "Brick"
Part255.Parent = Model111
Part255.Material = Enum.Material.SmoothPlastic
Part255.BrickColor = BrickColor.new("Really black")
Part255.Rotation = Vector3.new(8.86999989, 90, 0)
Part255.Anchored = true
Part255.CanCollide = false
Part255.FormFactor = Enum.FormFactor.Symmetric
Part255.Size = Vector3.new(0.217680693, 3.71122241, 1.16930699)
Part255.CFrame = CFrame.new(84.7666321, 2.1597805, 69.9367294, -4.57742686e-07, -1.8021799e-06, 1, 0.154153615, 0.988046944, 1.85119518e-06, -0.988047063, 0.154153585, -1.74458279e-07)
Part255.BottomSurface = Enum.SurfaceType.Smooth
Part255.TopSurface = Enum.SurfaceType.Smooth
Part255.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part255.Position = Vector3.new(84.7666321, 2.1597805, 69.9367294)
Part255.Orientation = Vector3.new(0, 90, 8.86999989)
Part255.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh256.Parent = Part255
Part257.Name = "Brick"
Part257.Parent = Model111
Part257.Material = Enum.Material.SmoothPlastic
Part257.BrickColor = BrickColor.new("Pastel Blue")
Part257.Reflectance = 0.20000000298023
Part257.Rotation = Vector3.new(90, 90, 0)
Part257.Anchored = true
Part257.CanCollide = false
Part257.FormFactor = Enum.FormFactor.Symmetric
Part257.Size = Vector3.new(0.200000003, 0.75576061, 0.200000003)
Part257.CFrame = CFrame.new(85.2052994, 2.60081959, 71.120018, -1.85120132e-06, -5.99948677e-08, 1, 0.99999994, 2.66171992e-06, 1.85119575e-06, -2.66171992e-06, 0.99999994, 5.99902847e-08)
Part257.BottomSurface = Enum.SurfaceType.Smooth
Part257.TopSurface = Enum.SurfaceType.Smooth
Part257.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part257.Position = Vector3.new(85.2052994, 2.60081959, 71.120018)
Part257.Orientation = Vector3.new(0, 90, 90)
Part257.Color = Color3.new(0.501961, 0.733333, 0.858824)
BlockMesh258.Parent = Part257
BlockMesh258.Scale = Vector3.new(0.25721249, 1, 0.857374966)
BlockMesh258.Scale = Vector3.new(0.25721249, 1, 0.857374966)
Part259.Name = "1"
Part259.Parent = Model111
Part259.Material = Enum.Material.SmoothPlastic
Part259.BrickColor = BrickColor.new("Pastel Blue")
Part259.Reflectance = 0.20000000298023
Part259.Rotation = Vector3.new(90, 90, 0)
Part259.Anchored = true
Part259.CanCollide = false
Part259.FormFactor = Enum.FormFactor.Symmetric
Part259.Size = Vector3.new(0.200000003, 0.881482005, 0.200000003)
Part259.CFrame = CFrame.new(85.1873627, 2.97467303, 71.1199875, -1.85120132e-06, -5.99948677e-08, 1, 0.99999994, 2.66171992e-06, 1.85119575e-06, -2.66171992e-06, 0.99999994, 5.99902847e-08)
Part259.BottomSurface = Enum.SurfaceType.Smooth
Part259.TopSurface = Enum.SurfaceType.Smooth
Part259.Color = Color3.new(0.501961, 0.733333, 0.858824)
Part259.Position = Vector3.new(85.1873627, 2.97467303, 71.1199875)
Part259.Orientation = Vector3.new(0, 90, 90)
Part259.Color = Color3.new(0.501961, 0.733333, 0.858824)
BlockMesh260.Parent = Part259
BlockMesh260.Scale = Vector3.new(0.300000012, 1, 1)
BlockMesh260.Scale = Vector3.new(0.300000012, 1, 1)
Part261.Name = "Brick"
Part261.Parent = Model111
Part261.Material = Enum.Material.SmoothPlastic
Part261.BrickColor = BrickColor.new("Really black")
Part261.Rotation = Vector3.new(-8.86999989, 90, 0)
Part261.Anchored = true
Part261.CanCollide = false
Part261.FormFactor = Enum.FormFactor.Symmetric
Part261.Size = Vector3.new(0.217680693, 3.71122241, 1.16930699)
Part261.CFrame = CFrame.new(84.7666321, 2.15977883, 72.3222961, 3.44653273e-07, -1.81982534e-06, 1, -0.154159606, 0.98804605, 1.85119666e-06, -0.98804605, -0.154159606, 5.99901497e-08)
Part261.BottomSurface = Enum.SurfaceType.Smooth
Part261.TopSurface = Enum.SurfaceType.Smooth
Part261.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part261.Position = Vector3.new(84.7666321, 2.15977883, 72.3222961)
Part261.Orientation = Vector3.new(0, 90, -8.86999989)
Part261.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh262.Parent = Part261
Part263.Name = "Brick"
Part263.Parent = Model111
Part263.Material = Enum.Material.SmoothPlastic
Part263.BrickColor = BrickColor.new("Really black")
Part263.Rotation = Vector3.new(0, 90, 0)
Part263.Anchored = true
Part263.CanCollide = false
Part263.FormFactor = Enum.FormFactor.Symmetric
Part263.Size = Vector3.new(2.0220542, 2.03246331, 0.909533679)
Part263.CFrame = CFrame.new(84.8275146, 2.97960472, 71.1290741, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part263.BottomSurface = Enum.SurfaceType.Smooth
Part263.TopSurface = Enum.SurfaceType.Smooth
Part263.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part263.Position = Vector3.new(84.8275146, 2.97960472, 71.1290741)
Part263.Orientation = Vector3.new(0, 90, 0)
Part263.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh264.Parent = Part263
Part265.Name = "Brick"
Part265.Parent = Model111
Part265.Material = Enum.Material.SmoothPlastic
Part265.BrickColor = BrickColor.new("Lapis")
Part265.Rotation = Vector3.new(171.130005, -90, 0)
Part265.Anchored = true
Part265.CanCollide = false
Part265.FormFactor = Enum.FormFactor.Symmetric
Part265.Size = Vector3.new(0.200000003, 0.200000048, 0.300000042)
Part265.CFrame = CFrame.new(85.1951294, 0.359324932, 72.6971664, 3.44653273e-07, 1.90724722e-06, -1, -0.154159606, -0.98804605, -1.93757319e-06, -0.98804605, 0.154159606, -4.65132004e-08)
Part265.BottomSurface = Enum.SurfaceType.Smooth
Part265.TopSurface = Enum.SurfaceType.Smooth
Part265.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part265.Position = Vector3.new(85.1951294, 0.359324932, 72.6971664)
Part265.Orientation = Vector3.new(0, -90, -171.130005)
Part265.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh266.Parent = Part265
BlockMesh266.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh266.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part267.Name = "Brick"
Part267.Parent = Model111
Part267.Material = Enum.Material.SmoothPlastic
Part267.BrickColor = BrickColor.new("Lapis")
Part267.Rotation = Vector3.new(171.130005, -90, 0)
Part267.Anchored = true
Part267.CanCollide = false
Part267.FormFactor = Enum.FormFactor.Symmetric
Part267.Size = Vector3.new(0.200000003, 0.200000048, 0.200000003)
Part267.CFrame = CFrame.new(85.1451187, 0.752625465, 72.6368942, 3.44653273e-07, 1.90724722e-06, -1, -0.154159606, -0.98804605, -1.93757319e-06, -0.98804605, 0.154159606, -4.65132004e-08)
Part267.BottomSurface = Enum.SurfaceType.Smooth
Part267.TopSurface = Enum.SurfaceType.Smooth
Part267.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part267.Position = Vector3.new(85.1451187, 0.752625465, 72.6368942)
Part267.Orientation = Vector3.new(0, -90, -171.130005)
Part267.Color = Color3.new(0.0627451, 0.164706, 0.862745)
BlockMesh268.Parent = Part267
BlockMesh268.Scale = Vector3.new(0.200000003, 0.200000003, 1)
BlockMesh268.Scale = Vector3.new(0.200000003, 0.200000003, 1)
Part269.Name = "Brick"
Part269.Parent = Model111
Part269.Material = Enum.Material.SmoothPlastic
Part269.BrickColor = BrickColor.new("Really black")
Part269.Rotation = Vector3.new(0, 90, 0)
Part269.Anchored = true
Part269.CanCollide = false
Part269.FormFactor = Enum.FormFactor.Symmetric
Part269.Size = Vector3.new(1.76480412, 0.974218845, 0.200000003)
Part269.CFrame = CFrame.new(85.182869, 2.57548046, 71.1183243, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part269.BottomSurface = Enum.SurfaceType.Smooth
Part269.TopSurface = Enum.SurfaceType.Smooth
Part269.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part269.Position = Vector3.new(85.182869, 2.57548046, 71.1183243)
Part269.Orientation = Vector3.new(0, 90, 0)
Part269.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh270.Parent = Part269
Part271.Name = "Brick"
Part271.Parent = Model111
Part271.Material = Enum.Material.SmoothPlastic
Part271.BrickColor = BrickColor.new("Really black")
Part271.Rotation = Vector3.new(176.130005, 9.71000004, -179.350006)
Part271.Anchored = true
Part271.CanCollide = false
Part271.FormFactor = Enum.FormFactor.Symmetric
Part271.Size = Vector3.new(1, 0.569770336, 0.200000003)
Part271.CFrame = CFrame.new(84.7381592, 4.22474623, 71.8252945, -0.985605001, 0.0112360846, 0.168690681, -2.17696652e-06, 0.99778825, -0.0664730072, -0.169064477, -0.0655165017, -0.983425081)
Part271.BottomSurface = Enum.SurfaceType.Smooth
Part271.TopSurface = Enum.SurfaceType.Smooth
Part271.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part271.Position = Vector3.new(84.7381592, 4.22474623, 71.8252945)
Part271.Orientation = Vector3.new(3.80999994, 170.270004, 0)
Part271.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh272.Parent = Part271
Part273.Name = "Brick"
Part273.Parent = Model111
Part273.Material = Enum.Material.SmoothPlastic
Part273.BrickColor = BrickColor.new("Really black")
Part273.Rotation = Vector3.new(0, 90, 0)
Part273.Anchored = true
Part273.CanCollide = false
Part273.FormFactor = Enum.FormFactor.Symmetric
Part273.Size = Vector3.new(2.0220542, 2.04569292, 0.909533679)
Part273.CFrame = CFrame.new(84.636734, 2.98868513, 71.1290665, 5.99961609e-08, -1.85120155e-06, 1, -3.37511301e-06, 0.99999994, 1.85119586e-06, -0.99999994, -3.37511301e-06, 5.99902847e-08)
Part273.BottomSurface = Enum.SurfaceType.Smooth
Part273.TopSurface = Enum.SurfaceType.Smooth
Part273.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part273.Position = Vector3.new(84.636734, 2.98868513, 71.1290665)
Part273.Orientation = Vector3.new(0, 90, 0)
Part273.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh274.Parent = Part273
Part275.Name = "Brick"
Part275.Parent = Model111
Part275.Material = Enum.Material.SmoothPlastic
Part275.BrickColor = BrickColor.new("Really black")
Part275.Rotation = Vector3.new(-90, 75.2699966, 90)
Part275.Anchored = true
Part275.CanCollide = false
Part275.FormFactor = Enum.FormFactor.Symmetric
Part275.Size = Vector3.new(0.505757809, 1.79923868, 0.200000003)
Part275.CFrame = CFrame.new(84.115448, 3.10737085, 71.1191025, 5.99961609e-08, -0.254260689, 0.967135847, -3.37511301e-06, 0.967135787, 0.254260719, -0.99999994, -3.27453017e-06, -7.97212124e-07)
Part275.BottomSurface = Enum.SurfaceType.Smooth
Part275.TopSurface = Enum.SurfaceType.Smooth
Part275.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part275.Position = Vector3.new(84.115448, 3.10737085, 71.1191025)
Part275.Orientation = Vector3.new(-14.7299995, 90, 0)
Part275.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh276.Parent = Part275
Part277.Name = "Brick"
Part277.Parent = Model111
Part277.Material = Enum.Material.SmoothPlastic
Part277.BrickColor = BrickColor.new("Navy blue")
Part277.Rotation = Vector3.new(90, 80.4899979, -90)
Part277.Anchored = true
Part277.CanCollide = false
Part277.FormFactor = Enum.FormFactor.Symmetric
Part277.Size = Vector3.new(0.34570837, 0.569770336, 0.200000003)
Part277.CFrame = CFrame.new(83.9343872, 4.21474218, 71.2056961, -8.70278996e-08, 0.165252075, 0.986251473, -4.62681055e-06, 0.986251414, -0.16525206, -0.99999994, -4.57838178e-06, 6.77537173e-07)
Part277.BottomSurface = Enum.SurfaceType.Smooth
Part277.TopSurface = Enum.SurfaceType.Smooth
Part277.Color = Color3.new(0, 0.12549, 0.376471)
Part277.Position = Vector3.new(83.9343872, 4.21474218, 71.2056961)
Part277.Orientation = Vector3.new(9.51000023, 90, 0)
Part277.Color = Color3.new(0, 0.12549, 0.376471)
BlockMesh278.Parent = Part277
Part279.Name = "Brick"
Part279.Parent = Model111
Part279.Material = Enum.Material.SmoothPlastic
Part279.BrickColor = BrickColor.new("Really black")
Part279.Rotation = Vector3.new(0, 90, 0)
Part279.Anchored = true
Part279.CanCollide = false
Part279.FormFactor = Enum.FormFactor.Symmetric
Part279.Size = Vector3.new(0.34570837, 0.569770336, 0.200000003)
Part279.CFrame = CFrame.new(84.1161728, 4.19977188, 71.2057037, -8.70278996e-08, -1.85120132e-06, 1, -4.62681055e-06, 0.99999994, 1.85119541e-06, -0.99999994, -4.62681055e-06, -8.70361063e-08)
Part279.BottomSurface = Enum.SurfaceType.Smooth
Part279.TopSurface = Enum.SurfaceType.Smooth
Part279.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part279.Position = Vector3.new(84.1161728, 4.19977188, 71.2057037)
Part279.Orientation = Vector3.new(0, 90, 0)
Part279.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh280.Parent = Part279
Script281.Name = "Welds"
Script281.Parent = Model0
Script281.Disabled = true
table.insert(cors,sandbox(Script281,function()

game:GetService("Workspace").non.Sonarmor:Destroy()

wait(.33)

Tool=script.Parent
Nib=Tool.Parent

demodel=function()
	for _,v in pairs(script.Parent["RightLeg"]:children()) do
		v.Parent=Nib
	end	
	for _,v in pairs(script.Parent["LeftLeg"]:children()) do
		v.Parent=Nib
	end	
	for _,v in pairs(script.Parent["Torso"]:children()) do
		v.Parent=Nib
	end	
	for _,v in pairs(script.Parent["LeftArm"]:children()) do
		v.Parent=Nib
	end	
	for _,v in pairs(script.Parent["RightArm"]:children()) do
		v.Parent=Nib
	end	
end



weldparts=function()
	print("Welding")
	lel={}
	function jarate(p)
		for i=1, #p do
			table.insert(lel,p[i])
			k=p[i]:children()
			if #k>0 then
				jarate(k)
			end
		end
	end
	for _,v in pairs(script.Parent:children()) do
		if v.Name~="Cloak" and v.className~="Script" then
			v:BreakJoints()
			jarate(v:children())
		end
	end
	for _,v in pairs(lel) do
		if v.className=="Weld" or v.className=="Motor6D" then
			v:Remove()
		end
	end
	for _,v in pairs(script.Parent["RightLeg"]:children()) do
		if v.Name~="Right Leg1" then
			w=Instance.new("Weld")
			w.Part0=script.Parent["RightLeg"]["Right Leg1"]
			w.Part1=v
			w.C1=v.CFrame:inverse()*CFrame.new(v.Position)
			w.C0=script.Parent["RightLeg"]["Right Leg1"].CFrame:inverse()*CFrame.new(v.Position)
			w.Parent=w.Part0
		end
	end
	w=Instance.new("Weld")
	w.Part0=Nib["Right Leg"]
	w.Part1=script.Parent["RightLeg"]["Right Leg1"]
	w.Parent=w.Part0
	w.C0=CFrame.new(0,-.1,0)
	for _,v in pairs(script.Parent["LeftLeg"]:children()) do
		if v.Name~="Left Leg1" then
			w=Instance.new("Weld")
			w.Part0=script.Parent["LeftLeg"]["Left Leg1"]
			w.Part1=v
			w.C1=v.CFrame:inverse()*CFrame.new(v.Position)
			w.C0=script.Parent["LeftLeg"]["Left Leg1"].CFrame:inverse()*CFrame.new(v.Position)
			w.Parent=w.Part0
		end
	end
	w=Instance.new("Weld")
	w.Part0=Nib["Left Leg"]
	w.Part1=script.Parent["LeftLeg"]["Left Leg1"]
	w.Parent=w.Part0
	w.C0=CFrame.new(0,-.1,0)
	for _,v in pairs(script.Parent["RightArm"]:children()) do
		if v.Name~="Right Arm1" then
			w=Instance.new("Weld")
			w.Part0=script.Parent["RightArm"]["Right Arm1"]
			w.Part1=v
			w.C1=v.CFrame:inverse()*CFrame.new(v.Position)
			w.C0=script.Parent["RightArm"]["Right Arm1"].CFrame:inverse()*CFrame.new(v.Position)
			w.Parent=w.Part1
		end
	end
	w=Instance.new("Weld")
	w.Part0=Nib["Right Arm"]
	w.Part1=script.Parent["RightArm"]["Right Arm1"]
	w.Parent=w.Part0
	w.C0 = w.C0 * CFrame.Angles(0,math.rad(90),math.rad(90))
	for _,v in pairs(script.Parent["LeftArm"]:children()) do
		if v.Name~="Left Arm1" then
			w=Instance.new("Weld")
			w.Part0=script.Parent["LeftArm"]["Left Arm1"]
			w.Part1=v
			w.C1=v.CFrame:inverse()*CFrame.new(v.Position)
			w.C0=script.Parent["LeftArm"]["Left Arm1"].CFrame:inverse()*CFrame.new(v.Position)
			w.Parent=w.Part0
		end
	end
	w=Instance.new("Weld")
	w.Part0=Nib["Left Arm"]
	w.Part1=script.Parent["LeftArm"]["Left Arm1"]
	w.Parent=w.Part0
	
	for _,v in pairs(script.Parent["Torso"]:children()) do
		if v.Name~="Torso1" then
			w=Instance.new("Weld")
			w.Part0=script.Parent["Torso"]["Torso1"]
			w.Part1=v
			w.C1=v.CFrame:inverse()*CFrame.new(v.Position)
			w.C0=script.Parent["Torso"]["Torso1"].CFrame:inverse()*CFrame.new(v.Position)
			w.Parent=script.Parent["Torso"]["Torso1"]
		end
	end
	
	w=Instance.new("Weld")
	w.Part0=Nib["Torso"]
	w.Part1=script.Parent["Torso"]["Torso1"]
	w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	for _,v in pairs(lel) do
		if v:IsA("BasePart") then v.Anchored=false end
	end
	
	
	
	wait(1)
	
	w=Instance.new("Weld")
	w.Part0=Nib.Torso
	w.Part1=Tool.Torso.Torso1
	w.C0=CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi)
	w.C1=CFrame.new(0,0,0)
	w.Parent=w.Part1
	w.Name="ClothingWeld"
	
	wait(.06)
	
	while Tool.Torso.Torso1:FindFirstChild("ClothingWeld")==nil do
		wait(.03)
		w=Instance.new("Weld")
		w.Part0=Nib.Torso
		w.Part1=Tool.Torso.Torso1
		w.C0=CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi)
		w.C1=CFrame.new(0,0,0)
		w.Parent=w.Part1
		w.Name="ClothingWeld"
	end
	
	w=Instance.new("Weld")
	w.Part0=Nib["Right Leg"]
	w.Part1=Tool.RightLeg["Right Leg1"]
	w.C0=CFrame.new(0,0,0)
	w.C1=CFrame.new(0,0,0)
	w.Parent=w.Part1
	w.Name="ClothingWeld"
	
	w=Instance.new("Weld")
	w.Part0=Nib["Left Leg"]
	w.Part1=Tool.LeftLeg["Left Leg1"]
	w.C0=CFrame.new(0,0,0)
	w.C1=CFrame.new(0,0,0)
	w.Parent=w.Part1
	w.Name="ClothingWeld"
	
	w=Instance.new("Weld")
	w.Part0=Nib["Right Arm"]
	w.Part1=Tool.RightArm["Right Arm1"]
	w.C0=CFrame.new(0,0,0)
	w.C1=CFrame.new(0,0,0)
	w.Parent=w.Part1
	w.Name="ClothingWeld"
	
	w=Instance.new("Weld")
	w.Part0=Nib["Left Arm"]
	w.Part1=Tool.LeftArm["Left Arm1"]
	w.C0=CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi)
	w.C1=CFrame.new(0,0,0)
	w.Parent=w.Part1
	w.Name="ClothingWeld"
	
	wait()
	
end
weldparts()

wait(.5)
demodel()
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

wait(0.5)
player = game.Players.LocalPlayer
char = player.Character
hmnd = char.Humanoid
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
torso = char.Torso
mouse = player:GetMouse()
lght = game.Lighting
bdclr = char["Body Colors"]
Neck = torso.Neck

-- More variables, just in case.
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
Mouse = player:GetMouse()
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
HDWLD = cf(0,-0.75,-0.45)*angles(0,0,-12.5)
BLDWLD = cf(0,8,0)*angles(0,-44.75,0)
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
player=nil 
mana=0

it = Instance.new

-- Music --

z = it("Sound",char)
z.Looped = true
z.Name = "moosik"
z.SoundId = "rbxassetid://940743619"
z.TimePosition = 30
z.Volume = 0
z:Play()
themeBegan = false
wait(0.5)

function fadeInMusic()
	while z.Volume < 1 do
		wait()
		z.Volume = z.Volume + 0.025
	end
end

delay(0,fadeInMusic)

function restartMusic()
	wait(89.715)
	z.TimePosition = 15.375
	while true do
		wait(104.34)
		z.TimePosition = 15.375
	end
end

delay(0,restartMusic)

-- Functions --

local inv = function()
	while true do
		wait()
		hmnd.MaxHealth = math.huge
		hmnd.Health = math.huge
		if char:FindFirstChild("ForceField") == nil then
			ff = it("ForceField",char)
			ff.Visible = false
		end
	end
end

delay(0,inv)

local snd = function(id,pitch)
	coroutine.resume(coroutine.create(function()
	s = Instance.new("Sound",char)
	s.SoundId = id
	s.Pitch = pitch
	s:Play()
	game.Debris:AddItem(s)
	end))
end

local part = function(name,parent,brkclr,mtrl,rfl,trns,sz)
	prt = it("Part",parent)
	prt.Name = name
	prt.CanCollide = false
	prt.BrickColor = BrickColor.new(brkclr)
	prt.Material = mtrl
	if brkclr == "Black" and mtrl == "Ice" then
		prt.Color = Color3.fromRGB(20,20,75)
	end
	if brkclr == "Black metallic" and mtrl == "SmoothPlastic" then
		prt.Color = Color3.fromRGB(25,25,50)
	end
	prt.Reflectance = rfl
	prt.Transparency = trns
	prt.Size = sz
	prt.Anchored = true
	return prt
end
local mesh = function(meshtype,parent,meshid,textureid,scale)
	msh = it("SpecialMesh",parent)
	if meshtype == "FileMesh" then
		msh.MeshId = meshid
		msh.TextureId = textureid
	end
	msh.MeshType = meshtype
	msh.Scale = scale
	return(msh)
end
local weld = function(part1,part2,x1,y1,z1,x2,y2,z2)
	w = it("Weld",part1)
	w.Part0 = part1
	w.Part1 = part2
	if part1.Anchored or part2.Anchored then
		part1.Anchored = false
		part2.Anchored = false
	end
	w.C0 = (CFrame.new(x1,y1,z1)*CFrame.Angles(math.rad(z2),math.rad(y2),math.rad(x2)))
	return(w)
end
local emit = function(parent,tex,startcolor, endcolor, startsize,endsize,lightem,emdir,lif,rate,speed,rotspeed,sprdang1,sprdang2,locked2part)
	emm = it("ParticleEmitter",parent)
	emm.Texture = tex
	emm.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,startcolor),ColorSequenceKeypoint.new(1,endcolor)})
	emm.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,startsize),NumberSequenceKeypoint.new(1,endsize)})
	emm.LightEmission = lightem
	emm.EmissionDirection = emdir
	emm.Lifetime = NumberRange.new(lif)
	emm.Rate = rate
	emm.Speed = NumberRange.new(speed)
	emm.RotSpeed = NumberRange.new(rotspeed)
	emm.SpreadAngle = Vector2.new(sprdang1,sprdang2)
	emm.LockedToPart = locked2part
	return(emm)
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

local sine = 0
local change = 1
local val = 0

mouse=Player:GetMouse()
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOut(Part)
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


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

-- Character Model --

local md = Instance.new("Model",char)
md.Name = "Scythe"
hnd = part("Handle",md,"Black","Marble",0,0,Vector3.new(0.25,1.5,0.25))
hndwld = weld(rarm,hnd,0,0,0,0,0,0)
fhnd = part("FHandle",md,"Black","Granite",0,0,Vector3.new(2,12.5,2))
mesh("Sphere",fhnd,"","",Vector3.new(0.1,1,0.1))
weld(hnd,fhnd,0,3,0,0,0,0)
p = part("Part",md,"Black","Marble",0,0,Vector3.new(0.25,1.5,0.25))
weld(hnd,p,0,2,0,0,0,0)
p = part("Part",md,"Black","Marble",0,0,Vector3.new(0.25,1.5,0.25))
weld(hnd,p,0,4,0,0,0,0)
p = part("Part",md,"Black","Marble",0,0,Vector3.new(0.25,1.5,0.25))
weld(hnd,p,0,6,0,0,0,0)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.25,0.25,0.25))
mesh("Sphere",p,"","",Vector3.new(1.25,1.25,1.25))
weld(hnd,p,0,7,0,0,0,0)
p = part("Part",md,"Black","Marble",0,0,Vector3.new(0.25,1.5,0.25))
weld(hnd,p,0,8,0,0,0,0)
p = part("Part",md,"Black","Marble",0,0,Vector3.new(0.2,1.25,1.25))
mesh("Cylinder",p,"","",Vector3.new(1,1,1))
weld(hnd,p,0,8,0,0,-45,0)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.25,1.1,1.1))
mesh("Cylinder",p,"","",Vector3.new(1,1,1))
weld(hnd,p,0,8,0,0,-45,0)
bldbs = part("BladeBase",md,"Black","Granite",0,0,Vector3.new(0.5,1,1))
mesh("Sphere",bldbs,"","",Vector3.new(1,1,1))
bldw=weld(hnd,bldbs,0,8,0,0,0,0)
at0 = Instance.new("Attachment",bldbs)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.175,0.5,0.5))
mesh("Wedge",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,-0.05,-0.85,0,0,45)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.175,0.5,0.5))
mesh("Wedge",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,0.05,-0.85,0,0,-135)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.175,0.1,0.365))
weld(bldbs,p,0,0,-0.81,0,0,0)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,1.5,1))
weld(bldbs,p,0,0,-1.5,0,0,0)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,1,0.5))
weld(bldbs,p,0,0.1,-2,0,0,-8.75)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,1.45,1))
weld(bldbs,p,0,-0.15,-2.55,0,0,-11.25)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,1,0.5))
weld(bldbs,p,0,-0.15,-3,0,0,-17.5)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,1.4,1))
weld(bldbs,p,0,-0.45,-3.55,0,0,-22.5)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(1.35,1,0.25))
mesh("Torso",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,-0.95,-4.45,90,-90,-33.75)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,1,0.5))
weld(bldbs,p,0,-0.55,-4.05,0,0,-26.25)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(1.2,1,0.25))
mesh("Torso",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,-1.6,-5.25,90,-90,-45)
at1 = Instance.new("Attachment",p)
scytrl = Instance.new("Trail",bldbs)
scytrl.Attachment0 = at0
scytrl.Attachment1 = at1
scytrl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Really blue").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Really blue").Color)})
scytrl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.25),NumberSequenceKeypoint.new(1,1)})
scytrl.Lifetime = 0.25
scytrl.LightEmission = 0.5
scytrl.Enabled = false
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,1,0.5))
weld(bldbs,p,0,-1.25,-4.9,0,0,-37.5)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,0.6,1))
mesh("Wedge",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,-2.275,-6.125,0,0,-55)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,0.75,0.25))
weld(bldbs,p,0,-1.95,-5.7,0,0,-55.5)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,0.5,1))
weld(bldbs,p,0,-2.575,-5.675,0,0,-55)
p = part("Part",md,"Really blue","Neon",0,0,Vector3.new(0.2,0.25,0.25))
weld(bldbs,p,0,-2.95,-6,0,0,-67.5)
p = part("Part",md,"Black","Ice",0,0,Vector3.new(0.25,0.5,1))
mesh("Wedge",p,"","",Vector3.new(1,1,1))
weld(bldbs,p,0,-3.5,-6.1,0,0,-75)
hitbox = part("Hitbox",md,"Black","Ice",1,1,Vector3.new(2,4,8))
weld(bldbs,hitbox,0,-1.25,-3,0,0,0)
local htp = emit(hitbox,"rbxasset://textures/particles/sparkles_main.dds",BrickColor.new("Really blue").Color,BrickColor.new("Really blue").Color,1,0,1,"Top",1,5000,0.25,0,360,360,false)
htp.Enabled = false

for i,v in pairs(md:children()) do
	NoOut(v)
end

game:GetService("Workspace").non.Scythe.FHandle.Transparency = 1
game:GetService("Workspace").non.Scythe.Handle:Destroy()








-- Animations --

function Animate()
	while true do
wait()
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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
hndwld.C0=clerp(hndwld.C0,HDWLD,.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
hndwld.C0=clerp(hndwld.C0,HDWLD,.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(15),math.rad(0),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
hndwld.C0=clerp(hndwld.C0,HDWLD,.3)
bldw.C0=clerp(bldw.C0,BLDWLD,.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(17.5)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(10),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
hndwld.C0=clerp(hndwld.C0,HDWLD,.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(55),math.rad(0),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(-15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end
end

delay(0,Animate)

-- Attacks --

function HadesSlice()
	attack = false
	Humanoid.WalkSpeed = 8
	wait()
	for _=0,1,0.1 do
		wait()
		hndwld.C0=clerp(hndwld.C0,HDWLD*angles(math.rad(90),math.rad(-90),math.rad(45)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(40)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(120),math.rad(50),math.rad(-70)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
	end
	wait(0.05)
	htp.Enabled = true	
	scytrl.Enabled = true
	scytrl.Lifetime = 1
	snd("rbxassetid://588693579",0.9)
	snd("rbxassetid://588737825",1)
	for _=0,1,0.1 do
		wait()
		hndwld.C0=clerp(hndwld.C0,HDWLD*angles(math.rad(22.5),math.rad(0),math.rad(180)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(60),math.rad(0),math.rad(40)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(10),math.rad(-10)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
	end
	scytrl.Lifetime = 0.25
	scytrl.Enabled = false
	htp.Enabled = false
	wait(0.15)
	attack = false
	Humanoid.WalkSpeed = 16
end

function Teleport()
	attack = true
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	htp.Enabled = true	
	scytrl.Enabled = true
	scytrl.Lifetime = 1
	licht = Instance.new("PointLight",Torso)
	licht.Brightness = 1000
	licht.Range = 0
	licht.Color = BrickColor.new("Really blue").Color
	fx = Instance.new("Part",char)
	fx.Transparency = 1
	fx.Anchored, fx.CanCollide = true, false
	fx.Position = Torso.Position - Vector3.new(0,2,0)
	fx.Size = Vector3.new(25,1,25)
	game.Debris:AddItem(fx,2)
	fxem = emit(fx,"rbxasset://textures/particles/sparkles_main.dds",Color3.new(0,0,1),Color3.new(0,0,1),2.5,0.1,0.875,"Top",1.5,5000,5,200,0,0,false)
	fxem.Enabled = true
	fxem2 = emit(Torso,"rbxasset://textures/particles/sparkles_main.dds",Color3.new(0,0,1),Color3.new(0,0,1),2.5,0.1,1,"Top",1.5,5000,0,200,360,360,false)
	fxem2.Enabled = true
	fxem2.ZOffset = 2
	game.Debris:AddItem(fxem2,3)
	wait()
	for _=0,1,0.1 do
		wait()
		licht.Range = licht.Range + 1
		fx.Rotation = Torso.Rotation + Vector3.new(0,licht.Range*2.5,0)
		hndwld.C0=clerp(hndwld.C0,HDWLD*cf(0,5.75,1.5)*angles(math.rad(-33.75),math.rad(70),math.rad(-22)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(10)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(40),math.rad(0),math.rad(-10)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
	end
	wait(0.15)
	htp.Enabled = true	
	scytrl.Enabled = false
	scytrl.Lifetime = 0.25
	snd("rbxassetid://588734356",0.9)
	snd("rbxassetid://588737825",1)
	pos = Mouse.Hit.p + Vector3.new(0,2,0)
	char.Torso.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
	scytrl.Lifetime = 0.25
	scytrl.Enabled = false
	htp.Enabled = false
	attack = false
	Humanoid.JumpPower = 50
	Humanoid.WalkSpeed = 16
	fxem.Enabled = false
	licht:Destroy()
	fxem2.Speed = NumberRange.new(10)
	fxem2.Enabled = true
	game.Debris:AddItem(fx,2)
	wait(0.25)
	fxem2.Enabled = false
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=="z" and attack == false then
		HadesSlice()
	elseif k=="x" and attack == false then
		Teleport()
	end
end)

local con = hitbox.Touched:connect(function(hit)
	if attack == true then
		if hit.Parent == nil then
			return
		end
		h = hit.Parent:FindFirstChild("Humanoid")
		for _, v in pairs(hit.Parent:children()) do
			if v:IsA("Humanoid") then
				h = v
			end
		end
		if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
			h.Parent:BreakJoints()
		end
	end
end)

local con2 = fhnd.Touched:connect(function(hit)
	if attack == true then
		if hit.Parent == nil then
			return
		end
		h = hit.Parent:FindFirstChild("Humanoid")
		for _, v in pairs(hit.Parent:children()) do
			if v:IsA("Humanoid") then
				h = v
			end
		end
		if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
			h.Parent:BreakJoints()
		end
	end
end)

-- And, one last thing... --

print("Yeox engine loaded.")
wait()
print("Script: Thanatos.")
wait()
print("Have fun.")
