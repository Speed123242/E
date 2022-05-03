game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
game.Players.LocalPlayer.Character.Head.HealthBar:Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://7005139602"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://7005205711"
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy()
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
game.Players.LocalPlayer.Character["HateArm"]:Destroy()

local ClickAnimations = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat
ClickAnimations.Light1.AnimationId = "rbxassetid://6154047231"
ClickAnimations.Light2.AnimationId = "rbxassetid://6154049326"
ClickAnimations.Light3.AnimationId = "rbxassetid://6154050876"
ClickAnimations.Light4.AnimationId = "rbxassetid://6154055740"
ClickAnimations.Light5.AnimationId = "rbxassetid://6154060166"


local player = game.Players.LocalPlayer.Character
local Aura = game.ReplicatedStorage.Resources.Character.Auras.PowerUp

a = Aura:Clone()
a.Parent = player
wait(1)
player.PowerUp.Head.BodyAura.Parent = player.Head
player.PowerUp.Torso.BodyAura.Parent = player.Torso
player.PowerUp["Left Arm"].BodyAura.Parent = player["Left Arm"]
player.PowerUp["Right Arm"].BodyAura.Parent = player["Right Arm"]
player.PowerUp["Left Leg"].BodyAura.Parent = player["Left Leg"]
player.PowerUp["Right Leg"].BodyAura.Parent = player["Right Leg"]

game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 200
    end
end)


local sitstart = Instance.new("Animation") sitstart.AnimationId = "rbxassetid://6821079045" local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart) local sitloop = Instance.new("Animation") sitloop.AnimationId = "rbxassetid://6821100086" local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop) local sitend = Instance.new("Animation") sitend.AnimationId = "rbxassetid://6821115515" local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend) local sitting = false local mouse = game.Players.LocalPlayer:GetMouse() mouse.KeyDown:Connect(function(k) if k == "q" then if sitting == false then sitting = true sitstartplay:Play() wait(1) sitloopplay:Play() elseif sitting == true then sitting = false sitloopplay:Stop() sitendplay:Play() end end end)
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


game.Players.LocalPlayer.Chatted:Connect(function(Chat)
    wait(0.2)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ Brave ]\n' ..Chat, 
          [4] = Color3.fromRGB(255, 0, 0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)


local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "g" then
			
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Character
			local A_3 = 
				{
					["HitTime"] = 0, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
					["Velocity"] = Vector3.new(0, -50, -0), 
					["CombatInv"] = true,
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "g" then
			
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Character
			local A_3 = 
				{
					["HitTime"] = 0, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
					["Velocity"] = Vector3.new(0, -50, -0), 
					["CombatInv"] = true,
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)
 local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "U calling for help...", 
				[4] = Color3.new(0,0,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
wait(3)

local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "BRAVERY COME", 
				[4] = Color3.new(250,100,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
end
end)

 local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(3.5)
char = game.Players.LocalPlayer.Character
local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
vel.Name = 'Client'
vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
vel.P = math.huge
vel.Velocity = (Vector3.new(0,8,0))*4
wait(0.5)
vel:Destroy()
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
local part = Instance.new("Part")
part.Name = "Platform"            -- Name the part... hehe
part.Anchored = true                -- Anchor the part
part.Parent = game.Workspace        -- Put the part into the Workspace
part.Shape = Enum.PartType.Block        -- Give the part a ball shape
part.Transparency = 1
part.Size = Vector3.new(5, 1, 5)
part.Position = playerpos + Vector3.new(0, -5, 0)
stop = false
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://4562533193'-- put id here, with rbxasset thing and everything
k = hum:LoadAnimation(anim)
k:Play()
wait(0.2)
local player = game.Players.LocalPlayer
local char = player.Character
local selfpos = char.HumanoidRootPart.Position
stop = false
for yay = 1, 2 do
spawn(function()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectileYellow", 
    [3] = "Spawn", 
    [4] = Vector3.new(0, 1000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
spawn(function()
wait(2)
part:Destroy()
wait(3)
stop = true
end)
while stop == false do
spawn(function()
for _,v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do 
spawn(function()
v.Name = 'affected'
for _,e in pairs(v:GetChildren()) do 
if e.Name == 'Particle' or e.Name == 'Hitted' or e.Name == 'HitBox' then
e:Destroy()
end
end
v:WaitForChild('BodyVelocity'):Destroy()
local move = Instance.new('BodyPosition',v)
move.Name = 'Client'
move.D = 1000
move.MaxForce = Vector3.new(1,1,1)*1000000
move.P = 25000
spawn(function()
for thing = 1, 100 do
selfpos = char.HumanoidRootPart.Position
move.Position = selfpos
wait(0.2)
end
end)
wait(1)
v:Destroy()
end)
end
end)
wait()
end
end
end)


 local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(6.6)
char = game.Players.LocalPlayer.Character
local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
vel.Name = 'Client'
vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
vel.P = math.huge
vel.Velocity = (Vector3.new(0,8,0))*4
wait(0.5)
vel:Destroy()
char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0, 1, 0)
playerpos = char.HumanoidRootPart.Position + Vector3.new(0, 0, 0)
local part = Instance.new("Part")
part.Name = "Platform"            -- Name the part... hehe
part.Anchored = true                -- Anchor the part
part.Parent = game.Workspace        -- Put the part into the Workspace
part.Shape = Enum.PartType.Block        -- Give the part a ball shape
part.Transparency = 1
part.Size = Vector3.new(5, 1, 5)
part.Position = playerpos + Vector3.new(0, -5, 0)
stop = false
player = game.Players.LocalPlayer
char = player.Character
hum = char:FindFirstChildOfClass('Humanoid')
anim = Instance.new('Animation')
anim.AnimationId = 'rbxassetid://147795898'-- put id here, with rbxasset thing and everything
k = hum:LoadAnimation(anim)
k:Play()
wait(0.2)
local player = game.Players.LocalPlayer
local char = player.Character
local selfpos = char.HumanoidRootPart.Position
stop = false
for yay = 1, 2 do
spawn(function()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectileYellow", 
    [3] = "Spawn", 
    [4] = Vector3.new(0, 1000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
spawn(function()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectileYellow", 
    [3] = "Spawn", 
    [4] = Vector3.new(0, 1000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
spawn(function()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectileYellow", 
    [3] = "Spawn", 
    [4] = Vector3.new(0, 1000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
spawn(function()
local A_1 = 
{
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectileYellow", 
    [3] = "Spawn", 
    [4] = Vector3.new(0, 1000, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
spawn(function()
wait(2)
part:Destroy()
wait(3)
stop = true
end)
while stop == false do
spawn(function()
for _,v in pairs(game.Players.LocalPlayer.Character.Attacks:GetChildren()) do 
spawn(function()
v.Name = 'affected'
for _,e in pairs(v:GetChildren()) do 
if e.Name == 'ParticleEmitter' or e.Name == 'Hitted' or e.Name == 'HitBox' then
e:Destroy()
end
end
v:WaitForChild('BodyVelocity'):Destroy()
local move = Instance.new('BodyPosition',v)
move.Name = 'Client'
move.D = 1000
move.MaxForce = Vector3.new(1,1,1)*1000000
move.P = 250000
spawn(function()
for thing = 1, 100 do
selfpos = char.HumanoidRootPart.Position
move.Position = selfpos
wait(0.2)
end
end)
wait(10)
v:Destroy()
end)
end
end)
wait()
end
end
end)

 local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(6)
local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = "YOU'RE FILLED WITH BRAVERY", 
				[4] = Color3.new(250,100,0)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
end
end)



 local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(15.5)

local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
        child:WaitForChild("Particle"):Destroy()
       table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 20

local radius = 20
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 18
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})


local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) -- listens for child added on the attacks folder
	if child.Name == "YellowBlast" and #slashes <= 0 then -- it's our blast!
		child:WaitForChild("Hitted"):Destroy()
        child:WaitForChild("Particle"):Destroy()
       table.insert(slashes,child) -- we put our slash inside the table
	end
end)
local speed = 0.01
local lradius = 20

local radius = 15
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do -- loop trought it
		if not v or not v.Parent then -- checking if the slash still exist
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})

end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(10.5)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child)
	if child.Name == "YellowBlast" and #slashes <= 0 then 
		child:WaitForChild("Hitted"):Destroy()
        child:WaitForChild("Particle"):Destroy()
       table.insert(slashes,child) 
	end
end)
local speed = 23
local lradius = 20

local radius = 0
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.Torso
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do 
		if not v or not v.Parent then 
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(5,-4,5)})
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "y" then 
wait(12.5)
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child)
	if child.Name == "YellowBlast" and #slashes <= 0 then 
		child:WaitForChild("Hitted"):Destroy()
        child:WaitForChild("Particle"):Destroy()
       table.insert(slashes,child) 
	end
end)
local speed = 23
local lradius = 20

local radius = 0
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = p.Character.Head
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(slashes) do 
		if not v or not v.Parent then 
			table.remove(slashes,i)
			return
		end
		local y = root.Position.Y
		local z = root.Position.Z
		local x = root.Position.X + radius*cos(rad(ts))
		v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
		ts = ts + 5
	end
end)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(5,-4,5)})
end
end)
local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "u" then
			
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Character
			local A_3 = 
				{
					["HitTime"] = 0, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Music3,
					["Velocity"] = Vector3.new(0, -50, -0), 
					["CombatInv"] = true,
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "u" then
			
			local A_1 = getrenv()._G.Pass
			local A_2 = game:GetService("Players").LocalPlayer.Character
			local A_3 = 
				{
					["HitTime"] = 0, 
					["Type"] = "Normal", 
					["HitEffect"] = "BoneHitEffect",
					["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2,
					["Sound"] = game:GetService("ReplicatedStorage").Resources.Sounds.Music3,
					["Velocity"] = Vector3.new(0, -50, -0), 
					["CombatInv"] = true,
					["Damage"] = 0
				}
			local Event = game:GetService("ReplicatedStorage").Remotes.Damage
			Event:InvokeServer(A_1, A_2, A_3)
		end
	end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then 

if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)

amm = 5

for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectile", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
local tab2 = {}
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectile' then
    table.insert(tab2,pp)
am = am + 1
val.Value = am
 pp:WaitForChild('BodyVelocity'):Destroy()
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
for _,v in pairs(tab2) do
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
wait(.5)
for i = 1,#tab do
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
wait()
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectile", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
wait(2)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false

end
end)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then 

if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)

amm = 5

for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileOrange", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
local tab2 = {}
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileOrange' then
    table.insert(tab2,pp)
am = am + 1
val.Value = am
 pp:WaitForChild('BodyVelocity'):Destroy()
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
for _,v in pairs(tab2) do
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
wait(.5)
for i = 1,#tab do
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
wait()
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileOrange", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
wait(2)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false

end
end)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then 

if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)

amm = 5

for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectilePurple", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
local tab2 = {}
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectilePurple' then
    table.insert(tab2,pp)
am = am + 1
val.Value = am
 pp:WaitForChild('BodyVelocity'):Destroy()
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
for _,v in pairs(tab2) do
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
wait(.5)
for i = 1,#tab do
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
wait()
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectilePurple", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
wait(2)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false

end
end)
end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then 

if _G.cdr then return end
_G.cdr = true
pass = getrenv()._G.Pass
player = game.Players.LocalPlayer
m = player:GetMouse()
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
r2 = m.Hit*CFrame.new(0,4,0)
end
char = player.Character
h = char.Humanoid
a = Instance.new('Animation')
a.AnimationId = 'rbxassetid://4905914802'
k = h:LoadAnimation(a)
k:Play()
k:AdjustSpeed(3)

amm = 5

for i = 1,amm,1 do
spawn(function()
local A_1 =  {
      [1] = pass,
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Spawn", 
      [4] = r2.p
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
am = 0
local tab2 = {}
val = Instance.new('NumberValue',player)
val.Name = 'KnifeSlashes Amount'
detect = char.Attacks.ChildAdded:Connect(function(pp)
if pp.Name == 'KnifeSlashProjectileDark' then
    table.insert(tab2,pp)
am = am + 1
val.Value = am
 pp:WaitForChild('BodyVelocity'):Destroy()
end
end)
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function()
if val.Value == amm then
tab = {}
for _,v in pairs(tab2) do
v.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,10,-2)
v1 = Instance.new('BodyPosition',v)
fol = Instance.new('Folder',v1)
v1.Name = 'Client'
v1.MaxForce = Vector3.new(1,1,1)*100000
v1.D = 1000
v1.P = 30000
x = math.random(-10,10)*2
z = math.random(-10,10)*2
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(0,10,0)
table.insert(tab,v1)
v1.Position = (char.HumanoidRootPart.CFrame).p + Vector3.new(x,10,z)
end
wait(.5)
for i = 1,#tab do
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
if LockOn then 
target = LockOn
r2 = target.HumanoidRootPart.CFrame
r1 = target.HumanoidRootPart
elseif not LockOn then
r2 = m.Hit
r1 = m.Target
end
x = math.random(-20,20)
z = math.random(-20,20)
tab[i].D = 150
tab[i].Position = r2.p + Vector3.new(0,-4,0)
tab2[i].CFrame = r2*CFrame.new(x,10,z)
wait()
spawn(function()
local A_1 =  {
      [1] = pass, 
      [2] = "KnifeProjectileDarkRed", 
      [3] = "Hit", 
      [4] = tab2[i], 
      [5] = r2, 
      [6] = r1
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
wait(.1)
end
wait(2)
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
_G.cdr = false

end
end)
end
end)



bravspam = game:GetService("UserInputService").InputBegan:connect(function(key,gp)
    if key.KeyCode == Enum.KeyCode.Zero and not gp then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0)
local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://4562533193"
        local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k2:Play()

wait(0)
k2:AdjustSpeed(0)
for i = 0,1 do
wait(0.5)
spawn(function()
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *1 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)

wait(0.2)
spawn(function()

local projectiles = game.Players.LocalPlayer.Character.Attacks
for i,v in pairs(projectiles:GetChildren()) do
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then

for i,p in pairs(game.Players:GetPlayers()) do
if p ~= game.Players.LocalPlayer then
wait(0.2)
spawn(function()
v.Position = game.Workspace[tostring(p.Name)].LockOn.Position
end)

spawn(function()
for i = 0,500 do
wait()
spawn(function()
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = game:GetService("Players").LocalPlayer.Character.Attacks.KnifeSlashProjectileOrange,
        [5] = game.Workspace[tostring(p)].HumanoidRootPart.CFrame,
        [6] = workspace[tostring(p)].HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))


end)
end
end)


end
end
end
end
end)
end

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
k2:Stop()
end
end)



while true do
wait()
colorr = math.random(1,255)
    colorr2 = math.random(1,255)
    colorr3 = math.random(1,255)
local A_1 = 
{
    [1] = getrenv()._G.Pass,
    [2] = "KnifeColor", 
    [3] = "ChangeColor", 
    [4] = Color3.fromRGB(colorr,colorr2,colorr3), 
    [5] = 0, 
    [6] = "SpecialHell"
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
wait(0.2)
wfc = game:GetService("Players").LocalPlayer.Backpack:WaitForChild('Main')
for i,v in pairs(wfc:GetDescendants()) do
    if v.Name:match("Moves") then
    test = v
end
end
test1 = test['ModuleScript']['Animations']
for i,v in pairs(test:GetDescendants()) do
 
      if v.Name:match("Light") then
    test = v
end
end
colorr = math.random(1,255)
    colorr2 = math.random(1,255)
    colorr3 = math.random(1,255)

SlashColor1 = Color3.fromRGB(colorr,colorr2,colorr3)

            local A_1 =  {
                [1] = getrenv()._G.Pass, 
                [2] = "SlashEffect", 
                [3] = test, 
                [4] = SlashColor1, 
                [5] = CFrame.new(0,2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
          }
          local Event = game:GetService("ReplicatedStorage").Remotes.Events
          Event:FireServer(A_1)
end




