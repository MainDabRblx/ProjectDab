local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("Scripts")
local window2 = library:Window("LocalPlayer")
local window3 = library:Window("Teleport Areas")

window2:Slider("Walkspeed",16,120,5, function(value)
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)


window2:Slider("JumpPower",50,300,20, function(value)
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)






window2:Toggle("Noclip", false, function(boolrfq)
    getgenv().trfffffinketcs = boolrfq
        game:GetService("RunService").RenderStepped:Connect(function()
if getgenv().trfffffinketcs then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)
window1:Label("Server-Side 1", Color3.fromRGB(127, 143, 166))

window1:Box("FE Play Song", function(val52xue, focuslost)
    if focuslost then
getgenv().audioId = val52xue -- self explanatory
getgenv().soundVolume = 10 -- up to 10
local userdata_1 = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions;
local userdata_2 = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions.ScrollingFrame.List;
local userdata_3 = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions.ScrollingFrame.List.Template;
local table_2 = {
	["Name"] = 'Clap',
	["GroupColor"] = 'Bright blue'
};
local table_1 = {
	["Sleep"] = {
		["SoundLooped"] = true,
		["R15"] = 4308418502,
		["FaceId"] = 66329905,
		["Object"] = 'Sleep',
		["Name"] = 'Sleep',
		["R6"] = 868450390,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Volume"] = soundVolume,
		["MovementCancel"] = true
	},
	["Bye"] = {
		["Name"] = 'Bye',
		["R6"] = 154179312,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308390587,
		["Object"] = 'Bye'
	},
	["Point"] = {
		["Name"] = 'Point',
		["R6"] = 154188723,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308408568,
		["Object"] = 'Point'
	},
	["Bathtub"] = {
		["Name"] = 'Bathtub',
		["R6"] = 1799552363,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["R15"] = 1794938782,
		["Object"] = 'Bathtub'
	},
	["Glee"] = {
		["Object"] = 'Glee',
		["Name"] = 'Glee',
		["FaceId"] = 27802003,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308399012,
		["R6"] = 154159852
	},
	["Coffin"] = {
		["Name"] = 'Coffin',
		["MovementCancel"] = true,
		["R15"] = 2506115448,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Object"] = 'Coffin',
		["R6"] = 2506141081
	},
	["Twist"] = {
		["Name"] = 'Twist',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308333353,
		["Object"] = 'Twist'
	},
	["ToolHold"] = {
		["Name"] = 'ToolHold',
		["R6"] = 182393478,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308323620,
		["Object"] = 'ToolHold'
	},
	["Confused"] = {
		["Object"] = 'Confused',
		["Name"] = 'Confused',
		["FaceId"] = 120250454,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308393154,
		["R6"] = 154183110
	},
	["DrinkSmoothie"] = {
		["Object"] = 'DrinkSmoothie',
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Name"] = 'DrinkSmoothie',
		["R15"] = 3339779154
	},
	["DrinkCoffee"] = {
		["Object"] = 'DrinkCoffee',
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Name"] = 'DrinkCoffee',
		["R15"] = 3339576493
	},
	["Shocked"] = {
		["Object"] = 'Shocked',
		["Name"] = 'Shocked',
		["FaceId"] = 1601874588,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 1602091152,
		["R6"] = 1620310558
	},
	["Laugh"] = {
		["Object"] = 'Laugh',
		["Name"] = 'Laugh',
		["FaceId"] = 32063242,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308402710,
		["R6"] = 154166518
	},
	["Idle"] = {
		["Name"] = 'Idle',
		["Weight"] = 0.4,
		["R15"] = 507766388,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Idle',
		["R6"] = 180435571
	},
	["Jump"] = {
		["Name"] = 'Jump',
		["Weight"] = 0.7,
		["R15"] = 507765000,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Jump',
		["R6"] = 125750702
	},
	["Sad"] = {
		["Object"] = 'Sad',
		["Name"] = 'Sad',
		["FaceId"] = 76690153,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308410706,
		["R6"] = 153230853
	},
	["Run"] = {
		["Name"] = 'Run',
		["Weight"] = 1,
		["R15"] = 507767714,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Run',
		["R6"] = 180426354
	},
	["Swim"] = {
		["Name"] = 'Swim',
		["R6"] = 865902879,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["R15"] = 507784897,
		["Object"] = 'Swim'
	},
	["SwimIdle"] = {
		["Name"] = 'SwimIdle',
		["Weight"] = 0.5,
		["R15"] = 507785072,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'SwimIdle',
		["R6"] = 865918502
	},
	["ConfusionOrb"] = {
		["Name"] = 'ConfusionOrb',
		["R6"] = 866550588,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 866541157,
		["Object"] = 'ConfusionOrb'
	},
	["Punch"] = {
		["Name"] = 'Punch',
		["R6"] = 3175899997,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 3175791062,
		["Object"] = 'Punch'
	},
	["Amazed"] = {
		["Object"] = 'Amazed',
		["Name"] = 'Amazed',
		["FaceId"] = 45528113,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 154174346,
		["R6"] = 154174346
	},
	["Walk"] = {
		["Name"] = 'Walk',
		["Weight"] = 0.6,
		["R15"] = 507777826,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Walk',
		["R6"] = 180426354
	},
	["Swing"] = {
		["Name"] = 'Swing',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308330448,
		["Object"] = 'Swing'
	},
	["Shuffle"] = {
		["Name"] = 'Shuffle',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308343244,
		["Object"] = 'Shuffle'
	},
	["Whistle"] = {
		["Object"] = 'Whistle',
		["Name"] = 'Whistle',
		["Weight"] = 0.4,
		["R15"] = 4308430737,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R6"] = 180435571,
		["FaceId"] = 22877631
	},
	["Cheer"] = {
		["Object"] = 'Cheer',
		["Name"] = 'Cheer',
		["FaceId"] = 27802003,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 507770677,
		["R6"] = 129423030
	},
	["Evil"] = {
		["Object"] = 'Evil',
		["Name"] = 'Evil',
		["FaceId"] = 1604383339,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308438228,
		["R6"] = 1620296629
	},
	["HipHop"] = {
		["Name"] = 'HipHop',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308346808,
		["Object"] = 'HipHop'
	},
	["Dance2"] = {
		["Name"] = 'Dance2',
		["MovementCancel"] = true,
		["R15"] = 507776043,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Object"] = 'Dance2',
		["R6"] = 182436842
	},
	["Dance3"] = {
		["Name"] = 'Dance3',
		["MovementCancel"] = true,
		["R15"] = 507777268,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Object"] = 'Dance3',
		["R6"] = 182436935
	},
	["SitSeat"] = {
		["Name"] = 'SitSeat',
		["Weight"] = 0.99,
		["R15"] = 2506281703,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'SitSeat',
		["R6"] = 178130996
	},
	["Think"] = {
		["Object"] = 'Think',
		["Name"] = 'Think',
		["FaceId"] = 209715003,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308415882,
		["R6"] = 154185274
	},
	["Wave"] = {
		["Name"] = 'Wave',
		["R6"] = 128777973,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 507770239,
		["Object"] = 'Wave'
	},
	["Eat"] = {
		["Object"] = 'Eat',
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Name"] = 'Eat',
		["R15"] = 3343204532
	},
	["Fall"] = {
		["Name"] = 'Fall',
		["Weight"] = 0.7,
		["R15"] = 507767968,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Fall',
		["R6"] = 180436148
	},
	["ThrowCoin"] = {
		["Name"] = 'ThrowCoin',
		["R6"] = 156055482,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 867194400,
		["Object"] = 'ThrowCoin'
	},
	["Easy"] = {
		["Name"] = 'Easy',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308337079,
		["Object"] = 'Easy'
	},
	["Driving"] = {
		["Name"] = 'Driving',
		["Weight"] = 0.99,
		["R15"] = 866020346,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["Object"] = 'Driving',
		["R6"] = 178130996
	},
	["Sit"] = {
		["Name"] = 'Sit',
		["MovementCancel"] = true,
		["R15"] = 4308421826,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Object"] = 'Sit',
		["R6"] = 868508890
	},
	["SleepSeat"] = {
		["SoundLooped"] = true,
		["R15"] = 4308318405,
		["FaceId"] = 66329905,
		["Object"] = 'SleepSeat',
		["Name"] = 'SleepSeat',
		["R6"] = 869468579,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Volume"] = soundVolume,
		["MovementCancel"] = true
	},
	["Marashin"] = {
		["Name"] = 'Marashin',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308362239,
		["Object"] = 'Marashin'
	},
	["Scared"] = {
		["Object"] = 'Scared',
		["Name"] = 'Scared',
		["FaceId"] = 47206380,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308413393,
		["R6"] = 154170755
	},
	["Clap"] = {
		["Name"] = 'Clap',
		["R6"] = 868730451,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308424082,
		["Object"] = 'Clap'
	},
	["HipHop2"] = {
		["Name"] = 'HipHop2',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308356261,
		["Object"] = 'HipHop2'
	},
	["Die"] = {
		["Object"] = 'Die',
		["R15"] = 4308443969,
		["Name"] = 'Die',
		["MovementCancel"] = true,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R6"] = 1620270981,
		["FaceId"] = 1604616024
	},
	["Disgust"] = {
		["Object"] = 'Disgust',
		["Name"] = 'Disgust',
		["FaceId"] = 1598203828,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308435046,
		["R6"] = 1620305485
	},
	["Hi"] = {
		["Name"] = 'Hi',
		["R6"] = 154179312,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308390587,
		["Object"] = 'Hi'
	},
	["Flair"] = {
		["Name"] = 'Flair',
		["MovementCancel"] = true,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308358633,
		["Object"] = 'Flair'
	},
	["Dance"] = {
		["Name"] = 'Dance',
		["MovementCancel"] = true,
		["R15"] = 507771019,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["Object"] = 'Dance',
		["R6"] = 182435998
	},
	["Climb"] = {
		["Name"] = 'Climb',
		["R6"] = 180436334,
		["Priority"] = 'Enum.AnimationPriority.Core',
		["R15"] = 507765644,
		["Object"] = 'Climb'
	},
	["WashHands"] = {
		["Name"] = 'WashHands',
		["R6"] = 1620296629,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 1799726387,
		["Object"] = 'WashHands'
	},
	["ScaredOpeingPumpkin"] = {
		["Object"] = 'ScaredOpeingPumpkin',
		["Name"] = 'ScaredOpeingPumpkin',
		["FaceId"] = 47206380,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Idle',
		["R15"] = 867226524,
		["R6"] = 154170755
	},
	["Angry"] = {
		["Object"] = 'Angry',
		["Name"] = 'Angry',
		["FaceId"] = 14020216,
		["SoundId"] = audioId,
		["Priority"] = 'Enum.AnimationPriority.Action',
		["R15"] = 4308387518,
		["R6"] = 154168543
	}
};
local Target = game:GetService("Workspace").Main.LoadSoundsIntoHead;
for index, sound in pairs(game:service'Players'.LocalPlayer.Character.Head:GetChildren()) do
if sound:IsA'Sound' then
sound:Destroy()
end
end
Target:FireServer(table_1)
wait(.75)
game:GetService("Players").LocalPlayer.PlayerGui.UIEvents.ListItemPressed:Fire(userdata_1, userdata_2, userdata_3, table_2);
end
end)
window1:Toggle("FE Spam Sounds",false, function(State1)
        getgenv().hit = State1
        while wait() do
            if getgenv().hit then
           for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Sound") then 
v:Play()
end
end
end
end
end)
window1:Toggle("Spam Boxes",false, function(a1acra)
    getgenv().trin1eeeeeekets = a1acra
    while wait(.10) do
if getgenv().trin1eeeeeekets then
for _,v in pairs(workspace.SupplyButtons:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end
end
end)








window1:Button("0 Gravity Unanchored Things",function()
    	spawn(function()
	while true do
		game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game:GetService("RunService").Stepped:wait()
	end
end)
local function zeroGrav(part)
    if part:FindFirstChild("BodyForce") then return end
    local temp = Instance.new("BodyForce")
    temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
    temp.Parent = part
end

for i,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("Part") and v.Anchored == false then
        if not (v:IsDescendantOf(game.Players.LocalPlayer.Character)) then
            zeroGrav(v)
        end
    end
end

workspace.DescendantAdded:Connect(function(part)
    if part:IsA("Part") and part.Anchored == false then
        if not (part:IsDescendantOf(game.Players.LocalPlayer.Character)) then
            zeroGrav(part)
        end
    end
end)
end)

window1:Button("Bring Unanchored Bricks [E]",function()
    
local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Folder = Instance.new("Folder", game:GetService("Workspace"))
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
            if Players ~= game:GetService("Players").LocalPlayer then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
local function ForcePart(v)
    if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
        Mouse.TargetFilter = v
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2 
        AlignPosition.Attachment1 = Attachment1
    end
end
for _, v in next, game:GetService("Workspace"):GetDescendants() do
    ForcePart(v)
end
game:GetService("Workspace").DescendantAdded:Connect(function(v)
    ForcePart(v)
end)
UserInputService.InputBegan:Connect(function(Key, Chat)
    if Key.KeyCode == Enum.KeyCode.E and not Chat then
       Updated = Mouse.Hit + Vector3.new(0, 5, 0)
    end
end)
spawn(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        Attachment1.WorldCFrame = Updated
    end
    end)
end)
window1:Button("Become Manager",function()

--vars
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local humanoid = player.Character.Humanoid
local mteam = game:GetService("Teams").Manager
local man = mteam:GetPlayers()[1]
--deletes a glitchy chair in the office (optional)
if workspace:FindFirstChild("ExtraChair") and workspace.ExtraChair:FindFirstChild("Seat") then
	workspace.ExtraChair.Seat:Destroy()
end

if man then
	--check if he's respawning or sitting
	local htxt
	if man.Character==nil or man.Character:FindFirstChild("HumanoidRootPart")==nil or man.Character:FindFirstChild("Humanoid")==nil then
		htxt = "Failed because manager is respawning"
	end
	local target = man.Character.HumanoidRootPart
	if man.Character.Humanoid.Sit then
		htxt = "Failed because manager is sitting"
	end
	if htxt then
		local h = Instance.new("Hint",workspace)
		h.Text = htxt
		wait(3)
		h:Destroy()
		return
	end
	--get in a car
	if not workspace.Cars:IsAncestorOf(humanoid.SeatPart) then
		humanoid.Jump=true
		wait(0.1)
		for _,car in ipairs(workspace.Cars:GetChildren()) do
			if car:FindFirstChild("Driver") and car.Driver.Occupant==nil and car:FindFirstChild("Owner") and car.Owner.Value==nil then
				car.Driver:Sit(humanoid)
				wait(0.3)
				if humanoid.SeatPart then
					break
				end
			end
		end
	end
	local seat = humanoid.SeatPart
	local car = seat.Parent
	local returncf = CFrame.new(14,-4.5,21)*CFrame.Angles(0,math.pi/2,0)
	for j=1,4 do
		--attempt to sit manager
		seat.Anchored=false
		local e = 0
		while car.HoodSeat.Occupant==nil and mteam:GetPlayers()[1] and target.Parent and e<5 do
			local newpos = target.Position+Vector3.new(0,-3,0)+target.CFrame.lookVector*5.5+target.Velocity*.7
			local flatdir = (target.CFrame.lookVector*Vector3.new(1,0,1)).Unit --target's looking direction, flattened
			if not (flatdir.x < 2) then --inf
				flatdir = Vector3.new(1,0,0)
			end
			car:SetPrimaryPartCFrame(CFrame.new(newpos,newpos-flatdir))
			seat.Velocity=Vector3.new()
			local e2=0
			while car.HoodSeat.Occupant==nil and mteam:GetPlayers()[1] and target.Parent and e2<0.7 do
				e2=e2+wait()
			end
			e=e+e2
		end
		--attempt to move manager
		car:SetPrimaryPartCFrame(returncf)
		wait(.1)
		car:SetPrimaryPartCFrame(returncf)
		seat.Anchored=true
		e = 0
		while mteam:GetPlayers()[1] and target.Parent and e<1 do
			e=e+wait()
		end
		car.HoodSeat:ClearAllChildren() --unsits anyone
		e = 0
		while mteam:GetPlayers()[1] and target.Parent and e<0.5 do
			e=e+wait()
		end
		if mteam:GetPlayers()[1]==nil or target.Parent==nil then
			break
		end
	end
	--reset car
	seat.Anchored=false
	wait()
	car:SetPrimaryPartCFrame(CFrame.new(120,10,-75))
	wait()
end

--become manager
humanoid.Jump=true
wait(0.1)
pcall(function() workspace.ManagerChair.Seat:Sit(humanoid) end)
wait(0.3)
humanoid.Jump=true
wait(0.1)
player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame+Vector3.new(5,5,6)
end)
window1:Button("Autofarm Gui",function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/9b9d62e9068d795f708c51551d439d21/raw/84a28a8d1fc501b9d200e8a2bd7cc831df0fbacf/gistfile1.txt", true))()
end)
window3:Label("Teleport Area", Color3.fromRGB(127, 143, 166))
window3:Button("Starting Zone",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 3, 198)
end)
window3:Button("Cashier Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 4, 80)
end)
window3:Button("Cook Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42, 4, 61)
end)
window3:Button("Manager Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37, 4, 3)
end)
window3:Button("Boxer Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 4, 31)
end)
window3:Button("Supplier Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 13, -1020)
end)
window3:Button("Delivery Area",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 4, -17)
end)




library:Keybind("Tab")
game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Important!",     
Text = "Ameicaa Was Here",
Button1 = "LMAO",Button2 = "Noob",     Duration = 20, })