loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "Scripts Collection"
}

local Tab = GUI:Tab{
	Name = "AutoFarm Scripts",
	Icon = "rbxassetid://6034973115"

    
}




Tab:Button{
    Name = "VG Hub - Slow AUTOFARM GUI",
    Description = "Pretty Slow but safe",
    Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end
}


Tab:Button{
Name = "Farm Any Job!",
    Description = "Does not have pizza delivery farm. (Not loading for some reason)",
	Callback = function() 
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/PainfulDestroyer/Roblox/main/Scar%20Hub"))()
	    end
}

Tab:Button{
Name = "GUI - AutoBuild Autofarm and more! (KEY)",
    Description = "Stacked GUI",
	Callback = function() 
	    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\118\101\100\114\111\120\46\104\111\108\100\52\53\54\52\46\100\101\47\110\111\114\109\97\108\47\115\99\114\105\112\116\46\116\120\116"))()
	    end
}


Tab:Button{
Name = "Hairdresser,Bloxy Burgers Click Farm!",
    Description = "This Autofarm uses a realistic way to autofarm.",
	Callback = function() 
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeLuxe-1337/LuaScripts/main/bloxburg_memento.lua", true))()

	    end
}


Tab:Button{
Name = "Pizza Farm (HIGH RISK OF BAN)",
    Description = "This Autofarm pretty risky",
	Callback = function() 
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/big-balla-script-maka/free-scripts/main/BloxburgPizza.lua'))()
	    end
}




local Tab2 = GUI:Tab{
	Name = "AutoBuild",
	Icon = "rbxassetid://6035145364"
}

Tab2:Button{
Name = "Illusion Autobuild (KEY)",
    Description = "You may use the linkvertiste feautre bypasser in the scripts settings",
	Callback = function() 
	    local http_request = http_request or request or (syn and syn.request) or (http and http.request) loadstring(http_request({Url="https://projectillusion.dev/beta/illusion/illusion_bloxburg.lua",Method="GET"}).Body)()

	    end
}




local Tab3 = GUI:Tab{
	Name = "Settings",
	Icon = "rbxassetid://6031280882"
}


local label = Tab3:Label{
  Text = "",
  Description =  ""
}

label:SetText("Linkvertiste Bypassers:")
label:SetDescription("Use these to bypass Key Scripts")

Tab3:Button{
Name = "Linkvertiste Bypasser On Roblox",
    Description = "Linkvertiste Bypasser on roblox",
	Callback = function() 
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/Woutt/Lua-Scripts/main/bypass.lua"))()
	    end
}

Tab3:Button{
Name = "Linkvertiste Bypasser (Website Site)",
    Description = "Website for bypassing linkvertiste",
	Callback = function() 
	    print ("Copied")
	    setclipboard ("https://bypass.vip/")
	    end
}


Tab3:Button{
Name = "Linkvertiste Bypasser (AdBlock)",
    Description = "Adblock that also bypasses linkvertiste",
	Callback = function() 
setclipboard ("https://github.com/gorhill/uBlock")
    end
}




local label = Tab3:Label{
  Text = "",
  Description =  ""
}

label:SetText("Extra:")
label:SetDescription("Other Scripts")

Tab3:Button{
Name = "Bypass Block Method",
    Description = "Run NullWare Hub And ReAnimate Your Body, Then use noclip to go in blocked houses",
	Callback = function() 
	    getgenv().Theme = "Blue" -- To change the UI Theme, set this to one of the following options: "Red", "Purple", "Blue", "Green", "Yellow"
loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
	    
	    wait (1)
	    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	    end
}





