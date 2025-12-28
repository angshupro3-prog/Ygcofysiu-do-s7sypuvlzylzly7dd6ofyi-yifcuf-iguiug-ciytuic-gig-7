local Players = game:GetService("Players")

local function setup(player)
	local leaderstats = player:WaitForChild("leaderstats")
	local days = leaderstats:WaitForChild("Days")

	task.spawn(function()
		while player.Parent do
			task.wait(1)
			days.Value += 10
		end
	end)
end

for _, player in ipairs(Players:GetPlayers()) do
	setup(player)
end

Players.PlayerAdded:Connect(setup)
