--// Universal Rayfield Hub
--// Made by _czkp

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local Player = Players.LocalPlayer

--==================================================
-- SAFE LOADSTRING FUNCTION
--==================================================

local function RunScript(url, name)
    local success, err = pcall(function()

        local source = game:HttpGet(url)

        local func, compileError = loadstring(source)

        if not func then
            error("Compile error: " .. tostring(compileError))
        end

        func()
    end)

    if success then

        print(name .. " executed successfully")

        Rayfield:Notify({
            Title = "Executed",
            Content = name .. " executed successfully.",
            Duration = 3
        })

    else

        warn(name .. " failed: " .. tostring(err))

        Rayfield:Notify({
            Title = "Execution Failed",
            Content = tostring(err),
            Duration = 5
        })

    end
end


--==================================================
-- WINDOW
--==================================================

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

local CreditsTab = Window:CreateTab(
    "Credits",
    4483362458
)

CreditsTab:CreateSection("Welcome")

CreditsTab:CreateParagraph({

    Title = "Thanks for using!",

    Content = [[
Welcome to the script hub!

This script was created by _czkp.

Thanks for taking the time to use the hub.

More scripts, features, and updates may be added in the future.

If you find bugs or have suggestions, feel free to report them.

Enjoy!
]]

})


CreditsTab:CreateSection("Information")


CreditsTab:CreateLabel(
    "Creator: _czkp"
)

CreditsTab:CreateLabel(
    "Version: 1.0.0"
)

CreditsTab:CreateLabel(
    "UI Library: Rayfield"
)


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

        else

            Rayfield:Notify({

                Title = "Clipboard Unsupported",

                Content = "Your environment does not support setclipboard.",

                Duration = 3

            })

        end

    end

})


--==================================================
-- SCRIPTS TAB
--==================================================

local ScriptsTab = Window:CreateTab(
    "Scripts",
    4483362458
)

ScriptsTab:CreateSection(
    "Available Scripts"
)


--==================================================
-- INFINITE YIELD
--==================================================

ScriptsTab:CreateButton({

    Name = "Infinite Yield",

    Callback = function()

        RunScript(
            "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
            "Infinite Yield"
        )

    end

})


--==================================================
-- NAMELESS ADMIN
--==================================================

ScriptsTab:CreateButton({

    Name = "Nameless Admin",

    Callback = function()

        RunScript(
            "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source",
            "Nameless Admin"
        )

    end

})


--==================================================
-- SCRIPT 3
--==================================================

ScriptsTab:CreateButton({

    Name = "Script 3",

    Callback = function()

        Rayfield:Notify({

            Title = "Script 3",

            Content = "No script has been added here yet.",

            Duration = 3

        })

    end

})


--==================================================
-- REJOIN SERVER
--==================================================

ScriptsTab:CreateButton({

    Name = "Rejoin Server",

    Callback = function()

        Rayfield:Notify({

            Title = "Rejoining",

            Content = "Rejoining the current server...",

            Duration = 3

        })

        task.wait(0.5)

        local success, err = pcall(function()

            TeleportService:TeleportToPlaceInstance(
                game.PlaceId,
                game.JobId,
                Player
            )

        end)

        if not success then

            warn(
                "Rejoin failed: "
                .. tostring(err)
            )

        end

    end

})


--==================================================
-- DARK DEX
--==================================================

ScriptsTab:CreateButton({

    Name = "Dark Dex V4",

    Callback = function()

        RunScript(
            "https://raw.githubusercontent.com/CrackedLzsxp/Dark-dex-v4/main/dex.lua",
            "Dark Dex V4"
        )

    end

})


--==================================================
-- SERVER HOP
--==================================================

ScriptsTab:CreateButton({

    Name = "Server Hop",

    Callback = function()

        local success, err = pcall(function()

            local source = game:HttpGet(
                "https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"
            )

            local loaded, compileError = loadstring(source)

            if not loaded then
                error(compileError)
            end

            local module = loaded()

            if module and module.Teleport then

                module:Teleport(
                    game.PlaceId
                )

            else

                error(
                    "Server hop module did not return a Teleport function."
                )

            end

        end)

        if not success then

            warn(
                "Server Hop failed: "
                .. tostring(err)
            )

            Rayfield:Notify({

                Title = "Server Hop Failed",

                Content = tostring(err),

                Duration = 5

            })

        end

    end

})


--==================================================
-- AIRHUB
--==================================================

ScriptsTab:CreateButton({

    Name = "AirHub",

    Callback = function()

        RunScript(
            "https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua",
            "AirHub"
        )

    end

})


--==================================================
-- INFINITE ZOOM
--==================================================

ScriptsTab:CreateButton({

    Name = "INF Zoom",

    Callback = function()

        Player.CameraMaxZoomDistance = 1000000

        Rayfield:Notify({

            Title = "Infinite Zoom",

            Content = "Maximum camera zoom increased.",

            Duration = 3

        })

    end

})


--==================================================
-- CHAT LOGS
--==================================================

ScriptsTab:CreateButton({

    Name = "Chat Logs",

    Callback = function()

        -- Prevent duplicates

        local oldGui =
            Player.PlayerGui:FindFirstChild(
                "CZKPChatLogger"
            )

        if oldGui then
            oldGui:Destroy()
        end


        local ChatGui =
            Instance.new("ScreenGui")

        ChatGui.Name =
            "CZKPChatLogger"

        ChatGui.ResetOnSpawn =
            false

        ChatGui.Parent =
            Player.PlayerGui


        local Frame =
            Instance.new("Frame")

        Frame.Parent =
            ChatGui

        Frame.BackgroundColor3 =
            Color3.fromRGB(
                20,
                20,
                20
            )

        Frame.BorderSizePixel =
            0

        Frame.Position =
            UDim2.new(
                0.03,
                0,
                0.55,
                0
            )

        Frame.Size =
            UDim2.new(
                0,
                392,
                0,
                25
            )

        Frame.Active =
            true

        Frame.Draggable =
            true


        local LogPanel =
            Instance.new(
                "ScrollingFrame"
            )

        LogPanel.Parent =
            Frame

        LogPanel.BackgroundColor3 =
            Color3.fromRGB(
                0,
                0,
                0
            )

        LogPanel.BorderSizePixel =
            0

        LogPanel.Position =
            UDim2.new(
                0,
                0,
                1,
                0
            )

        LogPanel.Size =
            UDim2.new(
                0,
                392,
                0,
                203
            )

        LogPanel.ScrollBarThickness =
            5

        LogPanel.CanvasSize =
            UDim2.new(
                0,
                0,
                0,
                0
            )


        local ListLayout =
            Instance.new(
                "UIListLayout"
            )

        ListLayout.Parent =
            LogPanel

        ListLayout.Padding =
            UDim.new(
                0,
                2
            )


        local Close =
            Instance.new(
                "TextButton"
            )

        Close.Parent =
            Frame

        Close.BackgroundTransparency =
            1

        Close.Position =
            UDim2.new(
                1,
                -70,
                0,
                0
            )

        Close.Size =
            UDim2.new(
                0,
                70,
                0,
                25
            )

        Close.Font =
            Enum.Font.SourceSans

        Close.Text =
            "Close"

        Close.TextColor3 =
            Color3.new(
                1,
                1,
                1
            )

        Close.TextSize =
            14


        local Mini =
            Instance.new(
                "TextButton"
            )

        Mini.Parent =
            Frame

        Mini.BackgroundTransparency =
            1

        Mini.Position =
            UDim2.new(
                1,
                -145,
                0,
                0
            )

        Mini.Size =
            UDim2.new(
                0,
                75,
                0,
                25
            )

        Mini.Font =
            Enum.Font.SourceSans

        Mini.Text =
            "Minimize"

        Mini.TextColor3 =
            Color3.new(
                1,
                1,
                1
            )

        Mini.TextSize =
            14


        local LogToggle =
            Instance.new(
                "TextButton"
            )

        LogToggle.Parent =
            Frame

        LogToggle.BackgroundTransparency =
            1

        LogToggle.Position =
            UDim2.new(
                0,
                115,
                0,
                0
            )

        LogToggle.Size =
            UDim2.new(
                0,
                100,
                0,
                25
            )

        LogToggle.Font =
            Enum.Font.SourceSans

        LogToggle.Text =
            "Log Chat [ON]"

        LogToggle.TextColor3 =
            Color3.new(
                1,
                1,
                1
            )

        LogToggle.TextSize =
            14


        local Title =
            Instance.new(
                "TextLabel"
            )

        Title.Parent =
            Frame

        Title.BackgroundTransparency =
            1

        Title.Size =
            UDim2.new(
                0,
                110,
                0,
                25
            )

        Title.Font =
            Enum.Font.SourceSansSemibold

        Title.Text =
            "Chat GUI"

        Title.TextColor3 =
            Color3.new(
                1,
                1,
                1
            )

        Title.TextSize =
            14

        Title.TextXAlignment =
            Enum.TextXAlignment.Left


        local logging =
            true

        local minimized =
            false


        local function UpdateCanvas()

            LogPanel.CanvasSize =
                UDim2.new(
                    0,
                    0,
                    0,
                    ListLayout.AbsoluteContentSize.Y
                    + 10
                )

        end


        ListLayout:GetPropertyChangedSignal(
            "AbsoluteContentSize"
        ):Connect(
            UpdateCanvas
        )


        local function Output(
            plr,
            message
        )

            if not logging then
                return
            end


            local label =
                Instance.new(
                    "TextLabel"
                )

            label.Parent =
                LogPanel

            label.BackgroundColor3 =
                Color3.fromRGB(
                    0,
                    0,
                    0
                )

            label.BorderSizePixel =
                0

            label.Size =
                UDim2.new(
                    1,
                    -10,
                    0,
                    22
                )

            label.Font =
                Enum.Font.SourceSansSemibold

            label.TextSize =
                14

            label.TextXAlignment =
                Enum.TextXAlignment.Left

            label.TextColor3 =
                Color3.fromRGB(
                    255,
                    255,
                    255
                )

            label.Text =
                plr.Name
                .. ": "
                .. message


            if string.sub(
                message,
                1,
                1
            ) == ":"
                or string.sub(
                    message,
                    1,
                    1
                ) == ";" then

                label.TextColor3 =
                    Color3.fromRGB(
                        255,
                        80,
                        80
                    )

            end

        end


        LogToggle.MouseButton1Click:Connect(
            function()

                logging =
                    not logging

                if logging then

                    LogToggle.Text =
                        "Log Chat [ON]"

                else

                    LogToggle.Text =
                        "Log Chat [OFF]"

                end

            end
        )


        Mini.MouseButton1Click:Connect(
            function()

                minimized =
                    not minimized

                if minimized then

                    LogPanel.Visible =
                        false

                    Mini.Text =
                        "Open"

                else

                    LogPanel.Visible =
                        true

                    Mini.Text =
                        "Minimize"

                end

            end
        )


        Close.MouseButton1Click:Connect(
            function()

                ChatGui:Destroy()

            end
        )


        local function ConnectPlayer(
            plr
        )

            plr.Chatted:Connect(
                function(message)

                    Output(
                        plr,
                        message
                    )

                end
            )

        end


        for _, plr in ipairs(
            Players:GetPlayers()
        ) do

            ConnectPlayer(plr)

        end


        Players.PlayerAdded:Connect(
            ConnectPlayer
        )


        Rayfield:Notify({

            Title = "Chat Logs",

            Content = "Chat logger opened.",

            Duration = 3

        })

    end

})


--==================================================
-- GAMES TAB
--==================================================

local GamesTab = Window:CreateTab(
    "Games",
    4483362458
)

GamesTab:CreateSection(
    "Game Scripts"
)


--==================================================
-- MM2
--==================================================

GamesTab:CreateButton({

    Name = "MM2",

    Callback = function()

        RunScript(
            "https://raw.githubusercontent.com/fleecelolll/Mono/refs/heads/main/Script",
            "MM2"
        )

    end

})


--==================================================
-- GAME BUTTON 2
--==================================================

GamesTab:CreateButton({

    Name = "Game Script 2",

    Callback = function()

        Rayfield:Notify({

            Title = "Game Script 2",

            Content = "Nothing has been added yet.",

            Duration = 3

        })

    end

})


--==================================================
-- GAME BUTTON 3
--==================================================

GamesTab:CreateButton({

    Name = "Game Script 3",

    Callback = function()

        Rayfield:Notify({

            Title = "Game Script 3",

            Content = "Nothing has been added yet.",

            Duration = 3

        })

    end

})


--==================================================
-- GAME BUTTON 4
--==================================================

GamesTab:CreateButton({

    Name = "Game Script 4",

    Callback = function()

        Rayfield:Notify({

            Title = "Game Script 4",

            Content = "Nothing has been added yet.",

            Duration = 3

        })

    end

})


--==================================================
-- GAME BUTTON 5
--==================================================

GamesTab:CreateButton({

    Name = "Game Script 5",

    Callback = function()

        Rayfield:Notify({

            Title = "Game Script 5",

            Content = "Nothing has been added yet.",

            Duration = 3

        })

    end

})


--==================================================
-- LOAD CONFIG
--==================================================

pcall(function()

    Rayfield:LoadConfiguration()

end)


--==================================================
-- LOADED
--==================================================

Rayfield:Notify({

    Title = "Script Hub Loaded",

    Content = "Thanks for using the hub!",

    Duration = 5

})

print("Universal Hub loaded successfully")
