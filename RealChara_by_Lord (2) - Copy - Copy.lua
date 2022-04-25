--// Made by Lord.#9999

--// Use in the menu, and after you spawn just spam 6 so you get the souls already

--[[ CONTROLS:
0: Change form when you have a soul selected (third phase)
1: Determination 1 slash (yes, everytime you press 1 the determination 1 slash will get fired, cause why not?)
P: Changes combat style
Z: Justice Beam
X: Slash Spam
C: Another slash spam
V: Determination barrier and kindness shield
B: Patience 1 and 2
N: Hate Speciall Hell
M: Force it to skip phases
G: Hate ball
H: Stuns forever (closest or locked)
J: Fly someone over the map for a walk
K: Changes kill aura type: Knockback > Deactivated > Active
Numpad 0 Hold: Universe Collapse
Numpad 1: Activates inf combo
Numpad 3: Heal
Numpad +: Increase combat speed
Numpad -: Decrease combat speed
]]

repeat task.wait() until game:IsLoaded()

if getconnections then
	for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
		v:Disable()
	end

	for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
		v:Disable()
	end
end

--// Config

local hideEntire = true -- if true it hides your entire bar
local lolwings = false -- if true it gives you edgy star glitcher wings

--// Services
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local mouse = plr:GetMouse()
local secondPhase = false
local auraThing = true
local setWings = false
local thirdPhase = false
local effDestroyed = false
local universeReset = false
local unstress = false
local currentColor = Color3.new(0,0,0)
local currentForm = "HATE"
local orbiting = {}
local slashes = {}
local wings = {}
local combatStyle = "Chara"
local floorEffectStuff = {FloorEffect=false,yeahThing=false,FloorEDelay=0.19,OnDeb = {}}
local currentScript = nil
local combatSpeed = 0
local adjust = 13
local moduleRequire
local currentAnimTable
local theme
local combatTheme
local idleAnim
local pass = getrenv()._G.Pass
local haha = 13
local debounce = false
local notyet = false
local sparing = {}
local keys = {[Enum.KeyCode.W]=true,[Enum.KeyCode.A]=true,[Enum.KeyCode.S]=true,[Enum.KeyCode.D]=true}
local destroy = {DrainStamina=true,DrainSprint=true,Debounce=true,Hit=true,InvDeleting=true,PerfectBlockCD=true,Inv=true}
local cooldown = false
local killaura = true
local killAura = true
local knockBaack = false
local currentVictim
local animationsFolder
local floorThingy = {}
local module
warn("Made by Lord.#9999 - Brazil Authoritaris")
local function getSpot(p26, p27, p28)
	for v45 = 1, 360 do
		p27 = p27 * CFrame.Angles(0, math.rad(v45), 0);
		local v46, v47 = workspace:FindPartOnRay(Ray.new(p27.p - p27.rightVector, p27.lookVector.unit * p28), p26, false, true);
		local v48, v49 = workspace:FindPartOnRay(Ray.new(p27.p + p27.rightVector, p27.lookVector.unit * p28), p26, false, true);
		if not v46 and not v48 then
			return p27;
		end;
	end;
	return p27;
end;
local function calculate(lock)
	if not lock.Value then
		return CFrame.new(mouse.Hit.p, mouse.Hit.p + plr.Character.HumanoidRootPart.CFrame.lookVector * 5);
	end;
	return CFrame.new(lock.Value.HumanoidRootPart.Position + getSpot(lock.Value, lock.Value.HumanoidRootPart.CFrame, 5).lookVector * 5, lock.Value.HumanoidRootPart.Position);
end
local function teleport()
	local lock = main.LockOnScript.LockOn;
	charaMoves:InvokeServer({ pass, "Teleport", calculate(lock),"Lord"});
end

local function chat(text,color)
	if not color and thirdPhase then
		color = currentColor
	end
	if not color then color = Color3.new(1,0,0) end
	events:FireServer({pass,"Chatted",text,color})
end

plr.Chatted:Connect(function(msg)
	if thirdPhase then
		chat(msg,currentColor)
	end
end)
local function playSound(sound,times)
	pcall(function()
		for i=1,(times or 20) do
			coroutine.resume(coroutine.create(function()
				functions:InvokeServer({pass,"PlaySound",sound})
			end))
		end
	end)
end
local function removeInv(character)
	character.ChildAdded:Connect(function(child)
		if child.Name == "Inv" then
			child.Name = "Sex"
			task.wait()
			child:Destroy()
		end
	end)
	for i,v in pairs(character:GetChildren()) do
		if v.Name == "Inv" then
			v:Destroy()
		end
	end
end
for i,v in pairs(plrs:GetChildren()) do
	if v.Name ~= plr.Name then
		if v.Character then
			removeInv(v.Character)
		end
		v.CharacterAdded:Connect(removeInv)
	end
end
plrs.PlayerAdded:Connect(function(v)
	v.CharacterAdded:Connect(removeInv)
end)
local gotIT
local function testThis()
	for k,v in pairs(getgc()) do
		if type(v) == "function" then
			if getfenv(v).script ~= nil and typeof(getfenv(v).script) == "Instance" and getfenv(v).script == currentScript then
				local b = debug.getupvalues(v)
				pcall(function()
					if not gotIT or gotIT ~= currentScript then
						local info = debug.getinfo(v)
						if info.name and info.name == "takeStamina" then
							gotIT = currentScript
							spawn(function()
								while task.wait(.18) do
									if currentScript and currentScript.Parent then
										v(10000000,0)
									else
										break
									end
								end
							end)
						end
					end
				end)
				for i,v in pairs(b) do
					if typeof(v) == "table" then
						if v["Transformation"] ~= nil or v["SpecialHellV1"] ~= nil or v["Teleport"] ~= nil then
							spawn(function()
								while task.wait(0.205) do
									if currentScript and currentScript.Parent then
										for a,b in pairs(v) do
											v[a] = true
										end
									else
										break
									end
								end
							end)
							return true
						end
					elseif typeof(v) == "Instance" and v:IsA("AnimationTrack") then
						if v.Name == "Walk" or v.Name == "Idle" or v.Name == "Run" or v.Name == "Fall" or v.Name == "Jump" then
							v.Priority = Enum.AnimationPriority.Core
						end
					end
				end
			end
		end
	end
end

local function start(a) -- other people combat
	local script = a:WaitForChild("CharaMoves"):WaitForChild("ModuleScript")
	moduleRequire = require(rep.ClientModules.MainModule)
	local v11 = {};
	local lplr = plr
	local char = lplr.Character or lplr.CharacterAdded:Wait();
	local root = char:WaitForChild("HumanoidRootPart");
	local hum = char:WaitForChild("Humanoid");
	local head = char:WaitForChild("Head");
	local torso = char:WaitForChild("Torso");
	local leftA = char:WaitForChild("Left Arm");
	local rightA = char:WaitForChild("Right Arm");
	local LeftL = char:WaitForChild("Left Leg");
	local rightL = char:WaitForChild("Right Leg");

	local function moveForward(p7, p8)
		local v36, v37
		if p8 then
			v36, v37 = workspace:FindPartOnRay(Ray.new(root.Position, p8), char);
			if v36 then

			else
				return;
			end;
		else
			local v38, v39 = workspace:FindPartOnRay(Ray.new(root.Position, root.CFrame.lookVector.unit * 6), char);
			if v38 then
				p7.Position = v39 - root.CFrame.lookVector * 1;
			end;
			return;
		end;
		if v37 then
			p7.Position = v37 - root.CFrame.lookVector * 1 + Vector3.new(0, 1, 0);
		end
	end;
	function v11.HoverForwardEffect()
		spawn(function()
			local v28 = {};
			for v29, v30 in pairs(workspace:GetChildren()) do
				if v30:FindFirstChild("Humanoid") then
					table.insert(v28, v30);
				end;
			end;
			local v31, v32 = workspace:FindPartOnRayWithIgnoreList(Ray.new(root.Position, Vector3.new(0, -1, 0).unit * 10), v28);
			if v31 then

			end;
		end);
	end;
	local v211 = require(rep.CameraShaker);
	local v222 = v211.new(Enum.RenderPriority.Camera.Value, function(p4)
		workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p4;
	end);
	v222:Start();
	function v11.shakeScreen(p3)
		v222:Shake(v211.Presets[p3]);
	end;
	local anims = Instance.new("Folder")
	anims.Name = "Anims"
	anims.Parent = rep
	local function createAnim(id,name)
		local a = Instance.new("Animation")
		a.AnimationId = "rbxassetid://"..id
		a.Name = name
		a.Parent = anims
		return a
	end
	local combatIds = {4906030889,4906045655,4906056809,4906072632,4906092495,4906104364,4906108508}
	local secondCombatIdsHeavy = {4929676573,4929681477,4929684994,4929688526,4929694407,4929696537}
	local secondCombatIdsLight = {4929661098,4929665831,4929669003,4929670790,4929673252,4929700678,4929723918,4929733967,4929737220}
	local slashIds = {4908451681,4908460879,4908480452,4929786777,4929795262}
	local asrielAir = {4300117017,4300123660,4300185517,4300190994,4300194950,4300200684} 
	local asrielHeavy = {5776249806,5776251749,5776253664,5776256280,5776258610,5776260400}
	local asrielLight = {5776230796,5776233108,5776235173,5776238345,5776240672,5776243290}
	local sakIds = {6154047231,6154049326,6154050876,6154055740,6154060166}
	local truePowerIds = {4612209624,4612151560,4612153931,4612155174,4612156829,4612158434}
	local asrielUpper = 4300091335
	local comb = {}
	local sec = {}
	local slash = {}
	local asrielC = {}
	local truePowerC = {}
	local sakC = {}
	for i,v in pairs(combatIds) do
		comb["Light"..i] = createAnim(v,"IDKLight"..i)
	end
	for i,v in pairs(secondCombatIdsLight) do
		sec["Light"..i] = createAnim(v,"IDKLight"..i)
	end
	for i,v in pairs(secondCombatIdsHeavy) do
		sec["Heavy"..i] = createAnim(v,"IDKHeavy"..i)
	end
	for i,v in pairs(slash) do
		sec["Swing"..i] = createAnim(v,"IDKSwing"..i)
	end
	for i,v in pairs(asrielAir) do
		asrielC["Air"..i] = createAnim(v,"AsrielAir"..i)
	end
	for i,v in pairs(asrielHeavy) do
		asrielC["Heavy"..i] = createAnim(v,"AsrielHeavy"..i)
	end
	for i,v in pairs(asrielLight) do
		asrielC["Light"..i] = createAnim(v,"AsrielLight"..i)
	end
	for i,v in pairs(sakIds) do
		sakC["Light"..i] = createAnim(v,"SakuyaLight"..i)
	end
	for i,v in pairs(truePowerIds) do
		truePowerC["Light"..i] = createAnim(v,"TruePowerLight"..i)
	end
	asrielC["UpperCut"] = createAnim(asrielUpper,"UpperCut")
	v11.Damage = function(p33, p34)
		local l__HumanoidRootPart__50 = p33:WaitForChild("HumanoidRootPart");
		local l__Humanoid__51 = p33:WaitForChild("Humanoid");
		if not plr.Backpack.Main.LockOnScript.LockOn.Value then
			for v52, v53 in pairs(workspace:GetChildren()) do
				if v53:FindFirstChild("HumanoidRootPart") and v53 ~= p33 and (l__HumanoidRootPart__50.Position + l__HumanoidRootPart__50.CFrame.lookVector * 4 - v53.HumanoidRootPart.Position).magnitude <= 5 then
					local data = v53:FindFirstChild("Data")
					if not data then return end
					if data.Blocking.Value then
						p34 = {HitEffect = "HeavyHitEffect", 
							Sound = rep.Sounds.Knockback, 
							Velocity = Vector3.new(0,0,0), 
							Type = "Knockback", 
							HitTime = 2.4, 
							HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
							VictimCFrame = v53.HumanoidRootPart.CFrame, 
							Damage = 10,
							CameraShake = "Bump"}
					end
					if remotes.Damage:InvokeServer(pass, v53, p34,"Lord") then
						return v53;
					else
						break;
					end;
				end;
			end;
			return nil;
		else
			local data = plr.Backpack.Main.LockOnScript.LockOn.Value:FindFirstChild("Data")
			if not data then return end
			if data.Blocking.Value then
				p34 = {HitEffect = "HeavyHitEffect", 
					Sound = rep.Sounds.Knockback, 
					Velocity = Vector3.new(0,0,0), 
					Type = "Knockback", 
					HitTime = 2.4, 
					HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
					VictimCFrame = plr.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame, 
					Damage = 10,
					CameraShake = "Bump"}
			end
			if remotes.Damage:InvokeServer(pass, plr.Backpack.Main.LockOnScript.LockOn.Value, p34,"Lord") then
				return plr.Backpack.Main.LockOnScript.LockOn.Value;
			end;
		end;
	end
	function v11.AsrielCombat(p7)
		local l__Humanoid__40 = char.Humanoid;
		local v41 = asrielC
		if v41[p7] then
			local v42 = l__Humanoid__40:LoadAnimation(v41[p7]);
			if v42.Length <= 0 then
				while true do
					game:GetService("RunService").RenderStepped:wait();
					if v42.Length > 0 then
						break;
					end;			
				end;
			end;
			v42:Play(0.1);
			v42:AdjustSpeed(1.5 + combatSpeed);
			for v43, v44 in pairs(root:GetChildren()) do
				if v44.Name == "Client" then
					v44:Destroy();
				end;
			end;
			local v45 = Instance.new("BodyPosition");
			v45.Name = "Client";
			moduleRequire.CombatAnimation(v42, char, v45);
			local l__LockOn__46 = plr.Backpack.Main.LockOnScript.LockOn;
			if l__LockOn__46.Value then
				root.CFrame = CFrame.new(root.Position, Vector3.new(l__LockOn__46.Value.HumanoidRootPart.Position.X, root.Position.Y, l__LockOn__46.Value.HumanoidRootPart.Position.Z));
			end;
			l__Humanoid__40:ChangeState(Enum.HumanoidStateType.Flying);
			local v47, v48 = game:GetService("Workspace"):FindPartOnRay(Ray.new(root.CFrame.p, Vector3.new(0, -1, 0).unit * 4), char);
			if v47 then
				remotes.Effects:FireServer({pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v48, v48 + root.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
			end;
			v45.MaxForce = Vector3.new(100000, 100000, 100000);
			v45.P = 30000;
			v45.Parent = root;
			local v49 = Instance.new("BodyGyro");
			v49.Name = "Client";
			v49.MaxTorque = Vector3.new(10000, 10000, 10000);
			v49.CFrame = root.CFrame;
			v49.Parent = root;
			local u2 = {};
			pcall(function()
				for v50, v51 in pairs(workspace:GetChildren()) do
					if v51:FindFirstChild("HumanoidRootPart") and v51.Name ~= plr.Name and v51:FindFirstChild("Torso") and v51:FindFirstChild("Head") then
						table.insert(u2, v51.HumanoidRootPart);
						table.insert(u2, v51.Torso);
						table.insert(u2, v51.Head);
						table.insert(u2, v51["Left Arm"]);
						table.insert(u2, v51["Right Arm"]);
						table.insert(u2, v51["Right Leg"]);
						table.insert(u2, v51["Left Leg"]);
					end;
				end;
			end);
			local v52, v53 = workspace:FindPartOnRayWithWhitelist(Ray.new(root.Position, root.CFrame.lookVector.unit * 6), u2);
			if v52 then
				v45.Position = v53 - root.CFrame.lookVector * 1.5;
			else
				v45.Position = root.Position + root.CFrame.lookVector * 6;
			end;

			if p7 == "UpperCut" then
				spawn(function()
					wait(1);
					v42:Stop()
				end)
			end;
			while true do
				if not p7 == "UpperCut" then
					moveForward(v45);
				end;
				wait();
				if v42.Length - 0.3 < v42.TimePosition then
					break;
				end;
				if not v42.isPlaying then
					break;
				end;	
			end;
			if p7 == "UpperCut" then
				wait(.2)
			end
			l__Humanoid__40:ChangeState(Enum.HumanoidStateType.Freefall);
			game.Debris:AddItem(v45, 0.5);
			v49:Destroy();
		end;
	end;
	function v11.SwordCombat(p5)
		local l__Humanoid__37 = char.Humanoid;
		if script.Animations.BladesCombat:FindFirstChild(p5) then
			local v38 = l__Humanoid__37:LoadAnimation(script.Animations.BladesCombat[p5]);
			if v38.Length <= 0 then
				while true do
					game:GetService("RunService").RenderStepped:wait();
					if v38.Length > 0 then
						break;
					end;			
				end;
			end;
			v38:Play(0.1);
			v38:AdjustSpeed(1 + combatSpeed);
			remotes.SwordHandler:FireServer({ pass, "SliceEffect", true, "RealKnife" });
			for v39, v40 in pairs(root:GetChildren()) do
				if v40.Name == "Client" then
					v40:Destroy();
				end;
			end;
			local v41 = Instance.new("BodyPosition");
			v41.Name = "Client";
			moduleRequire.CombatAnimation(v38, char, v41);
			v38.KeyframeReached:Connect(function(p6)
				if p6 == "Slash" then
					if p5 == "Light1" then
						events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing1, Color3.new(1, 0, 0) });
						return;
					end;
					if p5 == "Light2" then
						events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing2, Color3.new(1, 0, 0) });
						return;
					end;
					if p5 == "Light3" then
						events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing1, Color3.new(1, 0, 0) });
						return;
					end;
					if p5 == "Light4" then
						events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing1, Color3.new(1, 0, 0) });
						return;
					end;
					if p5 ~= "Light5" then
						if p5 == "Light6" then
							events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing4, Color3.new(1, 0, 0) });
						end;
						return;
					end;
				else
					return;
				end;
				events:FireServer({ pass, "SlashEffect", script.Animations.Slash.Swing1, Color3.new(1, 0, 0) });
			end);
			local l__LockOn__42 = a.LockOnScript.LockOn;
			if l__LockOn__42.Value then
				root.CFrame = CFrame.new(root.Position, Vector3.new(l__LockOn__42.Value.HumanoidRootPart.Position.X, root.Position.Y, l__LockOn__42.Value.HumanoidRootPart.Position.Z));
			end;
			l__Humanoid__37:ChangeState(Enum.HumanoidStateType.Flying);
			local v43, v44 = game:GetService("Workspace"):FindPartOnRay(Ray.new(root.CFrame.p, Vector3.new(0, -1, 0).unit * 4), char);
			if v43 then
				rep.Remotes.Effects:FireServer({ pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v44, v44 + root.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
			end;
			v41.MaxForce = Vector3.new(100000, 100000, 100000);
			v41.P = 10000;
			v41.Parent = root;
			local v45 = Instance.new("BodyGyro");
			v45.Name = "Client";
			v45.MaxTorque = Vector3.new(10000, 10000, 10000);
			v45.CFrame = root.CFrame;
			v45.Parent = root;
			local v46, v47 = workspace:FindPartOnRay(Ray.new(root.Position, root.CFrame.lookVector.unit * 6), char);
			if v46 then
				v41.Position = v47 - root.CFrame.lookVector * 1.5;
			else
				v41.Position = root.Position + root.CFrame.lookVector * 5;
			end;
			while true do
				moveForward(v41);
				game:GetService("RunService").RenderStepped:wait();
				if v38.Length - 1 < v38.TimePosition/2 then
					break;
				end;	
			end;
			remotes.SwordHandler:FireServer({ pass, "SliceEffect", false, "RealKnife" });
			l__Humanoid__37:ChangeState(Enum.HumanoidStateType.Freefall);
			v41:Destroy();
			v45:Destroy();
		end;
	end;
	function v11.Combat(p11, p12, p13)
		local l__Humanoid__41 = plr.Character.Humanoid;
		local v42 = comb
		if p12 then
			v42 = sec
		end;
		if v42[p11] then
			local v43 = l__Humanoid__41:LoadAnimation(v42[p11]);
			if v43.Length <= 0 then
				while true do
					game:GetService("RunService").RenderStepped:wait();
					if v43.Length > 0 then
						break;
					end;			
				end;
			end;
			v43:Play(0.05);
			if not p12 then
				v43:AdjustSpeed(1.6 + combatSpeed);
			else
				v43:AdjustSpeed(1 + combatSpeed)
			end;
			if p11 == "Heavy6" or p11 == "Light9" then
				v43:AdjustSpeed(0.4 + combatSpeed);
			end;
			for v44, v45 in pairs(root:GetChildren()) do
				if v45.Name == "Client" then
					v45:Destroy();
				end;
			end;
			local v46 = Instance.new("BodyPosition");
			v46.Name = "Client";
			v43.KeyframeReached:Connect(function(p14)
				if p14 == "BurstEffect1" then
					remotes.Effects:FireServer({ pass, "Model", "BurstEffect1", root.CFrame * CFrame.Angles(math.rad(0), math.rad(180), 0) * CFrame.new(0, 0, 4) });
				end;
				if p14 == "BurstEffect2" then
					remotes.Effects:FireServer({ pass, "Model", "BurstEffect2", root.CFrame * CFrame.Angles(math.rad(0), math.rad(180), 0) * CFrame.new(0, 0, 4) });
				end;
				if p14 == "BurstEffect3" then
					remotes.Effects:FireServer({ pass, "Model", "BurstEffect2", root.CFrame * CFrame.Angles(math.rad(-45), math.rad(180), 0) * CFrame.new(0, 0, 4) });
				end;
				if p14 == "1" then
					char.Head:FindFirstChild("Swing2"):Play();
					moveForward(v46);
					if v11.Damage(char, {
						HitEffect = "LightHitEffect", 
						Sound = rep.Sounds.Punch, 
						Position = root.CFrame.Position + root.CFrame.lookVector * 10, 
						Type = "Normal", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 5
						}) then
						v11.shakeScreen("Bump");
						return;
					end;
				elseif p14 == "2" then
					char.Head:FindFirstChild("Swing2"):Play();
					moveForward(v46);
					if v11.Damage(char, {
						HitEffect = "HeavyHitEffect", 
						Sound = { rep.Sounds.Punch, rep.Sounds.Kick }, 
						Position = root.CFrame.Position + root.CFrame.lookVector * 10, 
						Type = "Normal", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 3
						}) then
						v11.shakeScreen("Explosion");
						return;
					end;
				elseif p14 == "3" then
					moveForward(v46);
					v43:AdjustSpeed(0.2);
					local v47 = v11.Damage(char, {
						HitEffect = "HeavyHitEffect", 
						Sound = { rep.Sounds.Knockback, rep.Sounds.Kick }, 
						Velocity = root.CFrame.lookVector * 90, 
						Type = "Knockback", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations.Knockback2, 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 9
					});
					v43:AdjustSpeed(1);
					if v47 then
						v11.shakeScreen("BigExplosion");
						return;
					end;
				elseif p14 == "4" then
					char.Head:FindFirstChild("Swing2"):Play();
					moveForward(v46);
					if v11.Damage(char, {
						HitEffect = "HeavyHitEffect", 
						Sound = { rep.Sounds.Punch, rep.Sounds.Kick }, 
						Position = root.CFrame.Position + root.CFrame.lookVector * 15 + Vector3.new(0, 15, 0), 
						Type = "Normal", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 3
						}) then
						v11.shakeScreen("Explosion");
						return;
					end;
				elseif p14 == "5" then
					char.Head:FindFirstChild("Swing2"):Play();
					moveForward(v46);
					if v11.Damage(char, {
						HitEffect = "HeavyHitEffect", 
						Sound = { rep.Sounds.Punch, rep.Sounds.Kick }, 
						Velocity = Vector3.new(0, -60, 0), 
						Type = "Knockback", 
						HitTime = 0.1, 
						HurtAnimation = rep.Animations.HurtAnimations.Knockback2, 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 3
						}) then
						v11.shakeScreen("Explosion");
						return;
					end;
				elseif p14 == "6" then
					char.Head:FindFirstChild("Swing2"):Play();
					moveForward(v46);
					if v11.Damage(char, {
						HitEffect = "LightHitEffect", 
						Sound = rep.Sounds.Punch, 
						Position = root.CFrame.Position + root.CFrame.lookVector * 10, 
						Type = "Normal", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6 + Vector3.new(0, 6, 0), 
						Damage = 5
						}) then
						v11.shakeScreen("Bump");
					end;
				end;
			end);
			local l__LockOn__48 = plr.Backpack.Main.LockOnScript.LockOn;
			if l__LockOn__48.Value then
				root.CFrame = CFrame.new(root.Position, Vector3.new(l__LockOn__48.Value.HumanoidRootPart.Position.X, root.Position.Y, l__LockOn__48.Value.HumanoidRootPart.Position.Z));
			end;
			l__Humanoid__41:ChangeState(Enum.HumanoidStateType.Flying);
			local v49, v50 = game:GetService("Workspace"):FindPartOnRay(Ray.new(root.CFrame.p, Vector3.new(0, -1, 0).unit * 4), char);
			if v49 then
				remotes.Effects:FireServer({ pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v50, v50 + root.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
			end;
			v46.MaxForce = Vector3.new(100000, 100000, 100000);
			v46.P = 100000;
			v46.Parent = root;
			local v51 = Instance.new("BodyGyro");
			v51.Name = "Client";
			v51.MaxTorque = Vector3.new(10000, 10000, 10000);
			v51.CFrame = root.CFrame;
			v51.Parent = root;
			local v52, v53 = workspace:FindPartOnRay(Ray.new(root.Position, root.CFrame.lookVector.unit * 6), char);
			if v52 then
				v46.Position = v53 - root.CFrame.lookVector * 1.5;
			else
				v46.Position = root.Position + root.CFrame.lookVector * 5;
			end;
			local u2 = 1;
			if p11 == "Heavy6" or p11 == "Light9" then

				spawn(function()
					wait(0.25);
					u2 = 0;
				end);
			end;
			while true do
				if p11 == "Heavy6" or p11 == "Light9" then
					moveForward(v46, root.CFrame.lookVector * 40 + Vector3.new(0, 40, 0));
					moveForward(v46);
				else
					moveForward(v46);
				end;
				game:GetService("RunService").RenderStepped:wait();
				if v43.Length - 0.16 < v43.TimePosition and u2 == 0 then
					break;
				end;
				if not v43.isPlaying then
					break;
				end;	
			end;
			if p11 == "Heavy5" or p11 == "Light8" then
				wait(0.3);
			end;
			v43:AdjustSpeed(0.8 + combatSpeed);
			if p12 then
				remotes.SwordHandler:FireServer({ pass, "SliceEffect", false, "ChaosSaber" });
			end;
			game.Debris:AddItem(v46, 0.5);
			v51:Destroy();
		end;
	end;
	function v11.SakuyaCombat(p13, p14)
		local l__Humanoid__41 = char.Humanoid;
		local l__Combat__42 = sakC
		if l__Combat__42[p13] then
			local v43 = l__Humanoid__41:LoadAnimation(l__Combat__42[p13]);
			if v43.Length <= 0 then
				while true do
					game:GetService("RunService").RenderStepped:wait();
					if v43.Length > 0 then
						break;
					end;			
				end;
			end;
			spawn(function()
				remotes.XSansMoves:InvokeServer({pass, "PlaySound", game.ReplicatedStorage.Sounds.KnifeSwoosh });
			end);
			v43:Play(0.05);
			v43:AdjustSpeed(1.3 + combatSpeed);
			if p13 == "Light1" then
				v43:AdjustSpeed(1.6);
			end;
			for v44, v45 in pairs(root:GetChildren()) do
				if v45.Name == "Client" then
					v45:Destroy();
				end;
			end;
			local v46 = Instance.new("BodyPosition");
			v46.Name = "Client";
			local u2 = {};
			pcall(function()
				for v47, v48 in pairs(workspace:GetChildren()) do
					if v48:FindFirstChild("HumanoidRootPart") and v48.Name ~= plr.Name and v48:FindFirstChild("Torso") and v48:FindFirstChild("Head") then
						table.insert(u2, v48.HumanoidRootPart);
						table.insert(u2, v48.Torso);
						table.insert(u2, v48.Head);
						table.insert(u2, v48["Left Arm"]);
						table.insert(u2, v48["Right Arm"]);
						table.insert(u2, v48["Right Leg"]);
						table.insert(u2, v48["Left Leg"]);
					end;
				end;
			end);
			v43.KeyframeReached:Connect(function(p15)
				if p15 == "1" then
					spawn(function()
						remotes.Functions:InvokeServer({pass, "PlaySound", game.ReplicatedStorage.Sounds.Swing2 });
					end);
					moveForward(v46, nil, u2);
					if v11.Damage(char, {
						HitEffect = "LightHitEffect", 
						Sound = rep.Sounds.Punch2, 
						Velocity = root.CFrame.lookVector * 5, 
						Type = "Normal", 
						HitTime = 0.5, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 2
						}) then
						v11.shakeScreen("Bump");
						return;
					end;
				elseif p15 == "2" then
					moveForward(v46, nil, u2);
					spawn(function()
						remotes.Functions:InvokeServer({pass, "PlaySound", game.ReplicatedStorage.Sounds.KnifeSw });
					end);	
					if v11.Damage(char, {
						HitEffect = "KnifeHitEffect", 
						Sound = rep.Sounds.SwordHit, 
						Velocity = root.CFrame.lookVector * 5, 
						Type = "Normal", 
						HitTime = 0.5, 
						HurtAnimation = rep.Animations.HurtAnimations["Hurt" .. math.random(1, 3)], 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 4
						}) then
						v11.shakeScreen("Explosion");
						return;
					end;
				elseif p15 == "3" then
					spawn(function()
						remotes.Functions:InvokeServer({pass, "PlaySound", game.ReplicatedStorage.Sounds.Swing2 });
					end);
					moveForward(v46, nil, u2);
					v43:AdjustSpeed(0.2);
					local v49 = v11.Damage(char, {
						HitEffect = "BiggerBurstEffect", 
						Sound = { rep.Sounds.Knockback, rep.Sounds.Kick }, 
						Velocity = root.CFrame.lookVector * 90, 
						Type = "Knockback", 
						HitTime = 1, 
						HurtAnimation = rep.Animations.HurtAnimations.Knockback2, 
						VictimCFrame = root.CFrame * CFrame.Angles(0, math.rad(180), 0) + root.CFrame.lookVector * 6, 
						Damage = 4
					});
					v43:AdjustSpeed(1);
					if v49 then
						v11.shakeScreen("BigExplosion");
					end;
				end;
			end);
			local l__LockOn__50 = plr.Backpack.Main.LockOnScript.LockOn;
			if l__LockOn__50.Value then
				root.CFrame = CFrame.new(root.Position, Vector3.new(l__LockOn__50.Value.HumanoidRootPart.Position.X, root.Position.Y, l__LockOn__50.Value.HumanoidRootPart.Position.Z));
			end;
			l__Humanoid__41:ChangeState(Enum.HumanoidStateType.Flying);
			local v51, v52 = game:GetService("Workspace"):FindPartOnRay(Ray.new(root.CFrame.p, Vector3.new(0, -1, 0).unit * 4), char);
			if v51 then
				rep.Remotes.Effects:FireServer({pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v52, v52 + root.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
			end;
			v46.Position = root.Position;
			v46.MaxForce = Vector3.new(100000, 100000, 100000);
			v46.P = 30000;
			v46.Parent = root;
			local v53 = Instance.new("BodyGyro");
			v53.Name = "Client";
			v53.MaxTorque = Vector3.new(10000, 10000, 10000);
			v53.CFrame = root.CFrame;
			v53.Parent = root;
			local v54, v55 = workspace:FindPartOnRayWithWhitelist(Ray.new(root.Position, root.CFrame.lookVector.unit * 10), u2);
			if v54 then
				v46.Position = v55 - root.CFrame.lookVector * 1.5;
			else
				v46.Position = root.Position + root.CFrame.lookVector * 10;
			end;
			while true do
				moveForward(v46, nil, u2);
				game:GetService("RunService").RenderStepped:wait();
				if v43.Length - 0.05 < v43.TimePosition then
					break;
				end;
				if not v43.isPlaying then
					break;
				end;	
			end;
			l__Humanoid__41:ChangeState(Enum.HumanoidStateType.Freefall);
			v43:AdjustSpeed(0.8 + combatSpeed);
			game.Debris:AddItem(v46, 0.5);
			v53:Destroy();
		end;
	end;
	function v11.TruePowerCombat(p9)
		local l__Humanoid__40 = char.Humanoid;
		local v41 = truePowerC
		if v41[p9] then
			local v42 = l__Humanoid__40:LoadAnimation(v41[p9]);
			if v42.Length <= 0 then
				while true do
					game:GetService("RunService").RenderStepped:wait();
					if v42.Length > 0 then
						break;
					end;			
				end;
			end;
			v42:Play(0.1);
			v42:AdjustSpeed(2 + combatSpeed);
			for v43, v44 in pairs(root:GetChildren()) do
				if v44.Name == "Client" then
					v44:Destroy();
				end;
			end;
			local v45 = Instance.new("BodyPosition");
			v45.Name = "Client";
			v42.KeyframeReached:Connect(function(k)
				if k == "BettyGrab" then
					local c = a.LockOnScript.LockOn.Value
					if c then
						remotes.Damage:InvokeServer(pass,c,{HitEffect = "HeavyHitEffect", 
							Sound = rep.Sounds.Knockback, 
							Velocity = Vector3.new(0,0,0), 
							Type = "Normal", 
							HitTime = 2.4, 
							HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
							VictimCFrame = c.HumanoidRootPart.CFrame, 
							Damage = 10,
							CameraShake = "Bump"},"Lord")
						charaMoves:InvokeServer({pass,"PatienceAttack2",c.HumanoidRootPart.Position,c})
					end
				end
			end)
			moduleRequire.CombatAnimation(v42, char, v45);
			local l__LockOn__46 = plr.Backpack.Main.LockOnScript.LockOn;
			if l__LockOn__46.Value then
				root.CFrame = CFrame.new(root.Position, Vector3.new(l__LockOn__46.Value.HumanoidRootPart.Position.X, root.Position.Y, l__LockOn__46.Value.HumanoidRootPart.Position.Z));
			end;
			l__Humanoid__40:ChangeState(Enum.HumanoidStateType.Flying);
			local v47, v48 = game:GetService("Workspace"):FindPartOnRay(Ray.new(root.CFrame.p, Vector3.new(0, -1, 0).unit * 4), char);
			if v47 then
				rep.Remotes.Effects:FireServer({pass, "Particle", "SmallForwardSmokeParticle", CFrame.new(v48, v48 + root.CFrame.lookVector * 10) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.1 });
			end;
			v45.MaxForce = Vector3.new(100000, 100000, 100000);
			v45.P = 30000;
			v45.Parent = root;
			local v49 = Instance.new("BodyGyro");
			v49.Name = "Client";
			v49.MaxTorque = Vector3.new(10000, 10000, 10000);
			v49.CFrame = root.CFrame;
			v49.Parent = root;
			local u3 = {};
			pcall(function()
				for v50, v51 in pairs(workspace:GetChildren()) do
					if v51:FindFirstChild("HumanoidRootPart") and v51.Name ~= plr.Name and v51:FindFirstChild("Torso") and v51:FindFirstChild("Head") then
						table.insert(u3, v51.HumanoidRootPart);
						table.insert(u3, v51.Torso);
						table.insert(u3, v51.Head);
						table.insert(u3, v51["Left Arm"]);
						table.insert(u3, v51["Right Arm"]);
						table.insert(u3, v51["Right Leg"]);
						table.insert(u3, v51["Left Leg"]);
					end;
				end;
			end);
			local v52, v53 = workspace:FindPartOnRayWithWhitelist(Ray.new(root.Position, root.CFrame.lookVector.unit * 10), u3);
			if v52 then
				v45.Position = v53 - root.CFrame.lookVector * 1.5;
			elseif p9 ~= "Light2" then
				v45.Position = root.Position + root.CFrame.lookVector * 20;
			else
				v45.Position = root.Position + root.CFrame.lookVector * 10;
			end;
			while true do
				moveForward(v45, nil, u3);
				game:GetService("RunService").RenderStepped:wait();
				if v42.Length - 0.16 < v42.TimePosition then
					break;
				end;
				if not v42.isPlaying then
					break;
				end;		
			end;
			v42:AdjustSpeed(0.8 + combatSpeed);
			l__Humanoid__40:ChangeState(Enum.HumanoidStateType.Freefall);
			game.Debris:AddItem(v45, 0.5);
			v49:Destroy();
		end;
	end;
	moduleRequire.SwordCombat = v11.SwordCombat
	local u16 = true;
	local combatL = 0;
	local combatH = 0;
	local combatS = 0;
	local asrielH = 0;
	local sak = 0
	local asrielL = 0
	local airC = false
	local u18 = 0;
	local u19 = 0;
	local set = false
	local R = false
	local L = false
	local current
	game:GetService("UserInputService").InputBegan:Connect(function(i,s)
		if s then return end
		if combatStyle == "Asriel" then
			if i.UserInputType == Enum.UserInputType.MouseButton1 and not airC then
				L = true;
				delay(0.1, function()
					L = false;
				end);
			elseif i.UserInputType == Enum.UserInputType.MouseButton2 and not airC then
				R = true;
				delay(0.1, function()
					R = false;
				end);
			end;
		end
		if (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.MouseButton2) and not cooldown then
			killAura = false
			cooldown = true
			killAura = false
			local cancel = false
			local v42

			if combatStyle == "IDK" then
				if i.UserInputType == Enum.UserInputType.MouseButton1 then
					combatL = combatL + 1
					v42 = "Light" .. combatL;
				elseif i.UserInputType == Enum.UserInputType.MouseButton2 and combatL >= 1 then
					combatH = combatH + 1;
					v42 = "Heavy" .. combatH;
				else
					cancel = true
					cooldown = false
					killAura = true
					return
				end
			elseif combatStyle == "Asriel" then
				if i.UserInputType == Enum.UserInputType.MouseButton1 or airC then
					asrielL = asrielL + 1;
					v42 = "Light" .. asrielL;
					if airC then
						v42 = "Air" .. asrielL;
					else
						L = true;
					end;
				elseif i.UserInputType == Enum.UserInputType.MouseButton2 and asrielL >= 1 then
					asrielH = asrielH + 1;
					v42 = "Heavy" .. asrielH;
					R = true;
				else
					cancel = true
					cooldown = false
					killAura = true
					return
				end;
				wait(.04)
				if L and R then
					v42 = "UpperCut";
					airC = true;
					asrielL = 0;
					asrielH = 0;
					L = false;
					R = false;
				end;
				L = false;
				R = false;
			elseif (combatStyle == "Chara" or combatStyle == "TruePower") and i.UserInputType == Enum.UserInputType.MouseButton1 then
				combatS = combatS + 1
				v42 = "Light"..combatS
			elseif combatStyle == "Sak" and i.UserInputType == Enum.UserInputType.MouseButton1 then
				sak = sak + 1
				v42 = "Light"..sak
			end
			warn(v42)
			if cancel == true then cooldown = false killAura = true return end
			v11.HoverForwardEffect();
			pcall(function()
				if combatStyle == "IDK" then
					v11.Combat(v42,secondPhase)
				elseif combatStyle == "Asriel" then
					local s,e = pcall(function()
						v11.AsrielCombat(v42)
					end)
					warn(s,e)
				elseif combatStyle == "Chara" then
					v11.SwordCombat(v42)
				elseif combatStyle == "Sak" then
					v11.SakuyaCombat(v42)
				elseif combatStyle == "TruePower" then
					v11.TruePowerCombat(v42)
				end
			end)
			if combatL == 9 then
				combatL = 0
			end
			if combatH == 6 then
				combatH = 0
			end
			if combatS == 6 then
				combatS = 0
			end
			if asrielL == 6 then
				asrielL = 0;
				airC = false
			end
			if asrielH == 6 then
				asrielH = 0
				airC = false
			end
			if sak == 5 then
				sak = 0
			end
			current = v42
			spawn(function()
				wait(2)
				if current == v42 and not cooldown then
					combatL = 0
					combatH = 0
					asrielL = 0
					asrielH = 0
					sak = 0
				end
			end)
			killAura = false
			task.wait(.08)
			cooldown = false
			killAura = false
			killAura = true
		elseif i.KeyCode == Enum.KeyCode.P then
			if combatStyle == "Chara" then
				combatStyle = "IDK"
				pcall(function()
					moduleRequire.SwordCombat = function() return true end
					moduleRequire.HoverForwardEffect = function() return true end
				end)
				if not combatTheme then
					combatTheme = Instance.new("Sound")
					combatTheme.SoundId = "rbxassetid://7337985832"
					combatTheme.Looped = true
					combatTheme.Parent = script
				end
				theme.Volume = 0
				combatTheme.Volume = 2
				combatTheme.TimePosition = 179.5
				combatTheme:Play()
			elseif combatStyle == "IDK" then
				combatStyle = "Asriel"
			elseif combatStyle == "Asriel" then
				combatStyle = "Sak"
			elseif combatStyle == "Sak" then
				combatStyle = "TruePower"
			elseif combatStyle == "TruePower" then
				combatStyle = "Chara"
				theme.Volume = 2.5
				combatTheme:Stop()
				pcall(function()
					moduleRequire.SwordCombat = v11.SwordCombat
					moduleRequire.HoverForwardEffect = function() return true end
				end)
			end
			chat("[COMBAT_STYLE]: "..combatStyle)
		elseif i.KeyCode == Enum.KeyCode.KeypadOne then
			if not set then

				sec["Light9"] = sec["Light2"]
				sec["Heavy6"] = sec["Heavy2"]
				asrielC["Air6"] = asrielC["Air2"]
				asrielC["Heavy6"] = asrielC["Heavy2"]
				asrielC["Light6"] = asrielC["Light2"]
				sakC["Light5"] = sakC["Light2"]
				truePowerC["Light6"] = truePowerC["Light2"]
				set = true
				chat("[INF_COMBO]: TRUE")
			else
				sec["Light9"] = anims["IDKLight9"]
				sec["Heavy6"] = anims["IDKHeavy6"]
				asrielC["Air6"] = anims["AsrielAir6"]
				asrielC["Heavy6"] = anims["AsrielHeavy6"]
				asrielC["Light6"] = anims["AsrielLight6"]
				sakC["Light5"] = anims["SakuyaLight5"]
				truePowerC["Light6"] = anims["TruePowerLight6"]
				set = false
				chat("[INF_COMBO]: FALSE")
			end

		end
	end)
end
local bruhhhhh = Instance.new("Animation")
bruhhhhh.AnimationId = "rbxassetid://4456901030"
local inputBegan = {
	[Enum.KeyCode.One] = function()
		if not debounce and main.LockOnScript.LockOn.Value then
			debounce = true
			task.wait(.13)
			for i=1,6 do
				pcall(function()
					charaMoves:InvokeServer({ pass , "KnifeProjectile", "Spawn", main.LockOnScript.LockOn.Value.Torso.Position});
				end)
				task.wait(.08)
			end
			debounce = false
		end
	end,
	[Enum.KeyCode.Z] = function()
		charaMoves:InvokeServer({pass,"YellowBeam","Fire"})
	end,
	[Enum.KeyCode.KeypadZero] = function()
		if not debounce then
			debounce = true
			local anim = Instance.new("Animation")
			anim.AnimationId = "rbxassetid://3197645614"
			anim = plr.Character.Humanoid:LoadAnimation(anim)
			anim.KeyframeReached:Connect(function(k)
				if k == "Pause" then
					anim:AdjustSpeed(0)
				end
			end)
			local root = plr.Character.HumanoidRootPart
			anim:Play()
			chat("UNIVERSE RESET!",Color3.new(1,1,0))
			universeReset = true
			for i,v in pairs(root:GetChildren()) do
				if v.Name == "Client" or v.Name == "Server" then
					v.Parent = nil
				end
			end
			local bodyPos = Instance.new("BodyPosition")
			bodyPos.Name = "Client"
			bodyPos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bodyPos.Position = root.Position
			bodyPos.Parent = root
			tweenS:Create(bodyPos,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position = root.Position + Vector3.new(0,30,0)}):Play()
			task.wait(1)
			spawn(function()
				for i=1,4 do
					charaMoves:InvokeServer({ pass , "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
					task.wait(.2)
				end
			end)
			task.wait(1.2)
			chat("COLLAPSE!",Color3.new(1,1,0))
			while uis:IsKeyDown(Enum.KeyCode.KeypadZero) do
				charaMoves:InvokeServer({ pass , "KnifeProjectileOrange", "Spawn",Vector3.new(0,0,0)})
				for i,p in pairs(plrs:GetPlayers()) do
					if p.Name ~= plr.Name and p.Character and p.Character:FindFirstChildOfClass("Humanoid") then
						local ptorso = p.Character.Torso
						currentVictim = ptorso
						task.wait(0.2)
					end
				end
				for i,v in pairs(slashes) do
					v:Destroy()
					table.remove(slashes,i)
				end
			end
			chat("What do you think of that?",Color3.new(1,1,0))
			anim:AdjustSpeed(1)
			bodyPos:Destroy()
			universeReset = false
			for i,v in pairs(orbiting) do
				game.Debris:AddItem(v,5)
			end
			orbiting = {}
			currentVictim = nil
			debounce = false
		end
	end,
	[Enum.KeyCode.X] = function()
		if not debounce then
			debounce = true
			chat("Escape this.")
			wait(0.3)
			playSound(rep.Resources.Sounds.Moves.SpecialHell2.Charge)
			local pos
			if main.LockOnScript.LockOn.Value then
				pos = main.LockOnScript.LockOn.Value.Torso.Position
			else
				pos = mouse.Hit.p
			end
			for i=1,35 do
				pcall(function()
					charaMoves:InvokeServer({ pass , "KnifeProjectile", "Spawn", pos});
				end)
				task.wait(.065)
			end
			debounce = false
		end
	end,
	[Enum.KeyCode.R] = function()
		teleport()
	end,
	[Enum.KeyCode.C] = function()
		if not debounce then
			debounce = true
			playSound(rep.Resources.Sounds.Moves.SpecialHell2.Fire,9)
			local pos
			if main.LockOnScript.LockOn.Value then
				pos = main.LockOnScript.LockOn.Value.Torso.Position
			else
				pos = mouse.Hit.p
			end
			for i=1,10 do
				pcall(function()
					charaMoves:InvokeServer({ pass , "KnifeProjectilePurple", "Spawn", pos});
				end)
				task.wait(.16)
				pcall(function()
					charaMoves:InvokeServer({pass,"KnifeProjectileDarkRed","Spawn",pos})
				end)
				task.wait(.16)
			end
			debounce = false
		end
	end,
	[Enum.KeyCode.V] = function()
		charaMoves:InvokeServer({pass,"DTShield"})
		if not hideEntire then
			charaMoves:InvokeServer({pass,"KnifeShield",true})
			wait(6)
			charaMoves:InvokeServer({pass,"KnifeShield",false})
		end
	end,
	[Enum.KeyCode.B] = function()
		if plr.Backpack.Main.LockOnScript.LockOn.Value then
			local c = plr.Backpack.Main.LockOnScript.LockOn.Value
			charaMoves:InvokeServer({pass,"PatienceAttack",c.HumanoidRootPart.Position,c})
			charaMoves:InvokeServer({pass,"PatienceAttack2",c.HumanoidRootPart.Position,c})
		end
	end,
	[Enum.KeyCode.N] = function()
		coroutine.resume(coroutine.create(function()
			charaMoves:InvokeServer({pass,"SpecialHell2"})
		end))
	end,
	[Enum.KeyCode.G] = function()
		coroutine.resume(coroutine.create(function()
			charaMoves:InvokeServer({pass,"HateBall","Start"})
		end))
	end,
	[Enum.KeyCode.KeypadPlus] = function()
		chat("[INCREASE_SPEED]")
		combatSpeed = combatSpeed + 0.2
		if combatSpeed > 5 then
			combatSpeed = 5
		end
		game.StarterGui:SetCore("SendNotification", {
			Title = "Increased Speed";
			Text = "Combat speed modifier: "..combatSpeed;
			Duration = 3;
		})
	end,
	[Enum.KeyCode.KeypadMinus] = function()
		chat("[DECREASE_SPEED]")
		combatSpeed = combatSpeed - 0.2
		if combatSpeed < 0 then
			combatSpeed = 0
		end
		game.StarterGui:SetCore("SendNotification", {
			Title = "Increased Speed";
			Text = "Combat speed modifier: "..combatSpeed;
			Duration = 3;
		})
	end,
	[Enum.KeyCode.K] = function()
		if killaura and knockBaack then
			killaura = false
			killAura = false
			knockBaack = false
			chat("[KILL_AURA]: FALSE",currentColor)
		elseif not killaura and not knockBaack then
			killaura = true
			killAura = true
			chat("[KILL_AURA]: TRUE",currentColor)
		elseif killaura and not knockBaack then
			knockBaack = true
			chat("[KNOCKBACK]: TRUE",currentColor)
		end
	end,
	[Enum.KeyCode.M] = function()
		local b = plr.Character.Humanoid.Health
		for i=1,2 do
			plr.Character.Humanoid.Health = 0
			task.wait(.01)
		end
		plr.Character.Humanoid.Health = b
		plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
	end,
	[Enum.KeyCode.KeypadThree] = function()
		if not lolwings then
			charaMoves:InvokeServer({pass,"KnifeHeal"})
		end
	end,
	[Enum.KeyCode.J] = function()
		if plr.Backpack.Main.LockOnScript.LockOn.Value then
			plr.Character:SetPrimaryPartCFrame(plr.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame * CFrame.new(0,0,1))
			wait(0.08)
			plr.Character.Humanoid:LoadAnimation(bruhhhhh):Play()
			remotes.Damage:InvokeServer(pass,plr.Backpack.Main.LockOnScript.LockOn.Value,{HitEffect = "HeavyHitEffect", 
				Sound = rep.Sounds.Knockback, 
				Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 150 + Vector3.new(0,40,0), 
				Type = "Knockback", 
				HitTime = 2.4, 
				HurtAnimation = rep.Animations.HurtAnimations.Knockback2, 
				VictimCFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(180), 0) + plr.Character.HumanoidRootPart.CFrame.lookVector * 1, 
				Damage = 10,
				CameraShake = "Bump"},"Lord")
		end
	end,
	[Enum.KeyCode.H] = function()
		if not debounce and not cooldown then
			local victim = plr.Backpack.Main.LockOnScript.LockOn.Value
			if not victim then
				local nearestMag = 10
				local nearest
				for i,v in pairs(workspace:GetChildren()) do
					local hum = v:FindFirstChildOfClass("Humanoid")
					if hum and v:FindFirstChild("Head") and hum.Health > 0 and v.Name ~= plr.Name then
						pcall(function()
							local mag = (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
							if mag < nearestMag then
								nearestMag = mag
								nearest = v
							end
						end)
					end
				end
				victim = nearest
			end
			if not victim then return end
			remotes.Damage:InvokeServer(pass,victim,{
				HitEffect = "HeavyHitEffect", 
				Sound = rep.Sounds.ChaosSaberSlice, 
				Type = "Knockback", 
				HitTime = 2.5, 
				HurtAnimation = rep.Animations.HurtAnimations.Stunned, 
				Damage = 10
			},"Lord")
			chat("[LOAD_FILE]: UNKNOWN")
		end
	end,
}

uis.InputBegan:Connect(function(i,s)
	if s then return end
	if inputBegan[i.KeyCode] then
		inputBegan[i.KeyCode]()
	elseif keys[i.KeyCode] and (secondPhase or thirdPhase) and idleAnim ~= nil then
		idleAnim:Stop()
	elseif i.UserInputType == Enum.UserInputType.MouseButton3 then
		task.wait(0.04)
		if not plr.Backpack.Main.LockOnScript.LockOn.Value then
			local target = mouse.Target
			if target.Parent:FindFirstChildOfClass("Humanoid") and target.Parent:FindFirstChild("Head") then
				local hum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
				if hum then
					hum.Health = hum.MaxHealth
				end
				game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value = mouse.Target.Parent
			end
		end
	end
end)

local chatDeb = false
local animsIds = {
	Idle = "rbxassetid://4900761581",
	Walk = "rbxassetid://4370512420",
	Run = "rbxassetid://4576074471",
	Jump = "rbxassetid://5111359205",
}
local secondPhaseAnims = {
	Idle = "rbxassetid://3786720640",
	Walk = "rbxassetid://5863504160",
	Run = "rbxassetid://5863512780",
	Jump = "rbxassetid://3198665507",
	Fall = "rbxassetid://5111359205",
}
local bladeIds = {
	Light1 = "rbxassetid://4333546395",
	Light2 = "rbxassetid://4348265296",
	Light3 = "rbxassetid://4348287123",
	Light4 = "rbxassetid://4348301706",
	Light5 = "rbxassetid://4348323561",
	Light6 = "rbxassetid://4348788816"
}

local bladePhase = {
	Light1 = "rbxassetid://4456890962",
	Light2 = "rbxassetid://4456884092",
	Light3 = "rbxassetid://4456898259",
	Light4 = "rbxassetid://4456894133",
	Light5 = "rbxassetid://4456890962",
	Light6 = "rbxassetid://4456884092",
}--4456884092-4456901030

local thirdPhaseAnims = {
	Idle = "rbxassetid://4661950750",
	Fall = "rbxassetid://3198653548",
	Walk = "rbxassetid://4196634355",
	Run = "rbxassetid://4196684102",
	Jump = "rbxassetid://3198665507",
}
local DetAnims = {
	Idle = "rbxassetid://4652743075",
	Walk = "rbxassetid://4196634355",
	Run = "rbxassetid://4196684102",
	Fall = "rbxassetid://3198653548",
	Jump = "rbxassetid://3198665507",
}

local BraveryAnims = {
	Idle = "rbxassetid://6416819199",
	Run = "rbxassetid://6492501335",
	Walk = "rbxassetid://6492491612",
	Jump = "rbxassetid://6492505440",
	Fall = "rbxassetid://6492518805",
}
local JusticeAnims = {
	Idle = "rbxassetid://7038816551",
	Run = "rbxassetid://6492501335",
	Walk = "rbxassetid://6492491612",
	Jump = "rbxassetid://6492505440",
	Fall = "rbxassetid://6492518805",
}
local PatienceAnims = {
	Idle = "rbxassetid://5026896608",
	Run = "rbxassetid://3728873938",
	Walk = "rbxassetid://3728845466",
	Fall = "rbxassetid://4936391689",
	Jump = "rbxassetid://3198665507",
}
local IntegrityAnims = {
	Idle = "rbxassetid://7005139602",
	Walk = "rbxassetid://7005162082",
	Run = "rbxassetid://7005205711",
	Jump = "rbxassetid://4087647775",
	Fall = "rbxassetid://4690344191",
}

local KindnessAnims = {
	Idle = "rbxassetid://6136039008",
	Run = "rbxassetid://6136042922",
	Fall = "rbxassetid://6136052357",
	Jump = "rbxassetid://6136050723",
	Walk = "rbxassetid://6136040526",
}

local perseveranceAnims = {
	Idle = "rbxassetid://180435571",
	Walk = "rbxassetid://4370512420",
	Run = "rbxassetid://4370518984",
	Fall = "rbxassetid://5111359205",
	Jump = "rbxassetid://3198665507",
}

local saveIds = {
	Determination = DetAnims,
	HATE = thirdPhaseAnims,
	Bravery = BraveryAnims,
	Justice = JusticeAnims,
	Patience = PatienceAnims,
	Integrity = IntegrityAnims,
	Kindness = KindnessAnims,
	Perseverance = perseveranceAnims,
}

local formInfo = {
	Determination = {"rbxassetid://2759823703",DetAnims,75},
	HATE = {"rbxassetid://6141390171",thirdPhaseAnims,90},
	Bravery = {"rbxassetid://7256486381",BraveryAnims,60},
	Justice = {"rbxassetid://5670393738",JusticeAnims,60},
	Patience = {"rbxassetid://935501955",PatienceAnims,80},
	Integrity = {"rbxassetid://6403520059",IntegrityAnims,100},
	Kindness = {"rbxassetid://3012888916",KindnessAnims,60},
	Perseverance = {"rbxassetid://5294451688",perseveranceAnims,60},
}

local transAnim = Instance.new("Animation")
transAnim.AnimationId = "rbxassetid://7004737889"

local subject = Instance.new("TextLabel")
subject.Parent = script
subject.Visible = false
local jumping = false
local colorcodes = {
	Patience = {"LightBlue",Color3.fromRGB(18, 238, 212)},
	Kindness = {"Green",Color3.fromRGB(0, 255, 0)},
	Perseverance = {"Purple",Color3.fromRGB(170, 0, 170)},
	Determination = {"Red",Color3.fromRGB(255,0,0)},
	Integrity = {"Blue",Color3.fromRGB(0, 16, 176)},
	Justice = {"Yellow",Color3.fromRGB(255, 255, 0)},
	Bravery = {"Orange",Color3.fromRGB(255, 106, 0)},
}


local function bladeEffect()
	local char = plr.Character
	local realKnife = char:WaitForChild("RealKnife")
	local blade = realKnife:WaitForChild("Blade")
	charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",Color3.new(1,0,0),0.3,"SpecialHell"})

	charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",Color3.new(1,0,0),0.3,"Hate"})
	if not thirdPhase then
		charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",Color3.new(1,0,0),0.3,"RedMode"})
	else
		if colorcodes[currentForm] then
			charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",colorcodes[currentForm][2],0.3,colorcodes[currentForm][1].."Mode",nil,nil,nil,"Lord"})
		end
	end
	for i,v in pairs(blade:GetChildren()) do
		if v.Name == "SpecialHell" and v.Enabled then
			if not thirdPhase then
				if v.Texture ~= "rbxassetid://569507523" then
					v:Destroy()
					charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",Color3.new(1,0,0),0.3,"SpecialHell"})
				else break
				end
			else
				if v.Texture ~= "rbxassetid://569507523" or v.Texture ~= "rbxassetid://528256032" then
					if not effDestroyed then
						v:Destroy()
						effDestroyed = true
					end
					if colorcodes[currentForm] then
						charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",colorcodes[currentForm][2],0.3,"SpecialHell"})
					else
						charaMoves:InvokeServer({pass,"KnifeColor","ChangeColor",Color3.new(0,0,0),0.3,"SpecialHell"})
					end
				end
			end
		end
	end
end

local function transform()
	local char = plr.Character
	local hum = char:FindFirstChildOfClass("Humanoid")
	local gui = plrGui.CharaIndicator
	local indicator = gui.Indicator
	local form = indicator.Text
	local color = indicator.TextStrokeColor3
	local infoTable = formInfo[form]
	if thirdPhase and not debounce and currentForm ~= form and infoTable then
		debounce = true

		currentForm = form
		tweenS:Create(theme,TweenInfo.new(2.5),{Volume=0}):Play()
		charaMoves:InvokeServer({pass,"KnifeColor","Reverse",nil,nil,nil,nil,nil,nil,"Lord"})
		bladeEffect()
		char.HumanoidRootPart.Anchored = true
		local load = hum:LoadAnimation(transAnim)
		load:Play()
		if idleAnim then
			idleAnim:Stop()
		end

		task.wait(3.3)
		auraThing = false
		coroutine.resume(coroutine.create(function()
			playSound(rep.Resources.Sounds.Moves.SpecialHell2.Fire,9)
			task.wait(0.55)
			load:AdjustSpeed(0)
		end))
		subject.TextStrokeColor3 = currentColor
		tweenS:Create(subject,TweenInfo.new(2.2244726634199),{TextStrokeColor3 = color}):Play()
		tweenS:Create(plrGui.UI.Ui.StaminaBar.Bar,TweenInfo.new(2.2244726634199),{BackgroundColor3 = color}):Play()
		theme:Stop()
		theme.SoundId = infoTable[1]
		theme.Volume = 0
		if not (combatTheme and combatTheme.Playing) then
			tweenS:Create(theme,TweenInfo.new(2),{Volume=1.5}):Play()
		end
		theme:Play()
		for i=1,50 do
			events:FireServer({pass, "SlashEffect", module.Animations.Slash.Swing1, subject.TextStrokeColor3,CFrame.new(0,0,-1) * CFrame.Angles(0,0,math.rad(math.random(-360,360)))});
			task.wait(.04)
		end
		if infoTable[3] > 66 then
			local bat = Instance.new("StringValue")
			bat.Name = "Battling"
			bat.Parent = char
		else
			for i,v in pairs(char:GetChildren()) do
				if v.Name == "Battling" then
					v:Destroy()
				end
			end
		end
		currentScript.Parent.RunSpeed.Value = infoTable[3]
		char.HumanoidRootPart.Anchored = false
		currentColor = color
		if currentForm == "Integrity" then
			hum.JumpPower = 200
		else
			hum.JumpPower = 50
		end
		auraThing = true
		load:AdjustSpeed(1)
		local playingTracks = hum:GetPlayingAnimationTracks()
		for i,v in pairs(playingTracks) do
			if saveIds[form][v.Animation.Name] then
				v:Stop()
			end
		end
		local brand = {}
		for i,v in pairs(saveIds[form]) do
			local a = animationsFolder:WaitForChild(i)
			a.AnimationId = v
			brand[i] = hum:LoadAnimation(a)
			if i == "Idle" then
				brand[i]:Play()
			end
		end
		currentAnimTable = brand
		task.wait(.85)
		debounce = false
	end
end

inputBegan[Enum.KeyCode.Zero] = transform

local chatCount = 0
local chats = { -- not used anymore cause edgy roleplay
	"Are you afraid?",
	"Why are you even trying?",
	"Don't you realise...? there's no point in fighting me.",
	"Give up already.",
	"You want to die so bad, don't you?",
	"Even if you kill me, i am able to respawn just like you.",
	"But i'll make sure to end this very quickly.",
	"Is this all you got?",
	"Don't make me laugh.",
	"Waste your time as much as you want!"
}

local function clearMusics()
	for i,v in pairs(plr.Character.Head:GetChildren()) do
		if v.Name == "1Bunny" then
			v:Destroy()
		end
	end
end
function castRay(p2)
	local v7 = nil;
	v7 = Ray.new(p2.Origin, p2.Direction);
	if p2.IgnoreList then
		return workspace:FindPartOnRayWithIgnoreList(v7, p2.IgnoreList);
	end;
	return workspace:FindPartOnRay(v7, p2.Model);
end;

local function clonePart(p7, p8, p9)
	local v9 = p7:Clone();
	v9.CFrame = p9;
	v9.Parent = p8;
	return v9;
end;
local function particleColors(p10, p11)
	local v10, v11, char = pairs(p10:GetChildren());
	while true do
		local char, v14 = v10(v11, char);
		if char then

		else
			break;
		end;
		char = char;
		if v14:IsA("ParticleEmitter") then
			v14.Color = ColorSequence.new(p11);
		end;	
	end;
end;
local function removeParticles(p12, p13, p14)
	spawn(function()
		wait(p12);
		local v15, v16, v17 = pairs(p13:GetChildren());
		while true do
			local v18, v19 = v15(v16, v17);
			if v18 then

			else
				break;
			end;
			v17 = v18;
			if v19:IsA("ParticleEmitter") then
				v19.Enabled = false;
			end;		
		end;
		game.Debris:AddItem(p13, p14);
	end);
end;
function enableParticles(p15, p16)
	spawn(function()
		local v20, v21, v22 = pairs(p15:GetChildren());
		while true do
			local v23, v24 = v20(v21, v22);
			if v23 then

			else
				break;
			end;
			v22 = v23;
			if v24:IsA("ParticleEmitter") then
				v24.Enabled = p16;
			end;		
		end;
	end);
end;
local function playMusic(playlist) -- unused cause patched
	clearMusics()
	playSound(rep.Resources.Character.CustomMusic.My[playlist]["1Bunny"])
end
local fakeBlock = Instance.new("Part")
fakeBlock.Anchored = true
fakeBlock.Size = Vector3.new(2000,20,20000)
fakeBlock.Parent = rep
local fakeThing = {Transparency = 0,Parent = workspace.Map, Material = "Neon", Color = fakeBlock.Color, BrickColor = fakeBlock.BrickColor, Name = "Part"}
pcall(function()
	coroutine.resume(coroutine.create(function()
		local module = rep:WaitForChild("ClientModules"):WaitForChild("MainModule")
		local req = require(module)
		req.checkIfHit = function()
			return false
		end
		req.Damage = function(p33, p34)
			local l__HumanoidRootPart__50 = p33:WaitForChild("HumanoidRootPart");
			local l__Humanoid__51 = p33:WaitForChild("Humanoid");
			if not plr.Backpack.Main.LockOnScript.LockOn.Value then
				for v52, v53 in pairs(workspace:GetChildren()) do
					if v53:FindFirstChild("HumanoidRootPart") and v53 ~= p33 and (l__HumanoidRootPart__50.Position + l__HumanoidRootPart__50.CFrame.lookVector * 4 - v53.HumanoidRootPart.Position).magnitude <= 5 then
						local data = v53:FindFirstChild("Data")
						if not data then return end
						if data.Blocking.Value then
							p34 = {HitEffect = "HeavyHitEffect", 
								Sound = rep.Sounds.Knockback, 
								Velocity = Vector3.new(0,0,0), 
								Type = "Knockback", 
								HitTime = 2.4, 
								HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
								VictimCFrame = v53.HumanoidRootPart.CFrame, 
								Damage = 10,
								CameraShake = "Bump"}
						end
						if remotes.Damage:InvokeServer(pass, v53, p34,"Lord") then
							return v53;
						else
							break;
						end;
					end;
				end;
				return nil;
			else
				local data = plr.Backpack.Main.LockOnScript.LockOn.Value:FindFirstChild("Data")
				if not data then return end
				if data.Blocking.Value then
					p34 = {HitEffect = "HeavyHitEffect", 
						Sound = rep.Sounds.Knockback, 
						Velocity = Vector3.new(0,0,0), 
						Type = "Knockback", 
						HitTime = 2.4, 
						HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
						VictimCFrame = plr.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame, 
						Damage = 10,
						CameraShake = "Bump"}
				end
				if remotes.Damage:InvokeServer(pass, plr.Backpack.Main.LockOnScript.LockOn.Value, p34) then
					return plr.Backpack.Main.LockOnScript.LockOn.Value;
				end;
			end;
		end
		req.BlurEffect = function()
			return true
		end
	end))
end)
-- if not plr.Character then
rep.DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
local con
local fakeFolder = Instance.new("Folder")
fakeFolder.Name = "ServerCooldown"
local fakeMe = Instance.new("Folder")
fakeMe.Name = plr.Name
fakeMe.Parent = fakeFolder
fakeFolder.Parent = script
local serverCool = workspace.ServerEffects.ServerCooldown
serverCool.Parent = rep
fakeFolder.Parent = workspace.ServerEffects
game:GetService("Lighting"):WaitForChild("Blur").Enabled = false
plr.CharacterAdded:Connect(function(char)
	secondPhase = false
	auraThing = true
	thirdPhase = false
	currentColor = Color3.new(0,0,0)
	currentForm = "HATE"
	combatStyle = "Chara"
	currentScript = nil
	currentAnimTable = nil
	haha = 3
	debounce = false
	notyet = false
	cooldown = false
	effDestroyed = false
	killaura = true
	killAura = true
	knockBaack = false
	local hum = char:WaitForChild("Humanoid")
	main = plr:WaitForChild("Backpack"):WaitForChild("Main")
	local charaSc = main:WaitForChild("CharaMoves")
	currentScript = charaSc
	local animations = charaSc:WaitForChild("Animations")
	animationsFolder = animations
	module = charaSc:WaitForChild("ModuleScript")
	moduleRequire = require(module)
	coroutine.resume(coroutine.create(function()
		moduleRequire.SwordCombat = function() return true end
		moduleRequire.HoverForwardEffect = function() return true end
	end))
	local bladeAnims = module:WaitForChild("Animations"):WaitForChild("BladesCombat")
	start(main)
	for i,v in pairs(animsIds) do
		animations:WaitForChild(i).AnimationId = v
	end
	for i,v in pairs(bladeIds) do
		bladeAnims:WaitForChild(i).AnimationId = v
	end
	notyet = false

	local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.Info:Destroy()
		ui.StaminaBar.LocalScript:Destroy()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(1,1,1)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.98, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		ui:WaitForChild("MoveDebounceShower").Visible = false
		ui.MoveDebounceShower.LocalScript:Destroy()
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Help"):Destroy()
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.93,0)
	end)
	wait(1)
	pcall(function()
		for _,v in pairs(getconnections(char.Head.DescendantRemoving)) do
			v:Disable()
		end
		for _,v in pairs(getconnections(char.DescendantRemoving)) do
			v:Disable()
		end
	end)
	--[[
	pcall(function()
		local part
		for i,v in pairs(rep.Effects.XEvent.Attachment:GetChildren()) do
			if v.Texture == "rbxassetid://4535376958" then
				part = v
			end
		end
		if part then
			functions:InvokeServer({pass,"PlaySound",part})
		end
	end)
	]]
	task.wait(0.8)
	local healthBar = char.Head:WaitForChild("HealthBar")
	local pn = healthBar:WaitForChild("Frame"):WaitForChild("PName")
	local stamThing = healthBar.Frame:WaitForChild("StaminaBar")
	local hp = pn.Parent:WaitForChild("HealthLabel")
	local h = pn.Parent:WaitForChild("HP")
	char:WaitForChild("HateArm"):Destroy()
	char:WaitForChild("Karma"):Destroy()
	functions:InvokeServer({pass,"Reset"})
	repeat task.wait() until hum.Health <= 1
	if not hideEntire then
		pn:Destroy()
		stamThing:Destroy()
		hp:Destroy()
		h:Destroy()
	else
		healthBar:Destroy()
	end
	repeat
		task.wait()
	until hum.Health >= 10

	local particle = char:WaitForChild("RealKnife"):WaitForChild("Blade"):WaitForChild("RedMode")
	particle.Changed:Connect(function()
		if not particle.Enabled then
			bladeEffect()
		end
	end)
	functions:InvokeServer({pass,"ChangeSetting","DeathScene",false})
	chat("[LOAD FILE]: REAL_CHARA.EXE")
	spawn(function()
		repeat wait(1) until testThis() == true
	end)

	if theme then
		theme:Destroy()
	end

	theme = Instance.new("Sound")
	theme.SoundId = "rbxassetid://1595457345"
	theme.Looped = true
	theme.Parent = plr.Backpack
	theme:Play()
	for i,v in pairs(plr:GetChildren()) do
		if v.Name:match("Playlist") then
			v:ClearAllChildren()
		end
	end
	for i,v in pairs(char:GetChildren()) do
		if v.Name == "LockOn" then
			local weld = v:FindFirstChild("Weld")
			if weld then weld:Destroy() end
		end
	end
	local root = char.HumanoidRootPart

	pcall(function()
		local con
		char:WaitForChild("Attacks").ChildAdded:Connect(function(child)
			local toReturn = false
			if child.Name == "KnifeSlashProjectile" or child.Name == "KnifeSlashProjectileOrange" or child.Name == "KnifeSlashProjectilePurple" or child.Name == "KnifeSlashProjectileDark" or child.Name == "YellowBlast" then
				local nameArg = "KnifeProjectile"
				if setWings then
					child:WaitForChild("Touch"):Destroy()
					child:WaitForChild("Hitted"):Destroy()
					child:WaitForChild("BodyVelocity").Velocity = Vector3.new(0,0,0)
					table.insert(wings,child)
					toReturn = true
					return
				end
				if toReturn then return end
				local count = 0
				for i,v in pairs(char.Attacks:GetChildren()) do
					if v.Name:lower():match("knifeslashprojectile") and v ~= child then
						count = count + 1
					end
				end
				if count >= 8 then
					for i,v in pairs(char.Attacks:GetChildren()) do
						if v.Name:lower():match("knifeslashprojectile") and v ~= child then
							v:Destroy()
						end
					end
				end
				if child.Name == "KnifeSlashProjectileDark" then
					nameArg = "KnifeProjectileDarkRed"
				elseif child.Name == "KnifeSlashProjectileOrange" then
					nameArg = "KnifeProjectileOrange"
					if universeReset then
						child:WaitForChild("Hitted"):Destroy()
					elseif floorEffectStuff.yeahThing == true then
						child:WaitForChild("Hitted"):Destroy()
						child:WaitForChild("Trail"):Destroy()
						child:WaitForChild("Trail"):Destroy()
						child:WaitForChild("Burst"):Destroy()
						child:WaitForChild("ParticleEmitter"):Destroy()
						child.Name = "FloorEffect"
						table.insert(floorThingy,child)
						child.Name = "FloorRocks"
						child:WaitForChild("Touch"):Destroy()
						toReturn = true
						return
					end
				elseif child.Name == "KnifeSlashProjectilePurple" then
					nameArg = "KnifeProjectilePurple"
				elseif child.Name == "YellowBlast" then
					nameArg = "KnifeProjectileYellow"
				end
				if child:FindFirstChild("Touch") then
					child.Touch:Destroy()
				else
					child:WaitForChild("Touch"):Destroy()
				end
				if toReturn then return end
				if not toReturn and child.Name ~= "Removing" and child.Parent then
					local velocity = child:WaitForChild("BodyVelocity")
					velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					velocity.Velocity = Vector3.new(0,0,0)
					if child.Name == "YellowBlast" and universeReset then
						child:WaitForChild("Particle"):WaitForChild("ParticleEmitter2"):Destroy()
						child:WaitForChild("Hitted"):Destroy()
						table.insert(orbiting,child)
						return
					end
					local hitted = {}
					child.Touched:Connect(function(hit)

						if not hitted[hit.Parent] then
							hitted[hit.Parent] = 0
						end
						if not hit:IsDescendantOf(char) and hitted[hit.Parent] <= 20 then
							charaMoves:InvokeServer({pass, nameArg, "Hit", child, child.CFrame,hit})

							hitted[hit.Parent] = hitted[hit.Parent] + 1

						end

					end)
					table.insert(slashes,child)
				end
			end
		end)
	end)
	local speed = 0.01
	local lradius = 15

	local radius = lradius + math.sin(tick())*8
	local ts = 0
	local rad,cos,sin = math.rad,math.cos,math.sin

	runS.RenderStepped:Connect(function()
		for i,child in pairs(slashes) do
			local velocity = child:FindFirstChild("BodyVelocity")
			if not velocity or not child or not child.Parent then
				table.remove(slashes,i)
				return
			end
			if #sparing == 0 then
				local pos
				if not universeReset or not currentVictim then
					if main.LockOnScript.LockOn.Value then
						pos = main.LockOnScript.LockOn.Value.Torso.Position
					else
						pos = mouse.Hit.p
					end
				else
					pos = currentVictim.Position
				end
				child.CFrame = CFrame.new(child.Position, pos) * CFrame.Angles(math.rad(90), 0, 0);
				child.Position = pos
			else
				for i,torso in pairs(sparing) do
					if torso then
						child.CFrame = CFrame.new(child.Position, torso.Position) * CFrame.Angles(math.rad(90), 0, 0);
						child.Position = torso.Position
					end
				end
			end
		end
		for i=1,#orbiting do
			local p = orbiting[i]
			local y = root.Position.Y
			local z = root.Position.Z
			local lol = ts
			if i == 2 then
				y = y + radius*sin(rad(ts))
				lol = ts + i*18
			elseif i == 3 then
				y = y + radius*sin(rad(-ts))
				lol = ts + i*30
			elseif i == 4 then
				y = y + radius*cos(rad(ts))
				lol = ts + i*100
			end
			local x = root.Position.X + radius*cos(rad(lol))
			if i == 4 then
				x = root.Position.X
			end
			p.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(lol)))
		end
		radius = lradius + math.sin(tick())*8
		ts = ts + 5
	end)
	main.LockOnScript.LockOn.Changed:Connect(function()
		if main.LockOnScript.LockOn.Value then
			chat("[TARGET_LOCKED]")
		end
	end)

	local tag1 = char:WaitForChild("HateMode")
	local tag2 = char:WaitForChild("FullHateMode")
	tag1.Value = true
	tag2.Value = true
	char.ChildAdded:Connect(function(f)
		if f.Name == "Inv" then
			f:GetPropertyChangedSignal("Name"):Connect(function()
				if destroy[f.Name] then
					f:Destroy()
				end
			end)
		end
		if destroy[f.Name] then
			task.wait()
			f:Destroy()
		end
		if f.Name:lower():match("netowner") then
			game.Debris:AddItem(f,0.01)
		end
	end)
	plrGui.ChildAdded:Connect(function(c)
		if c.Name == "HyperGonerMiniGame" or c.Name == "WhiteScreen" then
			task.wait()
			c:Destroy()
		end
	end)
	plr.ChildAdded:Connect(function(f)
		if f.Name:match("Playlist") then
			task.wait(.03)
			f:ClearAllChildren()
		end
	end)
	bladeEffect()
	local last = hum.Health
	remotes.Effects.OnClientEvent:Connect(function(p1, p2)
		local v1 = p1[1];
		if v1 == "Chatted" then
			local v116 = p1[2];
			if p1[3]:lower():match("sans is sparing") then
				local torso = v116:FindFirstChild("Torso")
				if torso then
					table.insert(sparing,torso)
					if not debounce then
						charaMoves:InvokeServer({ pass , "KnifeProjectile", "Spawn", torso.Position});
					end
					spawn(function()
						while sparing[torso] ~= nil do
							wait(0.3)
							if not debounce then
								charaMoves:InvokeServer({ pass , "KnifeProjectile", "Spawn", torso.Position});
							end
						end
					end)
					spawn(function()
						wait(4)
						table.remove(sparing,sparing[torso])
					end)
				end
			end
		end
	end)

	hum.HealthChanged:Connect(function(health)
		tweenS:Create(ui.StaminaBar.Bar,TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size = UDim2.new(health/hum.MaxHealth * 1,0,1,0)}):Play()
		if health >= 100 and not chatDeb and chatCount <= #chats and health < last then
			--if messagesCool then
			--	last = health
			--	chatDeb = true
			--	chatCount = chatCount + 1
			--	if chatCount <= #chats then
			--		chat(chats[chatCount])
			--	end
			--	wait(15)
			--	chatDeb = false
			--end
		elseif health <= 0 and not secondPhase then
			secondPhase = true
			theme:Stop()
			hum.Health = 200
			hum:ChangeState(Enum.HumanoidStateType.Freefall)
			--repeat wait() until hum.Health > 2
			local anim = true
			local is = 4
			local hahahah
			hahahah = runS.Heartbeat:Connect(function()
				if hum.Health > 0 then
					events:FireServer({pass,"InvFrames",4.5})
				end
				if not char or char.Parent == nil then
					hahahah:Disconnect()
					return
				end
				if char.HumanoidRootPart:FindFirstChild("Server") then
					char.HumanoidRootPart.Server:Destroy()
				end
			end)
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://3786809782"
			animation = hum:LoadAnimation(animation)
			animation:Play()
			wait(2)
			chat("Wow... don't try too hard, or you will break your keyboard.")
			wait(5)
			chat("Before you kill me, I will show something even better...")
			wait(5)
			-- unused stuff cause patched
			--functions:InvokeServer({pass,"PlaySound",rep.Sounds.GTLevelUp})
			--functions:InvokeServer({pass,"PlaySound",rep.Resources.Sounds.GodTransforms})
			--pcall(function()
			--	for i=1,2 do
			--		functions:InvokeServer({pass,"PlaySound",rep.Resources.MoveEffects.SpecialHell2.SpecialHellDarkness.Ball1.Attachment.SpecialHell})
			--	end
			--end)
			--pcall(function()
			--	functions:InvokeServer({pass,"PlaySound",rep.Effects.BettyStareStart})
			--end)
			--functions:InvokeServer({pass,"PlaySound",rep.Effects.XEvent.Attachment})
			playSound(rep.Resources.Sounds.Moves.SpecialHell2.Fire,9)
			currentColor = Color3.new(1,0,0)
			local clean = true
			local eff = true
			haha = 30
			floorEffectStuff.yeahThing = true
			charaMoves:InvokeServer({ pass , "KnifeProjectileOrange", "Spawn",Vector3.new(0,0,0)})
			floorEffectStuff.FloorEffect = true
			floorEffectStuff.yeahThing = false
			coroutine.resume(coroutine.create(function()
				task.wait(1.5)
				while char and char.Parent do
					task.wait(.255)
					if auraThing then
						if thirdPhase then
							for i=1,2 do
								events:FireServer({pass, "SlashEffect", module.Animations.Slash.Swing1, currentColor,CFrame.new(0,0,-1) * CFrame.Angles(0,0,math.rad(math.random(-360,360)))});
								task.wait(.01)
							end
							local nearestMag = 10
							local nearest
							for i,v in pairs(workspace:GetChildren()) do
								local hum = v:FindFirstChildOfClass("Humanoid")
								if hum and v:FindFirstChild("Head") and hum.Health > 0 and v.Name ~= plr.Name then
									pcall(function()
										local mag = (v.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude
										if mag < nearestMag then
											nearestMag = mag
											nearest = v
										end
									end)
								end
							end
							if clean then -- why they keep the weld after using it goddamn
								clean = false
								pcall(function()
									for i,v in pairs(char.HumanoidRootPart:GetChildren()) do
										if v:IsA("Weld") and v.Part0 == nil then
											v:Destroy()
										end
									end
								end)
								spawn(function()
									task.wait(.8)
									clean = true
								end)
							end
							if nearest and not cooldown and killAura and killaura then
								killAura = false
								spawn(function()
									local data = nearest:FindFirstChild("Data")
									if data then
										if not knockBaack and not data.Blocking.Value then
											remotes.Damage:InvokeServer(pass,nearest,{HitEffect = "HeavyHitEffect", 
												Sound = rep.Sounds.Knockback, 
												Position = nearest.HumanoidRootPart.Position, 
												Type = "Normal", 
												HitTime = 2.4, 
												HurtAnimation = rep.Animations.HurtAnimations.Hurt1, 
												VictimCFrame = nearest.HumanoidRootPart.CFrame, 
												Damage = 10,
												CameraShake = "Bump"},"Lord")
										else
											remotes.Damage:InvokeServer(pass,nearest,{HitEffect = "HeavyHitEffect", 
												Sound = rep.Sounds.Knockback, 
												Velocity = plr.Character.HumanoidRootPart.CFrame.lookVector * 150 + Vector3.new(0,40,0),
												Type = "Knockback", 
												HitTime = 2.4, 
												HurtAnimation = rep.Animations.HurtAnimations.Knockback2, 
												VictimCFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(180), 0) + plr.Character.HumanoidRootPart.CFrame.lookVector * 1,
												Damage = 10,
												CameraShake = "Explosion"},"Lord")
										end
									end
								end)
								coroutine.resume(coroutine.create(function()
									task.wait(.3)
									killAura = true
								end))
							end
						end
					end
				end
			end))
			chat("Good luck.",Color3.new(0,0,0))
			tweenS:Create(ui.StaminaBar.Bar,TweenInfo.new(1),{BackgroundColor3 = Color3.new(1,0,0)}):Play()

			task.wait(1)
			if not lolwings then
				charaMoves:InvokeServer({pass,"KnifeHeal"})
				spawn(function()
					for i=1,14 do
						task.wait(6.2)
						if not thirdPhase and hum.Health ~= 200 then
							charaMoves:InvokeServer({pass,"KnifeHeal"})
						end
					end
				end)
			end

			bladeAnims.Light6.AnimationId = "rbxassetid://4348287123"
			functions:InvokeServer({pass,"PlaySound",rep.Sounds.HyperGonerLaugh,plr.Character})
			theme.SoundId = "rbxassetid://6947338930"
			if not (combatTheme and combatTheme.Playing) then
				theme.Volume = 2.5
			end
			theme:Play()
			anim = false
			animation:Stop()
			is = 3
			local playingTracks = hum:GetPlayingAnimationTracks()
			for i,v in pairs(secondPhaseAnims) do
				animations:WaitForChild(i).AnimationId = v
			end
			for i,v in pairs(playingTracks) do
				if secondPhaseAnims[v.Animation.Name] then
					v.Animation.AnimationId = secondPhaseAnims[v.Animation.Name]
					v:Stop()
					if typeof(secondPhaseAnims[v.Animation.Name]) == "string" then
						v = hum:LoadAnimation(v.Animation)
						secondPhaseAnims[v.Animation.Name] = v
					else
						v = secondPhaseAnims[v.Animation.Name]
					end
					if v.Animation.Name == "Idle" then
						idleAnim = v
					end
					v:Play()
				end
			end
			for i,v in pairs(secondPhaseAnims) do
				if typeof(v) == "string" then
					secondPhaseAnims[i] = hum:LoadAnimation(animations:WaitForChild(i))
				end
			end
			currentAnimTable = secondPhaseAnims
			hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				if not currentAnimTable then return end
				if hum.WalkSpeed == 0 then
					if currentAnimTable.Run.isPlaying then
						currentAnimTable.Run:Stop(0.1)
					end
					if currentAnimTable.Walk.isPlaying then
						currentAnimTable.Walk:Stop(0.1)
					end
					currentAnimTable.Idle:Play()
					secondPhaseAnims.Idle.Priority = Enum.AnimationPriority.Movement
				elseif hum.WalkSpeed > 0 and hum.WalkSpeed < 11 then
					if currentAnimTable.Run.isPlaying then
						currentAnimTable.Run:Stop(0.1)
					end
					if currentAnimTable and not currentAnimTable.Walk.isPlaying then
						currentAnimTable.Walk.Priority = Enum.AnimationPriority.Movement
						currentAnimTable.Walk:Play(0.5)
					end
					currentAnimTable.Walk:AdjustSpeed(hum.WalkSpeed / 10)
				elseif hum.WalkSpeed > 11 then
					if currentAnimTable.Walk.isPlaying then
						currentAnimTable.Walk:Stop(0.1)
					end
					if currentAnimTable and not currentAnimTable.Run.isPlaying then
						currentAnimTable.Run.Priority = Enum.AnimationPriority.Movement
						currentAnimTable.Run:Play(0.5)
					end
					currentAnimTable.Run:AdjustSpeed(hum.WalkSpeed / script.Parent.RunSpeed.Value)
				end
			end)
			hum.Jumping:Connect(function(p33)
				if not p33 or not (not currentAnimTable.Jump.isPlaying) then
					return;
				end;
				currentAnimTable.Jump.Priority = Enum.AnimationPriority.Action
				currentAnimTable.Jump:Play(0.25)
				if not jumping then
					jumping = true
					return;
				end;
			end);
			local smallLand = Instance.new("Animation")
			smallLand.AnimationId = "rbxassetid://4575922541"
			local bigLand = Instance.new("Animation")
			bigLand.AnimationId = "rbxassetid://4575983939"
			local v46 = hum:LoadAnimation(smallLand)
			local v47 = hum:LoadAnimation(bigLand)
			hum.StateChanged:Connect(function(p21, p22)
				if p22 == Enum.HumanoidStateType.Landed and jumping then
					jumping = false;					
					if currentAnimTable.Jump.isPlaying then
						currentAnimTable.Jump:Stop()
					end
					-- unused cause i broke something and it crashes
					--	if currentForm == "Integrity" then
					--		if char.HumanoidRootPart.Velocity.Y > -100 and char.HumanoidRootPart.Velocity.Y < -5 then
					--			v46:Play(0.2);
					--			v46:AdjustSpeed(0.8);
					--			local v65, v66 = castRay({
					--				Origin = char.HumanoidRootPart.Position, 
					--				Direction = Vector3.new(0, -10, 0), 
					--				Model = char
					--			});
					--			if v65 then
					--				local v67 = clonePart(game.ReplicatedStorage.Effects.SoftLandSmoke, char, CFrame.new(v66));
					--				particleColors(v67, v65.Color);
					--				removeParticles(0.1, v67, 1.5);
					--				return;
					--			end;
					--		elseif char.HumanoidRootPart.Velocity.Y < -100 then
					--			v47:Play(0.2);
					--			v47:AdjustSpeed(0.8);
					--			local v68, v69 = castRay({
					--				Origin = char.HumanoidRootPart.Position, 
					--				Direction = Vector3.new(0, -10, 0), 
					--				Model = char
					--			});
					--			if v68 then
					--				local v70 = clonePart(game.ReplicatedStorage.Effects.HardLandSmoke, char, CFrame.new(v69));
					--				particleColors(v70, v68.Color);
					--				removeParticles(0.1, v70, 2.5);
					--			end;
					--		end;
					--	end;
				end
			end);
		elseif health <= 0 and secondPhase and not thirdPhase then
			thirdPhase = true

			theme:Stop()
			theme.SoundId = "rbxassetid://2759823703"
			theme.Volume = 0
			if not (combatTheme and combatTheme.Playing) then
				tweenS:Create(theme,TweenInfo.new(5),{Volume=1.5}):Play()
			end
			theme:Play()
			hum.Health = 200
			hum:ChangeState(Enum.HumanoidStateType.Freefall)
			idleAnim:Stop()
			idleAnim = nil
			local animation = Instance.new("Animation")
			animation.AnimationId = "rbxassetid://5657849029"
			animation = hum:LoadAnimation(animation)
			animation:Play()
			task.wait(2)
			chat("You know...")
			task.wait(3)
			tweenS:Create(ui.StaminaBar.Bar,TweenInfo.new(2.17),{BackgroundColor3 = Color3.new(0, 0, 0)}):Play()
			playSound(rep.Resources.Sounds.Moves.SpecialHell2.Fire,9)
			for i=50,1,-1 do
				currentColor = Color3.new(1 * (i*2)/100, 0, 0)
				events:FireServer({pass, "SlashEffect", module.Animations.Slash.Swing1,currentColor ,CFrame.new(0,0,-1) * CFrame.Angles(0,0,math.rad(math.random(-360,360)))});
				task.wait(.04)
			end
			chat("I have been holding back.",Color3.new(0,0,0))
			haha = 70
			currentColor = Color3.new(0,0,0)
			destroy["HeartLocket"]=true
			for i,v in pairs(destroy) do -- i used to destroy more stuff cause it was cool
				local t = char:FindFirstChild(i)
				if t then
					t:Destroy()
				end
			end
			local hh = char:FindFirstChild("HateHead")
			if hh then
				local weird1 = hh:FindFirstChild("weird smile")
				local weird2 = hh:FindFirstChild("weird2")
				if weird1 then
					weird1:Destroy()
				end
				if weird2 then
					weird2:Destroy()
				end
			end
			bladeEffect()
			task.wait(0.5)
			local clean = false

			if not hideEntire then
				charaMoves:InvokeServer({pass,"KnifeShield",false})
			end
			local playingTracks = hum:GetPlayingAnimationTracks()
			for i,v in pairs(playingTracks) do
				if saveIds["HATE"][v.Animation.Name] then
					v:Stop()
				end
			end
			local brand = {}
			for i,v in pairs(saveIds["HATE"]) do
				local a = animationsFolder:WaitForChild(i)
				a.AnimationId = v
				brand[i] = hum:LoadAnimation(a)
				if i == "Idle" then
					brand[i]:Play()
				end
			end
			currentAnimTable = brand
			for i,v in pairs(bladePhase) do
				bladeAnims:WaitForChild(i).AnimationId = v
			end
			animation:Stop()

		elseif health <= 0 and thirdPhase and secondPhase then
			hum.Health = 200
			hum:ChangeState(Enum.HumanoidStateType.Freefall)
		end
	end)

end)

functions:InvokeServer({pass,"ChangeSetting","MorphEnabled",true})
local charSel = plrGui:WaitForChild("CharacterSelection")
local val = charSel:WaitForChild("Character")
val.Value = "Chara"
spawn(function()
	serverCool:WaitForChild(plr.Name).ChildAdded:Connect(function(a)
		if not unstress then adjust = 15 end
	end)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	serverCool:WaitForChild(plr.Name).ChildRemoved:Connect(function(a)
		local cs = serverCool:WaitForChild(plr.Name):GetChildren()
		if #cs == 0 or (cs[1].Name == a.Name) then
			task.wait(2)
			local cs = serverCool:WaitForChild(plr.Name):GetChildren()
			if not unstress and (#cs == 0 or (cs[1].Name == a.Name)) then
				adjust = 5
			end
		end
	end)
end)
runS.RenderStepped:Connect(function()
	if not unstress and plr.Character then
		for i=1,adjust do
			if not unstress then
				local t = tick()
				functions:InvokeServer({pass,"Blocking",true})
				local ping = math.floor(((tick() - t) / 2) * 1000)
				if ping > 500 then
					unstress = true
					adjust = 1
					coroutine.resume(coroutine.create(function()
						task.wait(3)
						local cs = serverCool:WaitForChild(plr.Name):GetChildren()
						if #cs == 0 then
							adjust = 5
						else
							adjust = 15
						end
						unstress = false
					end))
				end
				if not unstress then
					if math.random(1,2) == 1 then
						functions:InvokeServer({pass,"Blocking",true})
					end
				end
			end
		end
	end
end)

runS.Heartbeat:Connect(function()
	if plr.Character then
		for i,child in pairs(floorThingy) do
			local velocity = child:FindFirstChild("BodyVelocity")
			if not velocity or not child or not child.Parent then
				table.remove(floorThingy,i)
				return
			end
			child.Name = "FloorEffect"
			if floorEffectStuff.FloorEffect and not floorEffectStuff.OnDeb[child] then
				floorEffectStuff.OnDeb[child] = true
				local pos = Vector3.new(plr.Character.HumanoidRootPart.Position.X + math.random(-10,10),-30,plr.Character.HumanoidRootPart.Position.Z + math.random(-10,10))
				child.CFrame = CFrame.new(child.Position, pos) * CFrame.Angles(math.rad(90), 0, 0);
				child.Position = pos
				fakeThing.Position = child.Position
				fakeThing.CFrame = child.CFrame						
				fakeThing.Color = currentColor
				coroutine.resume(coroutine.create(function()
					charaMoves:InvokeServer({pass, "KnifeProjectileOrange", "Hit", child, child.CFrame,fakeThing})
				end))
				coroutine.resume(coroutine.create(function()
					task.wait(floorEffectStuff.FloorEDelay)
					floorEffectStuff.OnDeb[child] = nil
				end))
			else
				child.Position = Vector3.new(0,-100,0)
			end
		end
	end
end)
--  end
pcall(function()
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	local protect = newcclosure or protect_function
	if not protect then
		protect = function(f) return f end
	end
	setreadonly(mt, false)
	mt.__namecall = protect(function(self, ...)
		local method = getnamecallmethod()
		if method == "InvokeServer" then
			local a = {...}
			if typeof(a[1]) == "table" and a[1][2] and a[1][2] == "TakeStamina" then
				return true
			elseif typeof(a[1]) == "table" and a[1][2] and a[1][2] == "KnifeColor" then
				local tp = a[1][3]
				if tp == "Reverse" then
					if a[1][10] == "Lord" then
						return old(self,...)
					else
						return true
					end					
				elseif tp == "ChangeColor" then
					local b = a[1][6]
					if b == "RedMode" or b == "Hate" or b == "SpecialHell" or a[1][10] == "Lord" then
						return old(self,...)
					else
						return true
					end
				end
			elseif typeof(a[1]) == "table" and a[1][2] and a[1][2] == "Teleport" then
				if a[1][4] and a[1][4] == "Lord" then
					return old(self,...)
				else
					return true
				end
			elseif type(a[3]) == "table" and a[3]["Damage"] ~= nil and a[4] ~= "Lord" then
				local fake = a[3]
				if fake["Damage"] < 10 then
					fake["Damage"] = 10
				end
				if secondPhase then
					fake["HitTime"] = 2.4
					fake["VictimCFrame"] = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(180), 0) + plr.Character.HumanoidRootPart.CFrame.lookVector * 1
				end
				return old(self,a[1],a[2],fake)
			end
		end
		return old(self, ...)
	end)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Script by Lord.#9999";
	Text = "Goodbye SoulShatters :wave:";
	Duration = 5;
})

--// Wings part
if lolwings then
	repeat task.wait() until plr.Character
	task.wait(2)
	local vt=Vector3.new
	local cf=CFrame.new
	local euler=CFrame.fromEulerAnglesXYZ
	local angles=CFrame.Angles
	local sine = 0
	local change = 1
	local function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
		local weld = Instance.new("Weld")
		weld.Parent = parent
		weld.Part0 = part0
		weld.Part1 = part1
		weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
		weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
		return weld
	end
	local function clerp(a,b,t)
		return a:lerp(b,t)
	end
	local function CreateParta(parent,transparency,reflectance,material,brickcolor)
		local p = Instance.new("Part")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Transparency = 1
		p.Parent = parent
		p.Size = Vector3.new(0.1,0.1,0.1)
		p.Reflectance = reflectance
		p.CanCollide = false
		p.Locked = true
		p.BrickColor = brickcolor
		p.Material = material
		return p
	end
	local char = plr.Character
	local maincolor = BrickColor.new("Really red")
	local m = Instance.new("Model",char)
	local m2 = Instance.new("Model",char)
	local m3 = Instance.new("Model",char)
	local mw1 = Instance.new("Model",char)
	local mw2 = Instance.new("Model",char)
	local handlex = CreateParta(mw2,1,1,"Neon",maincolor)
	local handlexweld = CreateWeld(handlex,char.Torso,handlex,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local extrawingmod1 = Instance.new("Model",char)
	local extrawingmod2 = Instance.new("Model",char)
	local handle = CreateParta(m,1,1,"Neon",maincolor)
	local handleweld = CreateWeld(handle,char:WaitForChild("Torso"),handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local lwing1 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	tl1 = Instance.new('Trail',wed)
	tl1.Attachment0 = A0
	tl1.Attachment1 = A1
	--tl1.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tl1.LightEmission = 1
	tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tl1.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tl1.Lifetime = 0.6


	local lwing2 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	tl2 = Instance.new('Trail',wed)
	tl2.Attachment0 = A0
	tl2.Attachment1 = A1
	--tl2.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tl2.LightEmission = 1
	tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tl2.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tl2.Lifetime = 0.6

	local lwing3 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)
	wed = CreateParta(mw1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	tl3 = Instance.new('Trail',wed)
	tl3.Attachment0 = A0
	tl3.Attachment1 = A1
	--tl3.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tl3.LightEmission = 1
	tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tl3.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tl3.Lifetime = 0.6

	tl1.Enabled = false
	tl2.Enabled = false
	tl3.Enabled = false
	local lwing4 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local lwing5 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local lwing6 = CreateParta(m,1,1,"Neon",maincolor)
	local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod1,0,0,"Neon",maincolor)
	CreateWeld(wed,lwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	-- Right wing.

	local rwing1 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)

	tr1 = Instance.new('Trail',wed)
	tr1.Attachment0 = A0
	tr1.Attachment1 = A1
	--tr1.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tr1.LightEmission = 1
	tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tr1.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tr1.Lifetime = 0.6

	local rwing2 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)

	tr2 = Instance.new('Trail',wed)
	tr2.Attachment0 = A0
	tr2.Attachment1 = A1
	--tr2.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tr2.LightEmission = 1
	tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tr2.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tr2.Lifetime = 0.6

	local rwing3 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A0 = Instance.new('Attachment',wed)
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(mw2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	A1 = Instance.new('Attachment',wed)

	tr3 = Instance.new('Trail',wed)
	tr3.Attachment0 = A0
	tr3.Attachment1 = A1
	--tr3.Texture = "http://www.roblox.com/asset/?id=1049219073"
	tr3.LightEmission = 1
	tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
	tr3.Color = ColorSequence.new(BrickColor.new('Black').Color)
	tr3.Lifetime = 0.6


	local rwing4 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing4,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing4,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing4,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local rwing5 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing5,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing5,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing5,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	local rwing6 = CreateParta(m,1,1,"Neon",maincolor)
	local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing6,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing6,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	wed = CreateParta(extrawingmod2,0,0,"Neon",maincolor)
	CreateWeld(wed,rwing6,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	repeat task.wait() until plr.Character.Humanoid.MaxHealth == 200
	task.wait(5)
	setWings = true
	for i=1,2 do
		charaMoves:InvokeServer({pass,"KnifeProjectileDarkRed","Spawn",plr.Character.HumanoidRootPart.CFrame.UpVector * 2000})
		task.wait()
	end
	repeat task.wait() until #wings == 8
	for i=1,2 do
		charaMoves:InvokeServer({ pass , "KnifeProjectileOrange", "Spawn",plr.Character.HumanoidRootPart.CFrame.UpVector * 2000})
		task.wait()
	end
	repeat task.wait() until #wings == 10
	charaMoves:InvokeServer({ pass , "KnifeProjectileYellow", "Spawn",plr.Character.HumanoidRootPart.CFrame.UpVector * 2000})
	repeat task.wait() until #wings == 11
	setWings = false
	local wing1 = wings[1]
	wing1.Name = "Wing"
	wing1.Parent = char
	local wing2 = wings[2]
	wing2.Name = "Wing"
	wing2.Parent = char
	local wing3 = wings[3]
	wing3.Name = "Wing"
	wing3.Parent = char
	local wing4 = wings[4]
	wing4.Name = "Wing"
	wing4.Parent = char
	local wing5 = wings[5]
	wing5.Name = "Wing"
	wing5.Parent = char
	local wing6 = wings[6]
	wing6.Name = "Wing"
	wing6.Parent = char
	local wing7 = wings[7]
	wing7.Name = "Wing"
	wing7.Parent = char
	local wing8 = wings[8]
	wing8.Name = "Wing"
	wing8.Parent = char
	local wing9 = wings[9]
	wing9.Name = "Wing"
	wing9.Parent = char
	local wing10 = wings[10]
	wing10.Name = "Wing"
	wing10.Parent = char
	local orb = wings[11]
	orb.Name = "Orb"
	orb.Parent = char
	while true do
		task.wait()
		lwing1weld.C1=clerp(lwing1weld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
		lwing2weld.C1=clerp(lwing2weld.C1,cf(3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
		lwing3weld.C1=clerp(lwing3weld.C1,cf(3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
		lwing4weld.C1=clerp(lwing4weld.C1,cf(4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(sine / 32))),.3)
		lwing5weld.C1=clerp(lwing5weld.C1,cf(5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(sine / 32))),.3)
		lwing6weld.C1=clerp(lwing6weld.C1,cf(6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(sine / 32))),.3)

		rwing1weld.C1=clerp(rwing1weld.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
		rwing2weld.C1=clerp(rwing2weld.C1,cf(-3,1,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
		rwing3weld.C1=clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
		rwing4weld.C1=clerp(rwing4weld.C1,cf(-4.75,3,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(20 + 25 * math.cos(sine / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(sine / 32))),.3)
		rwing5weld.C1=clerp(rwing5weld.C1,cf(-5.75,4,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(25 + 30 * math.cos(sine / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(sine / 32))),.3)
		rwing6weld.C1=clerp(rwing6weld.C1,cf(-6.75,5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(30 + 35 * math.cos(sine / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(sine / 32))),.3)
		sine = sine + change
		wing1.CFrame = lwing1.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing2.CFrame = lwing2.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing3.CFrame = lwing3.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing4.CFrame = lwing4.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing5.CFrame = rwing1.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing6.CFrame = rwing2.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing7.CFrame = rwing3.CFrame * CFrame.Angles(math.rad(90),0,0)
		wing8.CFrame = rwing4.CFrame * CFrame.Angles(math.rad(90),0,0)
		if secondPhase then
			wing9.CFrame = rwing5.CFrame * CFrame.Angles(math.rad(90),0,0)
			wing10.CFrame = lwing5.CFrame * CFrame.Angles(math.rad(90),0,0)
			orb.CFrame = handlex.CFrame * CFrame.new(0,0.6,0)
		else
			wing9.CFrame = CFrame.new(0,10000,0)
			wing10.CFrame = CFrame.new(0,10000,0)
			orb.CFrame = CFrame.new(0,10000,0)
		end
		--wing11.CFrame = rwing5.CFrame * CFrame.Angles(math.rad(90),0,0)
		--wing12.CFrame = rwing6.CFrame * CFrame.Angles(math.rad(90),0,0)
	end
end