local plr = game.Players.LocalPlayer
local char = plr.Character
local dPart = char:FindFirstChild("DisplayPart")
if dPart ~= nil then
	dPart:Destroy()
end

for i,v in pairs(char:GetChildren()) do
	if v:IsA("Accessory") then
		v:Destroy()
	end
	if v:IsA("Pants") then
		v:Destroy()
	end
	if v:IsA("Shirt") then
		v:Destroy()
	end
	if v:IsA("BodyColors") then
		v:Destroy()
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	local dPartT = v.Character:FindFirstChild("DisplayPart")
	if dPartT ~= nil then
		dPartT.FrontGui.RoleLabel.Text = v.Name
		dPartT.FrontGui.RoleLabel.Visible = true
		dPartT.BackGui.RoleLabel.Text = v.Name
		dPartT.BackGui.RoleLabel.Visible = true
	end
end