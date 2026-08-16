--// Rayfield UI

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Universal Hub",
    Icon = 0,
    LoadingTitle = "Loading Script Hub...",
    LoadingSubtitle = "Made by _czkp",
    
    ShowText = "Script Hub",

    Theme = "Default",

    ToggleUIKeybind = "K",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "MyScriptHub",
        FileName = "Config"
    },

    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },

    KeySystem = false
})


--==================================================
-- CREDITS TAB
--==================================================

local CreditsTab = Window:CreateTab("Credits", 4483362458)

CreditsTab:CreateSection("Welcome")

CreditsTab:CreateParagraph({
    Title = "Thanks for using!",
    Content = [[
Welcome to the script hub!

This script was created by _czkp.

Thanks for taking the time to use the hub. More scripts, features, and updates may be added in the future.

If you find any bugs or have suggestions, feel free to report them to the creator.

Enjoy!
]]
})

CreditsTab:CreateSection("Information")

CreditsTab:CreateLabel("Creator: _czkp")

CreditsTab:CreateLabel("Version: 1.0.0")

CreditsTab:CreateLabel("UI Library: Rayfield")


CreditsTab:CreateButton({
    Name = "Copy Creator Name",
    Callback = function()
        if setclipboard then
            setclipboard("_czkp")

            Rayfield:Notify({
                Title = "Copied!",
                Content = "_czkp was copied to your clipboard.",
                Duration = 3
            })
        end
    end
})


--==================================================
-- SCRIPTS TAB
--==================================================

local ScriptsTab = Window:CreateTab("Scripts", 4483362458)

ScriptsTab:CreateSection("Available Scripts")


-- BUTTON 1
ScriptsTab:CreateButton({
    Name = "Infinite Yeild",
    Callback = function()

        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()


        print("INF Yeild executed")

    end
})


-- BUTTON 2
ScriptsTab:CreateButton({
    Name = "Nameless Admin",
    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()


        print("NameLess Admin executed")

    end
})


-- BUTTON 3
ScriptsTab:CreateButton({
    Name = "Script 3",
    Callback = function()

        

        print("Script 3 executed")

    end
})


-- BUTTON 4
ScriptsTab:CreateButton({
    Name = "Rejoin Server",
    Callback = function()

             TeleportService:TeleportToPlaceInstance
            game.PlaceId,
            game.JobId,
            Player

        print("Rejoin Server")

    end
})


-- BUTTON 5
ScriptsTab:CreateButton({
    Name = "Dark Dex V4",
    Callback = function()

        loadstring(game:HttpGet("https://github.com/CrackedLzsxp/Dark-dex-v4/blob/main/dex.lua"))()

        print("Dark Dex V4 executed")

    end
})


-- BUTTON 6
ScriptsTab:CreateButton({
    Name = "Server Hop",
    Callback = function()

        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

module:Teleport(game.PlaceId)

        print("Server Hop executed")

    end
})


-- BUTTON 7
ScriptsTab:CreateButton({
    Name = "AirHub",
    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()

        print("AirHub executed")

    end
})


-- BUTTON 8
ScriptsTab:CreateButton({
    Name = "INF Zoom",
    Callback = function()

        local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local isEnabled = false
local currentMaxZoom = player.CameraMaxZoomDistance
local defaultMaxZoom = 100

        print("INF Zoom executed")

    end
})


-- BUTTON 9
ScriptsTab:CreateButton({
    Name = "Chat logs",
    Callback = function()

        -- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ChatGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local LogPanel = Instance.new("ScrollingFrame")
local Close = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local Log = Instance.new("TextButton")
local title = Instance.new("TextLabel")
--Properties:
ChatGui.Name = "ChatGui"
ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
ChatGui.ResetOnSpawn = false

Frame.Parent = ChatGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
Frame.Size = UDim2.new(0, 392, 0, 25)
Frame.Active = true
Frame.Draggable = true

LogPanel.Name = "LogPanel"
LogPanel.Parent = Frame
LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
LogPanel.Position = UDim2.new(-0.000221580267, 0, 0.968695641, 0)
LogPanel.Size = UDim2.new(0, 392, 0, 203)
LogPanel.ScrollBarThickness = 5
LogPanel.ScrollingEnabled = true
LogPanel.CanvasSize=UDim2.new(2,0,100,0)

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.823979557, 0, 0.0399999991, 0)
Close.Size = UDim2.new(0, 69, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14

Mini.Name = "Mini"
Mini.Parent = Frame
Mini.BackgroundColor3 = Color3.new(1, 1, 1)
Mini.BackgroundTransparency = 1
Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
Mini.Size = UDim2.new(0, 69, 0, 24)
Mini.Font = Enum.Font.SourceSans
Mini.Text = "Minimize"
Mini.TextColor3 = Color3.new(1, 1, 1)
Mini.TextSize = 14

Log.Name = "Log"
Log.Parent = Frame
Log.BackgroundColor3 = Color3.new(1, 1, 1)
Log.BackgroundTransparency = 1
Log.Position = UDim2.new(0.293367326, 0, 0, 0)
Log.Size = UDim2.new(0, 69, 0, 24)
Log.Font = Enum.Font.SourceSans
Log.Text = "Log Chat [ON]"
Log.TextColor3 = Color3.new(1, 1, 1)
Log.TextSize = 14

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(0, 115, 0, 24)
title.Font = Enum.Font.SourceSans
title.Text = "Chat GUI"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
-- Scripts:
local logging = true
local minimized = false
Log.MouseButton1Down:Connect(function()
	logging = not logging
	if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
end)
Mini.MouseButton1Down:Connect(function()
	if minimized then
		LogPanel:TweenSize(UDim2.new(0, 392, 0, 203), "InOut", "Sine", 0.5, false, nil)
	else
		LogPanel:TweenSize(UDim2.new(0, 392, 0, 0), "InOut", "Sine", 0.5, false, nil)
	end
	minimized = not minimized
end)
Close.MouseButton1Down:Connect(function()
	ChatGui:Destroy()
end)

local prevOutputPos = 0
function output(plr, msg)
	if not logging then return end
	local colour = Color3.fromRGB(255,255,255)
	
	if string.sub(msg, 1,1) == ":" or string.sub(msg,1,1) == ";" then colour = Color3.fromRGB(255,0,0) elseif string.sub(msg,1,2) == "/w" or string.sub(msg,1,7) == "/whisper" or string.sub(msg,1,5) == "/team" or string.sub(msg,1,2) == "/t" then colour = Color3.fromRGB(0,0,255) else colour = Color3.fromRGB(255,255,255) end
	
 	local o = Instance.new("TextLabel",LogPanel)
 	o.Text = plr.Name .. ": " .. msg
 	o.Size = UDim2.new(0.5,0,.006,0)
 	o.Position = UDim2.new(0,0,.007 + prevOutputPos ,0)
 	o.Font = Enum.Font.SourceSansSemibold
 	o.TextColor3 = colour
 	o.TextStrokeTransparency = 0
 	o.BackgroundTransparency = 0
	o.BackgroundColor3 = Color3.new(0,0,0)
 	o.BorderSizePixel = 0
	o.BorderColor3 = Color3.new(0,0,0)
 	o.FontSize = "Size14"
	o.TextXAlignment = Enum.TextXAlignment.Left
 	o.ClipsDescendants = true
	prevOutputPos = prevOutputPos + 0.007
	end

for i,v in pairs(game.Players:GetChildren()) do
	v.Chatted:Connect(function(msg)
		output(v, msg)
	end)
end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			output(plr, msg)
		end)
	end
end)


        print("Chat Logs executed")

    end
})

--==================================================
-- LOADED NOTIFICATION
--==================================================

Rayfield:Notify({
    Title = "Script Hub Loaded",
    Content = "Thanks for using the hub!",
    Duration = 5
})


--==================================================
-- GAMES TAB
--==================================================

local GamesTab = Window:CreateTab("Games", 4483362458)

GamesTab:CreateSection("Game Scripts")


-- GAME BUTTON 1
GamesTab:CreateButton({
    Name = "MM2",
    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/fleecelolll/Mono/refs/heads/main/Script"))()\

        print("MM2 executed")
    end
})

Rayfield:LoadConfiguration()
