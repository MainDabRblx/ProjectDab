-- Simple Aimbot and ESP
-- https://github.com/MainDabRblx/ProjectDab/blob/master/!ScriptHubImg/RobloxPlayerBeta_qfGt0xLT9L-min.png?raw=true
-- Gui to Lua
-- Version: 3.2

-- Instances:

local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextLabel")
local EspStatus = Instance.new("TextLabel")
local Name2 = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local LoadingBar = Instance.new("Frame")
local LdL = Instance.new("TextLabel")
local Asstss = Instance.new("TextLabel")
local LdL2 = Instance.new("TextLabel")

--Properties:

Gui.Name = "Gui"
Gui.Parent = game.CoreGui
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Move.Name = "Move"
Move.Parent = Gui
Move.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Move.BorderSizePixel = 0
Move.Position = UDim2.new(0.5, -150, 0.5, -101)
Move.Size = UDim2.new(0, 1, 0, 1)

Main.Name = "Main"
Main.Parent = Move
Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -150, 0.5, -101)
Main.Size = UDim2.new(0, 1, 0, 1)

Name.Name = "Name"
Name.Parent = Main
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderSizePixel = 0
Name.Size = UDim2.new(0, 301, 0, 50)
Name.Visible = false
Name.Font = Enum.Font.GothamBold
Name.Text = " Girable ESP & AIM"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 20.000

st1.Name = "st1"
st1.Parent = Main
st1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
st1.BackgroundTransparency = 1.000
st1.Position = UDim2.new(0.166112959, 0, 0.229357794, 0)
st1.Size = UDim2.new(0, 200, 0, 29)
st1.Visible = false
st1.Font = Enum.Font.GothamBold
st1.Text = ""
st1.TextColor3 = Color3.fromRGB(255, 255, 255)
st1.TextSize = 14.000

st1_2.Name = "st1"
st1_2.Parent = Main
st1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
st1_2.BackgroundTransparency = 1.000
st1_2.Position = UDim2.new(0.119601332, 0, 0.362385333, 0)
st1_2.Size = UDim2.new(0, 229, 0, 34)
st1_2.Visible = false
st1_2.Font = Enum.Font.GothamBold
st1_2.Text = "Press V to lock on a person inside ur view"
st1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
st1_2.TextScaled = true
st1_2.TextSize = 14.000
st1_2.TextWrapped = true

st1_3.Name = "st1"
st1_3.Parent = Main
st1_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
st1_3.BackgroundTransparency = 1.000
st1_3.Position = UDim2.new(0.119601332, 0, 0.555045843, 0)
st1_3.Size = UDim2.new(0, 229, 0, 34)
st1_3.Visible = false
st1_3.Font = Enum.Font.GothamBold
st1_3.Text = "Press L to enable esp loop and press T to update esp"
st1_3.TextColor3 = Color3.fromRGB(255, 255, 255)
st1_3.TextScaled = true
st1_3.TextSize = 14.000
st1_3.TextWrapped = true

EspStatus.Name = "EspStatus"
EspStatus.Parent = Main
EspStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspStatus.BackgroundTransparency = 1.000
EspStatus.Position = UDim2.new(0.119601332, 0, 0.747706413, 0)
EspStatus.Size = UDim2.new(0, 229, 0, 34)
EspStatus.Visible = false
EspStatus.Font = Enum.Font.GothamBold
EspStatus.Text = "Press O to change team based mode"
EspStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
EspStatus.TextScaled = true
EspStatus.TextSize = 14.000
EspStatus.TextWrapped = true

Name2.Name = "Name2"
Name2.Parent = Move
Name2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name2.BackgroundTransparency = 1.000
Name2.BorderSizePixel = 0
Name2.Size = UDim2.new(0, 301, 0, 50)
Name2.Visible = false
Name2.Font = Enum.Font.GothamBold
Name2.Text = " Girable ESP & AIM"
Name2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name2.TextSize = 20.000

Bar.Name = "Bar"
Bar.Parent = Move
Bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.5, -125, 0.5, -30)
Bar.Size = UDim2.new(0, 250, 0, 25)
Bar.Visible = false

LoadingBar.Name = "LoadingBar"
LoadingBar.Parent = Bar
LoadingBar.BackgroundColor3 = Color3.fromRGB(255, 139, 7)
LoadingBar.BorderSizePixel = 0
LoadingBar.Size = UDim2.new(0, 0, 0, 25)

LdL.Name = "LdL"
LdL.Parent = Move
LdL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LdL.BackgroundTransparency = 1.000
LdL.Position = UDim2.new(0.166112959, 0, 0.518348634, 0)
LdL.Size = UDim2.new(0, 200, 0, 19)
LdL.Font = Enum.Font.Gotham
LdL.Text = ""
LdL.TextColor3 = Color3.fromRGB(255, 255, 255)
LdL.TextSize = 14.000

Asstss.Name = "Asstss"
Asstss.Parent = Move
Asstss.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Asstss.BackgroundTransparency = 1.000
Asstss.Position = UDim2.new(0.166112959, 0, 0.605504572, 0)
Asstss.Size = UDim2.new(0, 200, 0, 19)
Asstss.Font = Enum.Font.Gotham
Asstss.Text = ""
Asstss.TextColor3 = Color3.fromRGB(255, 255, 255)
Asstss.TextSize = 14.000

LdL2.Name = "LdL2"
LdL2.Parent = Move
LdL2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LdL2.BackgroundTransparency = 1.000
LdL2.Position = UDim2.new(0.166112959, 0, 0.692660511, 0)
LdL2.Size = UDim2.new(0, 200, 0, 19)
LdL2.Font = Enum.Font.Gotham
LdL2.Text = ""
LdL2.TextColor3 = Color3.fromRGB(255, 255, 255)
LdL2.TextSize = 14.000

-- Scripts:

local function FYGHS_fake_script() -- Gui.LocalScript 
	local script = Instance.new('LocalScript', Gui)

	local main = script.Parent.Move
	local lbar = script.Parent.Move.Bar.LoadingBar
	local main2 = script.Parent.Move.Main
	
	if(game:IsLoaded()) then
		main:TweenSize(UDim2.new(0, 301, 0, 218)) -- {0, 301},{0, 218}
		wait(0.5)
		script.Parent.Move.Name2.Visible = true
		script.Parent.Move.Bar.Visible = true
		lbar:TweenSize(UDim2.new(0, 250,0, 25),0,0,5) -- {0, 250},{0, 25}
		-- TEXT SPEACH THING
	    local text = "Loading.."
		for i = 1, #text do
			script.Parent.Move.LdL.Text = string.sub(text, 1, i)
	 		wait()
		end
		wait(0.5)
		script.Parent.Move.LdL.Text = "Loaded!"
		wait(0.5)
		local text = "Preparing Assets.."
		for i = 1, #text do
			script.Parent.Move.Asstss.Text = string.sub(text, 1, i)
			wait()
		end
		wait(0.5)
		script.Parent.Move.Asstss.Text = "Assets Prepared!"
		wait(0.5)
		local text = "Making sure everything is ok.."
		for i = 1, #text do
			script.Parent.Move.LdL2.Text = string.sub(text, 1, i)
			wait()
		end
		wait(0.5)
		script.Parent.Move.LdL2.Text = "Everything seems to be ok!"
	end
	wait(0.5)
	main:TweenPosition(UDim2.new(0.5, -150, 0.5, -900)) -- {0.5, -150},{0.5, -101}
	main2:TweenPosition(UDim2.new(0.5, -150, 0.5, 650)) -- {0.5, -150},{0.5, 650}
		wait(1)
		-- FOR THE MAIN PART
		
		main2.Visible = true
		main2.Active = true
		main2.Draggable = true
		
		main2:TweenSize(UDim2.new(0, 301, 0, 218))
		wait(0.5)
	Name.Visible = true
	st1.Visible = true
	st1_2.Visible = true
	st1_3.Visible = true
	EspStatus.Visible = true
	
	local main123 = script.Parent.Move.Main
				local hotkey123 = Enum.KeyCode.Insert
				local UIS123 = game:GetService("UserInputService")
				local open123 = false
				
				UIS123.InputBegan:Connect(function(key)
				if key.KeyCode == hotkey123 then
				if UIS123:GetFocusedTextBox() == nil then
				if open123 == false then
				open123 = true
				main123.Visible = open123
				elseif open123 == true then
				open123 = false
				main123.Visible = open123
				end
				end
				end
	end)
	
	-- SCRIPTS::
	
	local plrs = game:GetService("Players")
	local TeamBased = true ; local teambasedswitch = "o"
	local presskeytoaim = true; local aimkey = "v"
	local raycast = false
	
	local espupdatetime = 5; autoesp = false
	
	
	
	local lockaim = true; local lockangle = 5
	
	local lplr = game:GetService("Players").LocalPlayer
	Gui.ResetOnSpawn = false
	Gui.Name = "Chat"
	Gui.DisplayOrder = 999
	
	f = {}
	local espforlder
	
	f.addesp = function()
		--print("ESP ran")
		if espforlder then
		else
			espforlder = Instance.new("Folder")
			espforlder.Parent = game.Workspace.CurrentCamera
		end
		for i, v in pairs(espforlder:GetChildren()) do
			v:Destroy()
		end
		for _, plr in pairs(plrs:GetChildren()) do
			if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
				if TeamBased == true then
					if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
						local e = espforlder:FindFirstChild(plr.Name)
						if not e then
							--print("Added esp for team based")
							local bill = Instance.new("BillboardGui", espforlder)
							bill.Name = plr.Name
							bill.AlwaysOnTop = true
							bill.Size = UDim2.new(1,0,1,0)
							bill.Adornee = plr.Character.Head
							local Frame = Instance.new('Frame',bill)
							Frame.Active = true
							Frame.BackgroundColor3 = Color3.new(0.541176, 0.168627, 0.886275)
							Frame.BackgroundTransparency = 0
							Frame.BorderSizePixel = 0
							Frame.AnchorPoint = Vector2.new(.5, .5)
							Frame.Position = UDim2.new (0.5,0,0.5,0)
							Frame.Size = UDim2.new (1,0,1,0)
							Frame.Rotation = 0
							plr.Character.Humanoid.Died:Connect(function()
								bill:Destroy()
							end)
						end
					end
				else
					local e = espforlder:FindFirstChild(plr.Name)
					if not e then
						--print("Added esp")
						local bill = Instance.new("BillboardGui", espforlder)
						bill.Name = plr.Name
						bill.AlwaysOnTop = true
						bill.Size = UDim2.new(1,0,1,0)
						bill.Adornee = plr.Character.Head
						local Frame = Instance.new('Frame',bill)
						Frame.Active = true
						Frame.BackgroundColor3 = Color3.new(0.541176, 0.168627, 0.886275)
						Frame.BackgroundTransparency = 0
						Frame.BorderSizePixel = 0
						Frame.AnchorPoint = Vector2.new(.5, .5)
						Frame.Position = UDim2.new (0.5,0,0.5,0)
						Frame.Size = UDim2.new (1,0,1,0)
						Frame.Rotation = 0
						plr.Character.Humanoid.Died:Connect(function()
							bill:Destroy()
						end)
					end
				end
				
				
			end
		end
	end
	local cam = game.Workspace.CurrentCamera
	
	local mouse = lplr:GetMouse()
	local switch = false
	local key = "k"
	local aimatpart = nil
	mouse.KeyDown:Connect(function(a)
		if a == "t" then
			print("worked 1")
			f.addesp()
		elseif a == "u" then
			if raycast == true then
				raycast = false
			else
				raycast = true
			end
		elseif a == "l" then
			if autoesp == false then
				autoesp = true
			else
				autoesp = false
			end
		end
		if a == "j" then
			if mouse.Target then
				mouse.Target:Destroy()
			end
		end
		if a == key then
			if switch == false then
				switch = true
			else
				switch = false
				if aimatpart ~= nil then
					aimatpart = nil
				end
			end
		elseif a == teambasedswitch then
			if TeamBased == true then
				TeamBased = false
				teambasedstatus.Text = tostring(TeamBased)
			else
				TeamBased = true
				teambasedstatus.Text = tostring(TeamBased)
			end
		elseif a == aimkey then
			if not aimatpart then
				local maxangle = math.rad(20)
				for i, plr in pairs(plrs:GetChildren()) do
					if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
						if TeamBased == true then
							if plr.Team.Name ~= lplr.Team.Name then
								local an = checkfov(plr.Character.Head)
								if an < maxangle then
									maxangle = an
									aimatpart = plr.Character.Head
								end
							end
						else
							local an = checkfov(plr.Character.Head)
								if an < maxangle then
									maxangle = an
									aimatpart = plr.Character.Head
								end
								print(plr)
						end
						plr.Character.Humanoid.Died:Connect(function()
							if aimatpart.Parent == plr.Character or aimatpart == nil then
								aimatpart = nil
							end
						end)
					end
				end
			else
				aimatpart = nil
			end
		end
	end)
	
	function getfovxyz (p0, p1, deg)
		local x1, y1, z1 = p0:ToOrientation()
		local cf = CFrame.new(p0.p, p1.p)
		local x2, y2, z2 = cf:ToOrientation()
		--local d = math.deg
		if deg then
			--return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
		else
			return Vector3.new((x1-x2), (y1-y2), (z1-z2))
		end
	end
	
	function getaimbotplrs()
		plrsforaim = {}
		for i, plr in pairs(plrs:GetChildren()) do
			if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then
				
				if TeamBased == true then
					if plr.Team.Name ~= lplr.Team.Name then
						local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
						local r = Ray.new(cf, cf.LookVector * 10000)
						local ign = {}
						for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
							if v:IsA("BasePart") then
								table.insert(ign , v)
							end
						end
						local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
						if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
							table.insert(plrsforaim, obj)
						end
					end
				else
					local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
					local r = Ray.new(cf, cf.LookVector * 10000)
					local ign = {}
					for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
						if v:IsA("BasePart") then
							table.insert(ign , v)
						end
					end
					local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
					if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
						table.insert(plrsforaim, obj)
					end
				end
				
				
			end
		end
	end
	
	function aimat(part)
		cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
	end
	function checkfov (part)
		local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
		local angle = math.abs(fov.X) + math.abs(fov.Y)
		return angle
	end
	
	game:GetService("RunService").RenderStepped:Connect(function()
		if aimatpart then
			aimat(aimatpart)
			if aimatpart.Parent == plrs.LocalPlayer.Character then
				aimatpart = nil
			end
		end	
			if raycast == true and switch == false and not aimatpart then
				getaimbotplrs()
				aimatpart = nil
				local maxangle = 999
				for i, v in ipairs(plrsforaim) do
					if v.Parent ~= lplr.Character then
						local an = checkfov(v)
						if an < maxangle and v ~= lplr.Character.Head then
							maxangle = an
							aimatpart = v
							print(v:GetFullName())
							v.Parent.Humanoid.Died:connect(function()
								aimatpart = nil
							end)
						end
					end
				end
			
		end
	end)
	delay(0, function()
		while wait(espupdatetime) do
			if autoesp == true then
				pcall(function()
				f.addesp()
				end)
			end
		end
	end)
	warn("LOADED!")
game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Loaded Girable!";
		Text = "Made by sirmeme(FPS GUI) remade by 0x45 (GUI and renamed it)";
		Duration = 3;
	})
	wait(0.5)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "HELP!";
		Text = "GUI is draggable, open and close is on INSERT button";
		Duration = 3;
		})
end
coroutine.wrap(FYGHS_fake_script)()
