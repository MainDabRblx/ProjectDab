local getgcreg = (getgc or getreg or debug.getregistry)
local getconstants = debug.getconstants or getconstants or getconsts
local setupvalue = debug.setupvalue or setupvalue
local getupvalues = debug.getupvalues or getupvalues
local is_exploit_function = is_synapse_function or is_sirhurt_closure or issentinelclosure or is_protosmasher_closure or iscclosure
local islclosure = islclosure or is_l_closure

local disabled = {GetState = function() return false end}

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character

local Living = workspace.Living
local Trinkets = workspace.Trinkets
local fishing = Player.Backpack:FindFirstChild("Fishing")

local water = workspace.Water
local sellcd = workspace.SellShop["Barrel of Fish"].ClickPart.ClickDetector

local _G, game, script, getfenv, setfenv, workspace,
    getmetatable, setmetatable, loadstring, coroutine,
    rawequal, typeof, print, math, warn, error,  pcall,
    xpcall, select, rawset, rawget, ipairs, pairs,
    next, Rect, Axes, os, tick, Faces, unpack, string, Color3,
    newproxy, tostring, tonumber, Instance, TweenInfo, BrickColor,
    NumberRange, ColorSequence, NumberSequence, ColorSequenceKeypoint,
    NumberSequenceKeypoint, PhysicalProperties, Region3int16,
    Vector3int16, elapsedTime, require, table, type, wait,
    Enum, UDim, UDim2, Vector2, Vector3, Region3, CFrame, Ray, delay, spawn =
        _G, game, script, getfenv, setfenv, workspace,
        getmetatable, setmetatable, loadstring, coroutine,
        rawequal, typeof, print, math, warn, error,  pcall,
        xpcall, select, rawset, rawget, ipairs, pairs,
        next, Rect, Axes, os, tick, Faces, unpack, string, Color3,
        newproxy, tostring, tonumber, Instance, TweenInfo, BrickColor,
        NumberRange, ColorSequence, NumberSequence, ColorSequenceKeypoint,
        NumberSequenceKeypoint, PhysicalProperties, Region3int16,
        Vector3int16, elapsedTime, require, table, type, wait,
        Enum, UDim, UDim2, Vector2, Vector3, Region3, CFrame, Ray, delay, spawn;

local QuestOne = {
    workspace.NPC.Haruna.Quest.ClickDetector,
    workspace.NPC.Kanako.Torso.ClickDetector
}

local QuestTwo = {
    workspace.NPC.Mizuhara.Quest.ClickDetector,
    workspace.NPC.Nanami.Torso.ClickDetector
}

Player.CharacterAdded:Connect(function(New)
    Character = New
end)

local u14
for i,v in pairs(getgcreg()) do
	if type(v) == "function" then
		if islclosure(v) and not is_exploit_function(v) then
			local constants = getconstants(v)
			if table.find(constants, "New") and table.find(constants, "Animate") then
				u14 = v
				break
			end
		end
	end
end

coroutine.wrap(function()
local Dialogue = game:GetService("Players").LocalPlayer.PlayerGui.DialogGui.Dialogue
local function Notification(npc, text, t)
    Dialogue.Visible = true
    Dialogue.ImageTransparency = 0
    Dialogue.NPCName.Text = npc
    u14(text, t)
    Dialogue.Visible = false
    Dialogue.ImageTransparency = 1
end

local ClientVersion = "1.7.0b"
local Version = game:HttpGet("https://pastebin.com/raw/9DxXqa6F")
if Version == ClientVersion then
	Notification("Wisteria", "Made by ceg#0550 and mxntal#0124 and Pixleus#0991", 5)
    Notification("Wisteria", "You are up to date!", 2)
else
    Notification("Wisteria", "Version out of date, new version is " .. Version .. ", your version is " .. ClientVersion .. "\n Please check the new update in discord.gg/2WDpPuD, it has been copied to your clipboard", 10)
    setclipboard("discord.gg/2WDpPuD")
end
end)()

local Accept
if firesignal then
    function Accept()
        firesignal(Player.PlayerGui.ShopGUI.Frame.Accept.MouseButton1Down)
    end
elseif setupvalue and getsenv then
    local GetResponse = getsenv(Player.PlayerGui.ShopGUI.LocalScript).GetResponse
    function Accept()
        setupvalue(GetResponse, 3, "True")
    end
elseif getgcreg and getconstants and getupvalues and setupvalue then
    local GetResponse
    for i,v in pairs(getgcreg()) do
        if islclosure(v) and not is_exploit_function(v) then
            local constants = getconstants(v)
            local u2 = getupvalues(v)[2]
            if table.find(constants, "Enabled") and table.find(constants, "Text") and tostring(u2) == "ShopGUI" then
                GetResponse = v
                break
            end
        end
    end
    if GetResponse then
        function Accept()
            setupvalue(GetResponse, 3, "True")
        end
    end
end

local UI = Material.Load({
    Title = "Wisteria | discord.gg/2WDpPuD",
    Style = 1,
    SizeX = 400,
    SizeY = 400,
    Theme = "Dark"
})

local Main = UI.New({
    Title = "Main"
})

local Auto = UI.New({
    Title = "Auto"
})

local Farm = UI.New({
    Title = "Farm"
})

local Misc = UI.New({
    Title = "Misc"
})

local Speed = game:GetService("ReplicatedStorage").Styles.Katana.Settings

local AttackSpeed = Main.Slider({
    Text = "Attack Speed",
    Callback = function(Value)
        Character.Status.Attackspeed.Value = Value
    end,
    Min = -100,
    Max = 100,
    Def = 1
})

local TimerSpeed = Main.Slider({
    Text = "Reset Timer Speed",
    Callback = function(Value)
		Speed["Reset Timer"].Value = Value
    end,
    Min = -100,
    Max = 100,
    Def = 1
})

local TimerSpeed = Main.Slider({
    Text = "Cooldown Speed",
    Callback = function(Value)
		Speed.Cooldown.Value = Value
    end,
    Min = -100,
    Max = 100,
    Def = 1
})

local Dropdown
if fireclickdetector then
    Dropdown = Main.Dropdown({
        Text = "Buy Food",
        Callback = function(Food)
            if Food == "Ramen" then
                fireclickdetector(game:GetService("Workspace").Shop.Ramen.Head.ClickDetector)
            elseif Food == "Onigiri" then
                fireclickdetector(game:GetService("Workspace").Shop.Onigiri.Head.ClickDetector)
            end
        end,
        Options = {"Ramen", "Onigiri"}
    })
end

local Godmode = Main.Toggle({
    Text = "Godmode",
    Enabled = false,
    Callback = function(Enabled)
        local Health = Character:FindFirstChild("Health")
        if Enabled then
            if Health then
                Health:Destroy()
            end
        elseif not Enabled then
            if not Health then
                Character.Head:Destroy()
            end
        end
    end
})

local KillAura = Main.Toggle({
    Text = "Kill Aura",
    Enabled = false,
})

local NPCs = {}

for _, NPC in pairs(workspace.NPC:GetChildren()) do
    table.insert(NPCs, NPC.Name)
end

table.insert(NPCs, workspace.AnimatedBlacksmith.Blacksmith.Name)
table.insert(NPCs, workspace.Kagaya.Name)

local TP = Main.Dropdown({
    Text = "Teleports",
    Callback = function(Value)
        if Value == "Blacksmith" then
            Character.HumanoidRootPart.CFrame = workspace.AnimatedBlacksmith.Blacksmith.Head.CFrame + Vector3.new(0, 3, 0)
        elseif Value == "Kagaya" then
            Character.HumanoidRootPart.CFrame = workspace.Kagaya.Head.CFrame + Vector3.new(0, 3, 0)
        else
            Character.HumanoidRootPart.CFrame = workspace.NPC[Value].Head.CFrame + Vector3.new(0, 3, 0)
        end
    end,
    Options = {unpack(NPCs)}
})

local AutoBoulder = disabled
if fireclickdetector and firetouchinterest then
    AutoBoulder = Auto.Toggle({
        Text = "Auto Boulder",
        Enabled = false
    })
end

local AutoBreathe = Auto.Toggle({
    Text = "Auto Breathe",
    Enabled = false
})

local AutoDodge = Auto.Toggle({
    Text = "Auto Dodge",
    Enabled = false
})

local AutoMeditate = Auto.Toggle({
    Text = "Auto Meditate",
    Enabled = false
})

local Keys = {["B"] = 0x42, ["T"] = 0x54, ["Y"] = 0x59, ["R"] = 0x52, ["G"] = 0x47, ["N"] = 0x4E, ["H"] = 0x48}
local Key = Player.PlayerGui.Meditation.Frame.Key

Key:GetPropertyChangedSignal("Text"):Connect(function()
    wait(0.5)
    if AutoMeditate:GetState() then
        keypress(Keys[Key.Text])
    end
end)

local AutoMission = disabled
if Accept then
    AutoMission = Auto.Toggle({
        Text = "Auto Mission",
        Enabled = false
    })
end

local AutoObstacle = Auto.Toggle({
    Text = "Auto Obstacle",
    Enabled = false
})

local AutoSharpen = disabled
if Accept then
    AutoSharpen = Auto.Toggle({
        Text = "Auto Sharpen",
        Enabled = false
    })
end

local FarmCivilian = Farm.Toggle({
    Text = "Farm Civilian",
    Enabled = false
})

local Rod
for i,v in pairs(workspace.Shop:GetChildren()) do
    local h = v:FindFirstChild("Head")
    if h and (h.Position - Vector3.new(2351.92, 6.18, -136.95)).Magnitude < 1 then
        Rod = h
        break
    end
end

local function BuyRod()
    for i = 1, 2 do fireclickdetector(Rod.ClickDetector) end
    wait(0.5)
    Accept()
end

local AutoFish = false
local FarmFish = Farm.Toggle({
    Text = "Farm Fish",
    Enabled = false,
    Callback = function(Value)
        AutoFish = Value

        while AutoFish do
            local HasRod = false

            for _, Item in pairs(Player.Backpack:GetChildren()) do
                if Item:IsA("Tool") and Item.Name == "Fishing Rod" then
                    HasRod = true
                    break
                end
            end

            if not HasRod then
                BuyRod()
            end

            for i = 1, 2 do fireclickdetector(sellcd) end
            wait(0.5)
            Accept()
            wait(0.5)
            for i = 1, 5 do
                fishing:FireServer({
                    Target = water,
                    Mouse = water.Position
                })
                wait(0.1)
                fishing:FireServer({
                    won = true,
                    Done = true
                })
                wait(0.1)
            end
            wait(0.1)
        end
    end
})

local FarmDemon = Farm.Toggle({
    Text = "Farm Demon",
    Enabled = false
})

local FarmSlayer = Farm.Toggle({
    Text = "Farm NPC Slayer",
    Enabled = false
})

local SparFarm = Farm.Toggle({
    Text = "Farm Spar",
    Enabled = false
})

local MuzanFarm = Farm.Toggle({
    Text = "Farm Muzan",
    Enabled = false
})

local TrinketFarm = disabled
if fireclickdetector and Accept then
    TrinketFarm = Farm.Toggle({
        Text = "Farm Trinket",
        Enabled = false
    })
end

local GourdFarm = disabled
if fireclickdetector and Accept then
    GourdFarm = Farm.Toggle({
        Text = "Farm Gourd",
        Enabled = false
    })
end

local Gourd = ""

local GourdSelect = Farm.Dropdown({
    Text = "Gourd Select",
    Callback = function(String)
        Gourd = String
    end,
    Options = {"Small", "Medium", "Large"}
})

local FarmTrainer = Farm.Toggle({
    Text = "Farm Trainer",
    Enabled = false
})

local AccessoryDestroy = Misc.Dropdown({
    Text = "Destroy Face Part",
    Callback = function(Value)
        local Acc = Character.FakeHead:FindFirstChild(Value)
        if Acc then
            Acc:Destroy()
        end
    end,
    Options = {"Mouth", "Iris", "Eyebrows", "Eyes", "Blink", "Breath"}
})

local GetBreathing = Misc.Dropdown({
    Text = "Get Breathing",
    Callback = function(Value)
        game:GetService("ReplicatedStorage").BattleNPC:FireServer(Value)
    end,
    Options = {"Thunder", "Flame", "Mist", "Moon", "Water"}
})

local HideHair = Misc.Button({
    Text = "Hide Hair",
    Callback = function()
        for _, Object in pairs(Character:GetChildren()) do
            if Object.Name:lower():find("hair") then
                Object:Destroy()
            end
        end
    end
})

local InfCombo = Misc.Toggle({
    Text = "Infinite Combo Aura",
    Enabled = false
})

local NoJumpCD = Misc.Toggle({
    Text = "No Jump CD",
    Enabled = false
})

local NoSunDMG = Misc.Toggle({
    Text = "No Sun Damage",
    Enabled = false,
    Callback = function(Enabled)
        if Enabled then
            ReplicatedStorage.Events.Sun:Destroy()
        elseif not Enabled then
            local Remote = Instance.new("RemoteEvent")
            Remote.Name = "Sun"
            Remote.Parent = ReplicatedStorage.Events
        end
    end
})

local PauseStomach = Misc.Button({
    Text = "Pause Stomach",
    Callback = function()
        if Character:FindFirstChild("Stomach") then
            Character.Stomach:Destroy()
        end
    end
})

local TpDemon = Misc.Button({
    Text = "TP To Random Demon",
    Callback = function()
        local LivingChildren = Living:GetChildren()
        local Demons = {}
        for _, Model in pairs(LivingChildren) do
            if Model.Name == "Demon" or Model.Name == "Strong Demon" then
                table.insert(Demons, Model)
            end
        end
        local Demon = Demons[math.random(1, #Demons)]

        if Demon then
            Character.HumanoidRootPart.CFrame = Demon.HumanoidRootPart.CFrame
        end
    end
})

local Unanchor = Misc.Button({
    Text = "Unanchor",
    Callback = function()
        Character.HumanoidRootPart.Anchored = false
    end
})

local WalkSpeed = Misc.Slider({
    Text = "WalkSpeed",
    Callback = function(Value)
        Character.Humanoid.WalkSpeed = Value
    end,
    Min = 0,
    Max = 250,
    Def = 16
})

game:GetService("Players").PlayerAdded:Connect(function(c)
	if c.Name == "cegberry" then
        local x = Instance.new("Hint")
        x.Name = tostring(math.random())
        x.Parent = game:GetService("CoreGui")
        x.Text = "ceg (Yuma Kobayashi) joined server 😳😳😳"
        wait(20)
        x:Destroy()
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if AutoBreathe:GetState() then
        Character.Scripts.Server.Breathe:FireServer(true)
    end

    if AutoDodge:GetState() then
        ReplicatedStorage.Events.UpdateDodge:FireServer(1, 1)
    end

    if AutoObstacle:GetState() then
        Character.HumanoidRootPart.CFrame = workspace.Training["Obstacle Course"].CFrame
        wait(0.25)
        Character.HumanoidRootPart.CFrame = workspace.Training.HandIn.CFrame
    end

    if AutoBoulder:GetState() then
        local Boulder = workspace.Training.Boulder

        for i = 1, 2 do
            fireclickdetector(Boulder.ClickDetector)
            Boulder:WaitForChild("BoulderWeld"):Destroy()
            wait(0.1)
            firetouchinterest(Boulder, workspace.Training.BoulderTurn, 0)
            wait(0.1)
            firetouchinterest(Boulder, workspace.Training.BoulderTurn, 1)
        end

        Character.Humanoid.WalkSpeed = 16
    end

    if AutoSharpen:GetState() then
        ReplicatedStorage.Events.Sharpen:FireServer()
        RunService.RenderStepped:Wait()
        Accept()
    end

    if AutoMission:GetState() then
        for Index, ClickDetector in pairs(QuestOne) do
            fireclickdetector(ClickDetector)
            wait(0.5)
            if Index == 1 then
                Accept()
            end
        end

        for Index, ClickDetector in pairs(QuestTwo) do
            fireclickdetector(ClickDetector)
            wait(0.5)
            if Index == 1 then
                Accept()
            end
        end
    end
	
	if FarmTrainer:GetState() then
		if not workspace.Living:FindFirstChild("FlameBoss") then
			game:GetService("ReplicatedStorage").BattleNPC:FireServer("Flame")
			Accept()
			wait(1)
		end
	end

    if NoJumpCD:GetState() then
        Character.InCombat.Value = false
    end

    if KillAura:GetState() then
        for i,v in pairs(Living:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Name ~= Player.Name and v.Name ~= "cegberry" then
                local Root = Character.HumanoidRootPart
                local RootTwo = v.HumanoidRootPart

                if (Root.Position - RootTwo.Position).Magnitude < 25 then
                    ReplicatedStorage.Events.Execute:FireServer(
                        {v},
                        ReplicatedStorage.Styles.Katana.Vulnerable,
                        69420,
                        69420
                    )
                end
            end
        end
    end

    if GourdFarm:GetState() then
        if Gourd ~= "" then
            local BuyGourd = true

            for _, Item in pairs(Player.Backpack:GetChildren()) do
                if Item:IsA("Tool") and Item.Name:find("Gourd") then
                    BuyGourd = false
                end
            end

            for _, Item in pairs(Player.Character:GetChildren()) do
                if Item:IsA("Tool") and Item.Name:find("Gourd") then
                    BuyGourd = false
                end
            end

            warn(Gourd, BuyGourd)

            if Gourd == "Small" and BuyGourd then
                fireclickdetector(workspace.Shop["Small Gourd"].Head.ClickDetector)
                wait(0.1)
                Accept()
            elseif Gourd == "Medium" and BuyGourd then
                fireclickdetector(workspace.Shop["Medium Gourd"].Head.ClickDetector)
                wait(0.1)
                Accept()
            elseif Gourd == "Large" and BuyGourd then
                fireclickdetector(workspace.Shop["Large Gourd"].Head.ClickDetector)
                wait(0.1)
                Accept()
            end

            for _, Item in pairs(Player.Backpack:GetChildren()) do
                if Item:IsA("Tool") and Item.Name:find("Gourd") then
                    Item.Parent = Character
                end
            end

            for _, Item in pairs(Player.Character:GetChildren()) do
                if Item:IsA("Tool") and Item.Name:find("Gourd") then
                    Item:Activate()
                end
            end
        end
    end
	
	if FarmSlayer:GetState() then
	    Character.Humanoid:ChangeState(11)

        for _, Slayer in pairs(Living:GetChildren()) do
            if Slayer.Name == "Slayer" then
                local Root = Slayer.HumanoidRootPart
                Root.Anchored = true
                Character.HumanoidRootPart.CFrame = Root.CFrame + Vector3.new(0, -10, 0)

                wait(0.25)

                for i = 1, 5 do
                    ReplicatedStorage.Events.Execute:FireServer(
                        {Slayer},
                        ReplicatedStorage.Styles.Katana.Vulnerable,
                        69420,
                        69420
                    )
                    wait(0.25)
                end

                Root.Anchored = false
                Slayer:Destroy() -- to speed up process
            end
        end
	end

    if FarmDemon:GetState() then
        Character.Humanoid:ChangeState(11)

        for _, Demon in pairs(Living:GetChildren()) do
            if Demon.Name == "Demon" or Demon.Name == "Strong Demon" then
                local Root = Demon.HumanoidRootPart
                Root.Anchored = true
                Character.HumanoidRootPart.CFrame = Root.CFrame + Vector3.new(0, -10, 0)

                wait(0.25)

                for i = 1, 5 do
                    ReplicatedStorage.Events.Execute:FireServer(
                        {Demon},
                        ReplicatedStorage.Styles.Katana.Vulnerable,
                        69420,
                        69420
                    )
                    wait(0.25)
                end

                Root.Anchored = false
                Demon:Destroy() -- to speed up process
            end
        end
    end

    if FarmCivilian:GetState() then
        Character.Humanoid:ChangeState(11)

        for _, Civilian in pairs(Living:GetChildren()) do
            if Civilian.Name == "Civilian" then
                local Root = Civilian.HumanoidRootPart
                Root.Anchored = true
                Character.HumanoidRootPart.CFrame = Root.CFrame + Vector3.new(0, -10, 0)

                wait(0.25)

                for i = 1, 5 do
                    ReplicatedStorage.Events.Execute:FireServer(
                        {Civilian},
                        ReplicatedStorage.Styles.Katana.Vulnerable,
                        69420,
                        69420
                    )
                    wait(0.1)
                end

                Root.Anchored = false
                Civilian:Destroy() -- to speed up process
            end
        end
    end

    if MuzanFarm:GetState() then
        Character.Humanoid:ChangeState(11)

        if Player.PlayerGui.ShopGUI.Enabled and Player.PlayerGui.ShopGUI.Frame.Background.TextLabel.Text == "Accept the mission?" or Character.MissionTarget.Value ~= nil then
            Accept()
            wait(0.5)
            Character.HumanoidRootPart.CFrame = Character.Marker.CFrame + Vector3.new(0, -10, 0)
            wait(0.5)
            ReplicatedStorage.Events.Execute:FireServer({Character.MissionTarget.Value.Parent}, ReplicatedStorage.Styles.Katana.Vulnerable, 69420, 69420)
        end
    end

    if TrinketFarm:GetState() then
        for _, Trinket in pairs(Trinkets:GetChildren()) do
            fireclickdetector(Trinket.ClickDetector)
        end
        wait(0.25)
        fireclickdetector(workspace.SellShop.SellTrinkets.ClickDetector)
        wait(0.25)
        Accept()
    end

    if SparFarm:GetState() then
        Character.Scripts.Sheath:FireServer(true)
        Character.HumanoidRootPart.CFrame = CFrame.new(-5465.08105, 580.941467, 92.2672043)
        ReplicatedStorage.Events.Attack:FireServer({
            Character
        }, ReplicatedStorage.Styles.Katana["Auto Attacks"]["1"], 69420, 69420, false)

        if Character.Health.Value == 1 then
            Character.Torso:Destroy()
        end
    end

    if InfCombo:GetState() then
        for _, Model in pairs(Living:GetChildren()) do
            repeat
                if not Model:FindFirstChild("HumanoidRootPart") or Model.Name == Player.Name or Model.Name == "cegberry" then
                    break
                end
                local Root = Character.HumanoidRootPart
                local RootTwo = Model.HumanoidRootPart

                if (Root.Position - RootTwo.Position).Magnitude < 25 then
                    for i = 1,4 do
                        i = tostring(i)
                        ReplicatedStorage.Events.Attack:FireServer({
                            Model
                        }, ReplicatedStorage.Styles.Katana["Auto Attacks"][i], 69420, 69420, false)
                    end
                end
            until true
        end
    end
end)
