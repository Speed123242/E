local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local rs = game:GetService("RunService")
player.Chatted:Connect(function(mag, secipient)
    if string.sub(mag,1,1) == ":" then
        print("false command")
        local splitstring = string.split(mag, " ")
        if splitstring[1] == ":kill" then
            for _,PlayerTarget in pairs(Players:GetPlayers()) do
		if string.sub(string.lower(PlayerTarget.Name),1,string.len(splitstring[2])) == string.lower(splitstring[2]) then
		print(PlayerTarget)
            local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
    }
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
for i,v in pairs(player.Character.Attacks:GetChildren()) do
    print(v.Name)
if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
    print(v.Name)
local detect 
detect = rs.Heartbeat:Connect(function()
    if PlayerTarget.Character:WaitForChild("Humanoid").Health == 0 then
        v:Destroy()
        detect:disconnect()
        print(PlayerTarget.Character.Name) --should print a player only once
        else
            
v.Position = PlayerTarget.Character.LockOn.Position - Vector3.new(0,4,0)
local args = {
    [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Hit",
        [4] = v,
        [5] = PlayerTarget.Character.HumanoidRootPart.CFrame,
        [6] = PlayerTarget.Character.HumanoidRootPart
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

    
end

end)
end
end
end
end
end
end
end)


game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(child)
    if child.Name == "CarrotHitEffect" then
        child:Destroy()
end

    end)