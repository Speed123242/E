
--Setup
if game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value == "Chara" then
	
else
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
end
wait(3)

--Variables
xstun = false
phase = "1"
sdis = false
aura = true
heal = true
--White Name
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiro"
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255,255,255)

--godmode
game.Players.LocalPlayer.Character["Karma"]:Destroy()
game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
game.Players.LocalPlayer.Character["HateMode"]:Destroy() 
game.Players.LocalPlayer.Character["HateArm"]:Destroy()
game.Players.LocalPlayer.Character["RealKnife"]:Destroy()

--Remove
wait(2)
local PLR = game.Players.LocalPlayer
local Backpack = PLR.Backpack
local GUI = PLR.PlayerGui
local Character = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(Character:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)

Character = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(Character:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)
Character = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(Character:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)
Character = game.Players.LocalPlayer.Character
spawn(function()
	repeat wait()
		for _,v in pairs(Character:GetChildren()) do
			if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
				v:Destroy()
			end
		end
	until false
end)

--Sound
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = false
Sound.Looped = false
Sound.SoundId = "rbxassetid://6564956178"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1.5
wait(0.5)
game.Players.LocalPlayer.Character.Head.Voice:Destroy()

--Music
local music = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
music.Volume = 2
music.SoundId = "rbxassetid://2279971133" -- Sound ID
music.Looped = true
music:Play()
game.Players.LocalPlayer.StarterPlaylist["1Megalo Strike Back"]:Destroy()

--customlmb
local anim6 = game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1:clone()
anim6.Name = "Light6"
anim6.Parent = game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4800624938"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4800163313"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4800436094"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5776251749"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4800630930"
game.Players.LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6154060166"

--Talk
function talk(text,color)
	if dead == true then return end
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
game.Players.LocalPlayer.PlayerGui.UI.Ui.ChallengeInfo.Accept.Text = "A god does not fear death"
game.Players.LocalPlayer.PlayerGui.UI.Ui.ChallengeInfo.Decline.Text = "Give up..."
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Attack:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.ManaBar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.StaminaBar:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.UpdateLog:Destroy()
game.Players.LocalPlayer.Character.Head.HealthBar.Frame.StaminaBar:Destroy()

--Custom Moves
local userInputService = game:GetService("UserInputService")


userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.Z then
              
         --player is typing
         
         if phase == "2" then
				talk([[[System Message]
<Skill: "Annihilating Evil Eye" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 1, 0),
						["CombatInv"] = false,
						["Damage"] = 20
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.2)
				Event:InvokeServer(A_1, A_2, A_3)
				wait(0.2)
				Event:InvokeServer(A_1, A_2, A_3)
			elseif phase == "3" or phase == "4" then
				talk([[[System Message]
<Skill: "Evil Eye of Extinction" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 5, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local A_4 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, -5, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				repeat
					Event:InvokeServer(A_1, A_2, A_3)
					wait(0.1)
					Event:InvokeServer(A_1, A_2, A_4)
					wait(0.1)
				until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
			end
          end
          end
end)








userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.X then
              
         --player is typing
         
         if phase == "3" or phase == "4" then
				talk([[[System Message]
<Skill: "Evil Eye of Static" has been used.>]],Color3.fromRGB(255,255,255))			
				local args = {
        				    [1] = getrenv()._G.Pass,
        				    [2] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
       				     [3] = {
       				         ["Type"] = "Knockback",
       				         ["HitEffect"] = "HeavyHitEffect",
        				        ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
          				      ["HitTime"] = 0.2,
           				     ["Sound"] = game:GetService("ReplicatedStorage").Sounds.BassDrop,
          				      ["Damage"] = 0
         				   }
       				 }
				game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
				wait(3)
				talk([[[System Message]
<Skill: "Evil Eye of Static" has paralized the enemy till the end of time.>]],Color3.fromRGB(255,255,255))
			end
          end
  end
end)









userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.V then
              
         --player is typing
         
         if phase == "3" or phase == "4" then
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://129423131"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1)
				local SFX = Instance.new("Sound",game.Players.LocalPlayer:WaitForChild("StarterPlaylist"))
				SFX.Volume = 1.5
				SFX.SoundId = "rbxassetid://260433721" -- Sound ID
				SFX.Looped = false
				SFX:Play()
				talk([[[System Message]
<Skill: "Remove Haram" has been used.>]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 1, 0),
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value			
				local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Knockback", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
						["Velocity"] = Vector3.new(0, 10, 0),
						["CombatInv"] = true,
						["Damage"] = 35
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
					
					wait(3)
					talk([[[System Message]
<Skill Detection: "Remove Haram" has detected enemy is haram.>]],Color3.fromRGB(255,255,255))
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
					Event:InvokeServer(A_1, A_2, A_3)
				wait(3)
				talk([[[System Message]
<Skill: "Remove Haram" has halal the enemy.>]],Color3.fromRGB(255,255,255))
			end
          end
  end
end)









userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.G then
              
         --player is typing
         
         talk([[Stare~]],Color3.fromRGB(255,255,255))
				local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
					local A_3 = 
					{
						["HitTime"] = 2.5,
						["Type"] = "Normal", 
						["HitEffect"] = "BoneHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
						["Velocity"] = Vector3.new(0, 0, 0),
						["CombatInv"] = true,
						["Damage"] = 0
					}
					local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				repeat
					Event:InvokeServer(A_1, A_2, A_3)
					wait(2.4)
				until game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
          end
  end
end)


userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.T then
              
         --player is typing
         
         if phase == "3" or phase == "4" then
	    if aura == true then
		talk([[[System Message]
<Skill: "Aura" has been disabled.>]],Color3.fromRGB(255,255,255))
aura = false
elseif aura == false then
    talk([[[System Message]
<Skill: "Aura" has been enabled.>]],Color3.fromRGB(255,255,255))
aura = true
end
end
          end
  end
end)

userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.B then
              
         --player is typing
         
         talk([[[System Message]
<Skill: "Warped Evil Eye" has been self used.>]],Color3.fromRGB(255,255,255))
		local A_1 = getrenv()._G.Pass
local A_2 = game.Players.LocalPlayer.Character
local A_3 = 
	{
		["HitTime"] = 2.5,
		["Type"] = "Knockback", 
		["HitEffect"] = "BoneHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
		["Velocity"] = Vector3.new(0, 1, 0),
		["CombatInv"] = true,
		["Damage"] = 0
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
          end
  end
end)

userInputService.InputBegan:Connect(function(input,gameProcessedEvent)
    local keyPressed = input.KeyCode
    
      if not gameProcessedEvent then
          if keyPressed == Enum.KeyCode.C then
              
         --player is typing
         
         if sdis == true then
	        sdis = false
	        talk([[[System Message]
<Skill: "Social Distancing" has been disabled.>]],Color3.fromRGB(255,255,255))
	    elseif sdis == false then
	        sdis = true
	        talk([[[System Message]
<Skill: "Social Distancing" has been enabled.>]],Color3.fromRGB(255,255,255))
	        while sdis == true do
	            game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(0))})

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(180))})
	    local player = game.Players.LocalPlayer
local Character = player.Character
for _,b in pairs(game.workspace:GetChildren()) do

if b:FindFirstChildOfClass('Humanoid') then
if b:FindFirstChild('Torso') then
range = (Character.PrimaryPart.Position - b.PrimaryPart.Position).Magnitude
if range <15 and b.Name ~= player.Name then
		
		local A_1 = getrenv()._G.Pass
local A_2 = b
local A_3 = 
	{
		["HitTime"] = 2.5,
		["Type"] = "Knockback", 
		["HitEffect"] = "BoneHitEffect",
		["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,  
		["Sound"] = game:GetService("ReplicatedStorage").Sounds.VaccumSoundEffect,
		["Velocity"] = Vector3.new(0, 0.1, 0),
		["CombatInv"] = true,
		["Damage"] = 35
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3)
end
end
end
end
wait(0.2)
end

	    end
          end
  end
end)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
        if phase == "3" then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeHeal"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))


elseif phase == "4" then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end


end)
pos = 0
pos2 = 180
while true do wait()
    if phase == "3" then
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeHeal"
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    end
    
	if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
		if phase == "1" then 
			phase = "2"
			print("2")
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4900761581"
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(1)
			music:Stop()
			music.SoundId = "rbxassetid://1185688293" -- Sound ID
			music:Play()
			talk("...",Color3.fromRGB(255,255,255))
			wait(3)
			talk([[[System Message]
<Skill: "Respawn" has been used.>]],Color3.fromRGB(255,255,255))
			game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiro..."
		elseif phase == "2" then
		    wait(5)
		    if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
		        
            game.Players.LocalPlayer.Character.Humanoid.Health = 1
			phase = "3"
			
			print("3")
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://4900761581"
			
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(0.6)
			music:Stop()
			music.SoundId = "rbxassetid://422954483" -- Sound ID
			music:Play()
			talk([[[System Message]
<User: Evolution to god has started..>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Skill: "Hacking the System" has been used.>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Skill: "Annihilating Evil Eye" has evolved into "Evil Eye of Extinction".>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Skill: "Evil Eye of Static" has been acquired.>]],Color3.fromRGB(0, 234, 255))
wait(3)
			talk([[[System Message]
<Detection: User has been detected as halal.>]],Color3.fromRGB(0, 234, 255))
			game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName.Text = "Shiraori"
			end
		elseif phase == "3" then
			
			wait(3)
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
			phase = "4"
			print("4")
			
            game.Players.LocalPlayer.Character.Humanoid.Health = 1
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://5869844599"
			
			local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
			k:Play()
			k:AdjustSpeed(2)
			music:Stop()
			music.SoundId = "rbxassetid://7337985832" -- Sound ID
			music:Play()
			talk([[[System Message]
<User: Evolution to god has been completed..>]],Color3.fromRGB(0, 234, 255))
			wait(3)
			talk([[[System Message]
<Notice: You are free from the bounds of health.>]],Color3.fromRGB(0, 234, 255))
			end
			
		else

		end
	end






    if phase == "3" or phase == "4" then
        if sdis == false then
            if aura == true then

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(255, 255, 255),
[5] = CFrame.Angles(0, 0, math.rad(pos))})
pos = pos + 2

game:GetService("ReplicatedStorage").Remotes.Events:FireServer({
[1] = getrenv()._G.Pass,
[2] = "SlashEffect",
[3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1,
[4] = Color3.fromRGB(0, 0, 0),
[5] = CFrame.Angles(0, 0, math.rad(pos2))})
pos2 = pos2 - 2
wait(0.1)
end
end
end
end