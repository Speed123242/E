		--Some Varibles
        local Player = game.Players.LocalPlayer
        Character = game.Players.LocalPlayer.Character
        local Backpack = Player.Backpack
        --Spawn Character
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
        wait(1)
        game.Players.LocalPlayer.Character.Head.HealthBar.Frame.PName:Destroy()
        --Set Animations
        wait(1)
        spawn(function()
        player = game.Players.LocalPlayer
        char = player.Character
        for _,v in pairs(player.Backpack.Main:GetChildren()) do
        er = string.lower(v.Name)
        if string.match(er,'moves') then
        v.Animations.Idle.AnimationId = "rbxassetid://4684237024"
        v.Animations.Walk.AnimationId = "rbxassetid://4370512420"
        v.Animations.Run.AnimationId = "rbxassetid://4576074471"
        v.Animations.Jump.AnimationId = "rbxassetid://4693979593"
        v.Animations.Block.AnimationId = "rbxassetid://4808343910"
        print('e')
        end
        end

        local module
        local modulelocation
        original = player.Backpack.Main
        clone = player.Backpack.Main:Clone()
        for _,v in pairs(original:GetDescendants()) do
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

        clonem1.Parent = eg
        clonem.Parent = eg
        originalm:Destroy()
        originalm1:Destroy()
        clone.Parent = player.Backpack

        wait()
        original:Destroy()
        end)
        --Set LMB 
        local player = game:GetService("Players").LocalPlayer
        local MoveAnimations = player.Backpack.Main.CharaMoves.Animations
        local ClickAnimations = player.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat
        local pass = getrenv()._G.Pass
        local remote = game.ReplicatedStorage.Remotes["Events"]

        ClickAnimations.Light3.AnimationId = "rbxassetid://4333546395"
        ClickAnimations.Light4.AnimationId = "rbxassetid://4348265296"
        --Delete Some stuff
        game.Players.LocalPlayer.Character["FullHateMode"]:Destroy()
        game.Players.LocalPlayer.Character["HateMode"]:Destroy()
        game.Players.LocalPlayer.Character["Karma"]:Destroy()
        game.Players.LocalPlayer.Character["HeartLocket"]:Destroy()
        game.Players.LocalPlayer.Character["HateArm"]:Destroy()
        --Set Music
        Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].SoundId = "rbxassetid://3052907076"
        --Set Voice
        game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://6128836964"
        --Music Player
        local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "8" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Music ]
Now Playing, -  The True Theme | Chara's theme]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].SoundId = "rbxassetid://5919201366"
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].Volume = 3
        end
        end)
        local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "9" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Music ]
Now Playing, -  TrainerTale Battle! Chara theme]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].SoundId = "rbxassetid://3106135700"
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].Volume = 3
        end
        end)
        local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "0" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Music ]
Now Playing, -  Dancetale | Chara's theme]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].SoundId = "rbxassetid://3052907076"
                Game.Players.LocalPlayer.StarterPlaylist['1Megalo Strike Back'].Volume = 3
        end
        end)
                --Blocking Player
        	    local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "=" then
                local A_1 =  {
                              [1] = getrenv()._G.Pass, 
                              [2] = "Chatted", 
                              [3] = [[[ nan ]
AutoBlocking = True!]],
                              [4] = Color3.fromRGB(255, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                        spawn(function()
                            local mt = getrawmetatable(game)
                            local backup = mt.__namecall
                            if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end

                            mt.__namecall = newcclosure(function(...)
                                local method = getnamecallmethod()
                                local args = {...}
                                if tostring(args[1]) == "Functions" then

                                    if tostring(args[2][2]) == "Blocking" then

                                        args[2][3] = true

                                    end

                                    return backup(unpack(args))

                                end
                                return backup(...)
                            end)
                        end)

                        local C_1 = {
                            [1] = getrenv()._G.Pass,
                            [2] = "Blocking",
                            [3] = true
                        }
                        local Target = game:GetService("ReplicatedStorage").Remotes.Functions
                        Target:InvokeServer(C_1)

                        game.Players.LocalPlayer.Character.Data.Blocking:GetPropertyChangedSignal("Value"):Connect(function()

                            if game.Players.LocalPlayer.Character.Data.Blocking.Value ~= true then

                                local C_1 = {
                                    [1] = getrenv()._G.Pass,
                                    [2] = "Blocking",
                                    [3] = true
                                }
                                local Target = game:GetService("ReplicatedStorage").Remotes.Functions
                                Target:InvokeServer(C_1)

                            end

                        end)
                end
                end)
        	    local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                if k == "-" then
                local A_1 =  {
                              [1] = getrenv()._G.Pass, 
                              [2] = "Chatted", 
                              [3] = [[[ nan ]
AutoBlocking = False!]],
                              [4] = Color3.fromRGB(255, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                        spawn(function()
                            local mt = getrawmetatable(game)
                            local backup = mt.__namecall
                            if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end

                            mt.__namecall = newcclosure(function(...)
                                local method = getnamecallmethod()
                                local args = {...}
                                if tostring(args[1]) == "Functions" then

                                    if tostring(args[2][2]) == "Blocking" then

                                        args[2][3] = false

                                    end

                                    return backup(unpack(args))

                                end
                                return backup(...)
                            end)
                        end)

                        local C_1 = {
                            [1] = getrenv()._G.Pass,
                            [2] = "Blocking",
                            [3] = false
                        }
                        local Target = game:GetService("ReplicatedStorage").Remotes.Functions
                        Target:InvokeServer(C_1)

                        game.Players.LocalPlayer.Character.Data.Blocking:GetPropertyChangedSignal("Value"):Connect(function()

                            if game.Players.LocalPlayer.Character.Data.Blocking.Value ~= false then

                                local C_1 = {
                                    [1] = getrenv()._G.Pass,
                                    [2] = "Blocking",
                                    [3] = false
                                }
                                local Target = game:GetService("ReplicatedStorage").Remotes.Functions
                                Target:InvokeServer(C_1)

                            end

                        end)
                end
                end)
        --Run Type
        local RunspeedBypass = Instance.new("BoolValue")
        RunspeedBypass.Name = "Battling"
        RunspeedBypass.Parent = game.Players.LocalPlayer.Character
        wait(0.3)
        game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 90
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 25
        --Anti-Ban Helper
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
            --Chara Buff
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
            --Erase Them From the timeline =)
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "z" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3786809782"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
Partner, let us erase this pointless timeline NOW!]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
                local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BiggerBurstEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["HitTime"] = 1,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                    ["Damage"] = 0
                }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local char = game.Players.LocalPlayer.Character
                local clone = script:Clone()
                clone.Parent = char
                wait(8)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
What? You don't want to erase this pointless timeline with me?]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(8)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
Well =)]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(2.10)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
I'LL JUST ERASE YOU WITH IT! =)]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(4)
                k:stop()
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3788765583"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.50)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
            end
            end)
            --Erase Them From the timeline =)
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "z" then
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3786809782"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
Partner, let us erase this pointless timeline NOW!]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local A_1 = getrenv()._G.Pass
                local args = {
                [1] = getrenv()._G.Pass,
                [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
                [3] = {
                    ["Type"] = "Knockback",
                    ["HitEffect"] = "BiggerBurstEffect",
                    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                    ["HitTime"] = 1,
                    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                    ["Damage"] = 0
                }
                }
                game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
                local char = game.Players.LocalPlayer.Character
                local clone = script:Clone()
                clone.Parent = char
                wait(8)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
What? You don't want to erase this pointless timeline with me?]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(8)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
Well =)]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(2.10)
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
I'LL JUST ERASE YOU WITH IT! =)]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                wait(4)
                k:stop()
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://3788765583"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1.50)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.BaneSound,
						["Velocity"] = Vector3.new(0,0.0,0), 
						["CombatInv"] = true,
						["Damage"] = 0
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
            end
            end)
            --It Fills You WIth Determination
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "x" then
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4333546395"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348265296"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.3)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4333546395"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348265296"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                wait(0.1)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4333546395"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing1, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 0.5, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt2,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348265296"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
                            local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4348788816"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(1)
                        local A_1 = 
                        {
                            [1] = getrenv()._G.Pass, 
                            [2] = "SlashEffect", 
                            [3] = game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash.Swing2, 
                            [4] = Color3.new(0, 0, 0)
                        }
                        local Event = game:GetService("ReplicatedStorage").Remotes.Events
                        Event:FireServer(A_1)
                wait(0.1)
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "HeavyHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
                        ["CameraShake"] = "BigExplosion",
						["Velocity"] = Vector3.new(0,130,0), 
						["CombatInv"] = true,
						["Damage"] = 25
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
              local args = {
                [1] = {
                    [1] = getrenv()._G.Pass,
                    [2] = "AreaAttack",
                    [3] = "Start",
                },
            }

            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ nan ]
Determination Fills Within Your Soul...]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                end
                end)
                --Something even frisk couldn't do =) 
                local mouse = game.Players.LocalPlayer:GetMouse()
                mouse.KeyDown:Connect(function(k) 
                    if k == "c" then
                    local A_1 =  {
                      [1] = getrenv()._G.Pass, 
                      [2] = "Chatted", 
                      [3] = [[[ Chara ]
I'll show you something even frisk couldn't do =)]],
                      [4] = Color3.fromRGB(255, 0, 0)
                }
                local Event = game:GetService("ReplicatedStorage").Remotes.Events
                Event:FireServer(A_1)
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://4361511573"
                local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                k:Play()
                k:AdjustSpeed(0.70) 
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Normal", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 10
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)

                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileDarkRed",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileDarkRed",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 35
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local A_1 = getrenv()._G.Pass
				local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				local A_3 = 
					{
						["HitTime"] = 1, 
						["Type"] = "Knockback", 
						["HitEffect"] = "KnifeHitEffect",
						["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt1,
						["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeBurst,
						["Velocity"] = Vector3.new(0,-0.1,0), 
						["CombatInv"] = true,
						["Damage"] = 35
					}
				local Event = game:GetService("ReplicatedStorage").Remotes.Damage
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
				Event:InvokeServer(A_1, A_2, A_3)
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                local args = {
                    [1] = {
                        [1] = getrenv()._G.Pass,
                        [2] = "KnifeProjectileOrange",
                        [3] = "Spawn",
                        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1 + Vector3.new(0,0,0), 
                                },
                            }

                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
                            wait(3)
                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                Title = "Cooldown";
                                Text = "5";
                                Icon = "rbxassetid://4492172626";
                                Duration = 1;
                            })
                            wait(1)
                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                Title = "Cooldown";
                                Text = "4";
                                Icon = "rbxassetid://4492172626";
                                Duration = 1;
                            })
                            wait(1)
                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                Title = "Cooldown";
                                Text = "3";
                                Icon = "rbxassetid://4492172626";
                                Duration = 1;
                            })
                            wait(1)
                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                Title = "Cooldown";
                                Text = "2";
                                Icon = "rbxassetid://4492172626";
                                Duration = 1;
                            })
                            wait(1)
                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                Title = "Cooldown";
                                Text = "1";
                                Icon = "rbxassetid://4492172626";
                                Duration = 1;
                            })

                end
                end)





            while wait(0.5) do 
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
            end