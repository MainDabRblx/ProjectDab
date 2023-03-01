-- Originally found at https://pastebin.com/raw/DMD06gP6
if game.PlaceId == 5171347293 then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "If the GUI does not appear",
		Text = [[1. Execute again,
		2. There may be errors with the script. Screenshot the dev console (press F9) and contact the developer.]],
		Duration = 5
	})
wait(3)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cabin Crew Simulator Exploit/Hack (Powerful, lightweight)", "DarkTheme")
local FlightNumber
local Patched = false --DO NOT MODIFY
local StarterGui = game:GetService("StarterGui")
local PlayerCharacter = game:GetService("Players").LocalPlayer.Character
 --Main
 local MainTab = Window:NewTab("Mid/Flight Hacks")
 local GamepassTab = Window:NewTab("Gamepass Hacks")
 local LocalPlayerTab = Window:NewTab("Player")
 local LocalPlayerSection = LocalPlayerTab:NewSection("Player")
 local OtherTab = Window:NewTab("Other")
 local OtherSection = OtherTab:NewSection("Other")
 local GamepassSection = GamepassTab:NewSection("Disable/Enable (get) Gamepasses")
 local MainRegularSection = MainTab:NewSection("Regular")
 local MainClickSection = MainTab:NewSection("Regular (Must be clicked multiple times)")
 local OtherCheatSection = OtherTab:NewSection("Other Exploits")

 if Patched then
    StarterGui:SetCore("SendNotification", {
		Title = "Patched",
		Text = "The script is patched. you can continue to use it although some functions may not work.",
		Duration = 5
	})
 end

 for i, v in pairs(workspace.flights:GetChildren()) do
	if v:FindFirstChild("clientFolder") then
		print("flight check test passed")
		FlightNumber = v.Name

		break
	end
end
function GetObjectFromFullName(fullName)
	local segments = fullName:split(".")
	local current = game

	for _,location in pairs(segments) do
		current = current[location]
	end

	return current
end

 function fireproximityprompt(Obj, Amount, Skip)
	if Obj.ClassName == "ProximityPrompt" then 
		Amount = Amount or 1
		local PromptTime = Obj.HoldDuration
		if Skip then 
			Obj.HoldDuration = 0
		end
		for i = 1, Amount do 
			Obj:InputHoldBegin()
			if not Skip then 
				wait(Obj.HoldDuration)
			end
			Obj:InputHoldEnd()
		end
		Obj.HoldDuration = PromptTime
	else 
		error("userdata<ProximityPrompt> expected")
	end
end

function CloseAllLuggageDoor()
	local function EnableCameraMovement()
		local Camera = workspace.CurrentCamera or workspace.Camera
		repeat
			wait();
			Camera.CameraType = Enum.CameraType.Scriptable;
		until Camera.CameraType == Enum.CameraType.Scriptable;
	end
	local function DisableCameraMovement()
		local Camera = workspace.CurrentCamera
		repeat
			wait();
			Camera.CameraType = Enum.CameraType.Custom;
		until Camera.CameraType == Enum.CameraType.Custom;
	end
	for i, v in pairs(workspace.flights:WaitForChild(FlightNumber).clientFolder:GetChildren()[1].overhead_bins:GetChildren()) do
		EnableCameraMovement()
		workspace.CurrentCamera.CFrame = CFrame.lookAt(Vector3.new(v.Handle.Position.X,v.Handle.Position.Y,v.Handle.Position.Z + 2), v.Handle.Orientation)
		fireproximityprompt(v.Handle.ProximityPrompt, 1, true)
		wait(.1)
		DisableCameraMovement()
		wait()
	end
end


function FixAllProblem()
	for i, v in pairs(workspace.flights:WaitForChild(FlightNumber).clientFolder:GetChildren()[1].npcs:GetChildren()) do
		if v.configurations.on_plane.Value == true then
			if v.Head.alerts:FindFirstChild("fix") then
				wait()
				PlayerCharacter.Client.Client.RemoteEvent:FireServer("Fix", "tray",GetObjectFromFullName(v:GetFullName()))
				PlayerCharacter.Client.Client.RemoteEvent:FireServer("Fix", "seatbelt",GetObjectFromFullName(v:GetFullName()))
				PlayerCharacter.Client.Client.RemoteEvent:FireServer("Fix", "seat",GetObjectFromFullName(v:GetFullName()))
			end
		end
	end
end
function ServeNPCAllFood(npc: Instance)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("Cart", "economy", "food")
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 1)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 2)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 3)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 4)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 5)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 6)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 7)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 8)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 9)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 10)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "economy", 11)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
end
function ServeNPCAllBeverage(npc: Instance)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("Cart", "economy", "beverage")
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 1)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 2)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 3)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 4)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 5)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 6)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 7)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 8)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 9)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 10)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "economy", 11)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
end
-- For First Class/ Buisness
function ServeNPCAllFoodFC(npc: Instance)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 1)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 2)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 3)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 4)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 5)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 6)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 7)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 8)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 9)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 10)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "food", "first_class", 11)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
end

function ServeNPCAllBeverageFC(npc: Instance)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 1)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 2)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 3)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 4)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 5)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 6)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 7)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 8)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 9)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 10)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GetItem", "beverage", "first_class", 11)
	PlayerCharacter.Client.Client.RemoteFunction:InvokeServer("GiveItem", npc)
end
function ServeAllNPCSFood()
	for i, v in pairs(workspace.flights:WaitForChild(FlightNumber).clientFolder:GetChildren()[1].npcs:GetChildren()) do
		if v.configurations.on_plane.Value == true then

			ServeNPCAllFood(v)
			ServeNPCAllBeverage(v)
		end
	end
end
function ServeAllNPCSFoodFC()
	for i, v in pairs(workspace.flights:WaitForChild(FlightNumber).clientFolder:GetChildren()[1].npcs:GetChildren()) do
		if v.configurations.on_plane.Value == true then

			ServeNPCAllFoodFC(v)
			ServeNPCAllBeverageFC(v)
		end
	end
end
function ThrowAllTrash()
	for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
		if v.Name == "alert" then
			for iv, vi in pairs(workspace.flights:WaitForChild(FlightNumber).clientFolder:GetChildren()[1].npcs:GetChildren()) do
				if vi.configurations.on_plane.Value == true then
					PlayerCharacter.Client.Client.RemoteEvent:FireServer("Trash", vi, v.Adornee)
				end
			end
		end
	end
end
-- Main Buttons
MainClickSection:NewButton("Close/Open Luggage doors", "Closes/Opens the luggage doors.", function()
    CloseAllLuggageDoor()
end)
MainRegularSection:NewButton("Fix All NPCs Problem", "This fixes all passengers alerts (except disruptive passengers).", function()
    FixAllProblem()
end)
MainRegularSection:NewButton("Serve All NPCs Meal", "This serves all NPCs meals. (Warning: Will serve all passengers all meal in your menu)", function()
   ServeAllNPCSFood()
end)
MainRegularSection:NewButton("Serve All NPCs Meal (First Class/Buisness)", "This serves all NPCs meals. (Warning: Will serve all passengers all meal in your menu)", function()
	ServeAllNPCSFoodFC()
 end)
 MainRegularSection:NewButton("Serve All NPCs Meal (At Start) (First Class/Buisness)", "This serves all NPCs meals. (Warning: Will serve all passengers all meal in your menu)", function()
	ServeNPCAllBeverageFC()
	wait()
 end)
MainClickSection:NewButton("Throw All NPCs Trash", "This throws all passengers meal", function()
    ThrowAllTrash()
end)
--Gamepass toggles
GamepassSection:NewToggle("Skilled Pilots", "Gets the gamepass.", function(state)
if state then
    game:GetService("Players").LocalPlayer.gamepasses["skilled_pilots"].Value = true
else
    game:GetService("Players").LocalPlayer.gamepasses["skilled_pilots"].Value = false
end
end)
GamepassSection:NewToggle("VIP", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["vip"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["vip"].Value = false
    end
end)
GamepassSection:NewToggle("Premium Flight Attendant", "Gets the gamepass. (Although you still have to pay the flight fee for the flight attendant)", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["premium_flight_attendant"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["premium_flight_attendant"].Value = false
    end
end)
GamepassSection:NewToggle("Custom Lighting", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["custom_lighting"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["custom_lighting"].Value = false
    end
end)
GamepassSection:NewToggle("Extra Design", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["extra_design"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["extra_design"].Value = false
    end
end)
GamepassSection:NewToggle("Emergency Control", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["emergency_control"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["emergency_control"].Value = false
    end
end)
GamepassSection:NewToggle("Premium Room", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["premium_room"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["premium_room"].Value = false
    end
end)
GamepassSection:NewToggle("Custom Music", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["custom_music"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["custom_music"].Value = false
    end
end)
GamepassSection:NewToggle("Multiplayer Connect", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["multiplayer"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["multiplayer"].Value = false
    end
end)
GamepassSection:NewToggle("Tail Logo", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["tail_logo"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["tail_logo"].Value = false
    end
end)
GamepassSection:NewToggle("2x Earnings", "Gets the gamepass.", function(state)
    if state then
        game:GetService("Players").LocalPlayer.gamepasses["x2_earnings"].Value = true
    else
        game:GetService("Players").LocalPlayer.gamepasses["x2_earnings"].Value = false
    end
    end)
OtherSection:NewButton("Refresh Flight", "Refreshes the flight ID.", function()
	for i, v in pairs(workspace.flights:GetChildren()) do
		if v:FindFirstChild("clientFolder") then
			print("refresh")
			FlightNumber = v.Name
	
			break
		end
	end
end)
OtherCheatSection:NewButton("Dark DEX V4", "Executes Dark DEX V4.", function()
	loadstring(game:HttpGet(("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"),true))()
end)
OtherCheatSection:NewButton("Remote Spy", "Executes Remote Spy.", function()
	-- Originally written by Autumn
-- Amended by asd & 3dsboy08
-- Fixed by wally - 8/22/19
-- Improved by Pyseph - 1/22/20

local hookfunc = hookfunction or replaceclosure or replace_closure;

spawn(function()
	local cGui = game:GetService'CoreGui';
	local consoleUI = cGui:FindFirstChild('DevConsoleMaster') or cGui:WaitForChild('DevConsoleMaster');
	local clientLog = consoleUI:FindFirstChild('ClientLog', true);
	if not clientLog then
		repeat wait()
		until consoleUI:FindFirstChild('ClientLog', true);
		clientLog = consoleUI:FindFirstChild('ClientLog', true);
	end;
	for i,v in next, clientLog:GetChildren() do
		if v:FindFirstChild'msg' then
			v.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					setclipboard(v.msg.Text);
				end;
			end);
		end;
	end;

	clientLog.ChildAdded:Connect(function(obj)
		if not obj:FindFirstChild'msg' then obj:WaitForChild'msg'; end;
		obj.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				setclipboard(obj.msg.Text);
			end;
		end);
	end);
end);

local enabled = {
	BindableEvent	= false,
	BindableFunction = false,
	RemoteEvent	  = true,
	RemoteFunction   = true
}

local ignore = {
	--[[ -- I'd personally recommend keeping this commented out, as game scripts can name their remotes these
	GetSetting = true,
	GetSelection = true,
	SelectionChanged = true,
	GetAwaiting = true
	--]]
}

local metatable = assert(getrawmetatable, "needs access to function 'getrawmetatable'")(game)
if setreadonly then
	setreadonly(metatable, false)
end

local function CountTable(t)
	local count, key = 0
	repeat
		key = next(t, key)
		if key ~= nil then
			count = count + 1
		end
	until key == nil
	return count
end

local Globals = {
	CFrame = 'CFrame.new(-)';
	Vector3 = 'Vector3.new(-)';
	Vector2 = 'Vector2.new(-)';
	UDim2 = 'UDim2.new(-)';
	Axis = 'Axis.new(-)';
	BrickColor = 'BrickColor.new(-)';
	Color3 = 'Color3.new(-)';
	ColorSequence = 'ColorSequence.new(-)';
	Region3 = 'Region3.new(-)';
	TweenInfo = 'TweenInfo.new(-)';
	NumberSequence = 'NumberSequence.new(-)';
	Random = 'Random.new(-)';
	NumberRange = 'NumberRange.new(-)';
	Axis = 'Axis.new(-)';
};

local PrintTable
local function ParseObject(object, spacing, scope, checkedTables, keyBool)
	spacing = keyBool and spacing .. '[' or spacing;
	local objectType = type(object)
	if Globals[typeof(object)] then
		return spacing .. Globals[typeof(object)]:gsub('-', tostring(object));
	elseif typeof(object) == 'Instance' then
		return spacing .. object:GetFullName();
	elseif objectType == "string" then
		return spacing .. string.format("%q", object)
	elseif objectType == "nil" then
		return spacing .. "nil"
	elseif objectType == "table" then
		if checkedTables[object] then
			return spacing .. tostring(object) .. " [recursive table]"
		else
			checkedTables[object] = true
			return spacing .. PrintTable(object, scope + 1, checkedTables)
		end
	elseif objectType == "userdata" then
		if typeof(object) == "userdata" then
			return spacing .. "userdata"
		else
			return spacing .. tostring(object)
		end
	else -- userdata, function, boolean, thread, number
		return spacing .. tostring(object)
	end
end



function PrintTable(t, scope, checkedTables)
	local mt = getrawmetatable(t)
	local backup = {}
	if mt and mt ~= t then
		for i, v in pairs(mt) do
			rawset(backup, i, v)
			rawset(mt, i, nil)
		end
	end

	checkedTables = checkedTables or {}
	scope = scope or 1
	local result = (checkedTables and "{" or "") .. "\n"
	local spacing = string.rep("    ", scope)
	local function parse(index, value)
		result = result .. ParseObject(index, spacing, scope, checkedTables, true) .. "] = " .. ParseObject(value, "", scope, checkedTables) .. "\n"
	end

	if CountTable(t) ~= #t then
		table.foreach(t, parse) -- I'm very aware this is a deprecated function
	else
		for index = 1, select("#", unpack(t)) do
			parse(index, t[index])
		end
	end

	if mt and mt ~= t then
		for i, v in pairs(mt) do
			rawset(mt, rawget(backup, i), v)
		end
	end

	return result .. string.sub(spacing, 4, #spacing - 1) .. (checkedTables and "}" or "")
end

local methods = {
	BindableEvent = "Fire",
	BindableFunction = "Invoke",
	RemoteEvent = "FireServer",
	RemoteFunction = "InvokeServer"
}


local __namecall = __namecall or metatable.__namecall
local __index = __index or metatable.__index
if getgenv then
	if removeSpy then
		removeSpy()
	end
	getgenv().__namecall = __namecall
	getgenv().__index = __index
	getgenv().removeSpy = function()
		getgenv().removeSpy = nil
		metatable.__namecall = __namecall
		metatable.__index = __index
	end
end

local function LocalizedRemoteCallback(class)
	return newcclosure(function(self, ...)
		if typeof(self) ~= "Instance" then
			error(select(2, pcall(methods[class], self)), 0)
		end

		if self.ClassName ~= class then
			error(select(2, pcall(methods[class], self)), 0)
		end

		local arguments = {...};
		local result	= {};

		local callerScript = rawget(getfenv(0), "script")
		callerScript = typeof(callerScript) == "Instance" and callerScript or nil

		if enabled[self.ClassName] and (not ignore[self.Name]) then
			print(string.format(
				"%s called!\nFrom Script: %s\nPath: %s\nArguments: %s\nReturn: %s",
				self.ClassName,
				tostring(not callerScript and "Not Found" or callerScript:GetFullName()),
				(not self.Parent and "[NIL]: " or "") .. self:GetFullName(),
				CountTable(arguments) == 0 and "None!" or PrintTable(arguments),
				CountTable(result) == 0 and "None!" or PrintTable(result)
			))
		end

		return unpack({methods[class](self, ...)})
	end)
end

LocalizedRemoteCallback  = newcclosure(LocalizedRemoteCallback)

for className, func in next, methods do
	methods[className] = hookfunc(Instance.new(className)[func], LocalizedRemoteCallback(className))
end

local function IsAuthorized(self, index)
	local map = {
		BindableEvent = "Fire",
		BindableFunction = "Invoke",
		RemoteEvent = "FireServer",
		RemoteFunction = "InvokeServer"
	}


	if (not map[self.ClassName]) then
		return false
	end

	if (not rawequal(map[self.ClassName], index)) then
		return false;
	end  

	if (ignore[self.Name]) or (not enabled[self.ClassName]) then
		return false
	end

	return true;
end

local LuaU = isluau()

local RemoteCallback = newcclosure(function(self, ...)
	if typeof(self) ~= "Instance" then
		return error(select(2, pcall(__index, self))) -- magic
	end

	local arguments = {...}	
	local result = {}
	local callerScript = rawget(getfenv(0), "script")
	callerScript = typeof(callerScript) == "Instance" and callerScript or nil
	print(string.format(
		"%s called!\nFrom Script: %s\nPath: %s\nArguments: %s\nReturn: %s",
		self.ClassName,
		tostring(not callerScript and "Not Found" or callerScript:GetFullName()),
		(not self.Parent and "[NIL]: " or "") .. self:GetFullName(),
		CountTable(arguments) == 0 and "None!" or PrintTable(arguments),
		CountTable(result) == 0 and "None!" or PrintTable(result)
	))
	return unpack({methods[self.ClassName](self, ...)})
end)

function metatable:__namecall(...)
	local arguments = {...}
	local index = LuaU and getnamecallmethod() or table.remove(arguments)
	if IsAuthorized(self, index) then
		return RemoteCallback(self, unpack(arguments))
	end
	return __namecall(self, ...)
end

metatable.__namecall = newcclosure(metatable.__namecall)
end)
OtherCheatSection:NewButton("Infinite Yield", "Executes Infinite Yield.", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
OtherCheatSection:NewButton("Keyboard GUI (For mobile users)", "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
OtherSection:NewButton("Copy Flight number", "Copies the flight number into the clipboard.", function()
	for i, v in pairs(workspace.flights:GetChildren()) do
		if v:FindFirstChild("clientFolder") then
			print("copy")
			setclipboard(v.Name)
	
			break
		end
	end
end)
LocalPlayerSection:NewSlider("Walk Speed", "Sets your speed.", 100, 0 ,function(number) PlayerCharacter.Humanoid.WalkSpeed = number end)
LocalPlayerSection:NewSlider("Jump Power", "Sets your jump power.", 100, 0 ,function(number) PlayerCharacter:WaitForChild("Humanoid").JumpPower = number end)
LocalPlayerSection:NewButton("Noclip (Press E to noclip)", "", function()
	noclip = false
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)
end
