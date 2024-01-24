local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
--Icons https://lucide.dev/icons/ 
SaveManager:LoadAutoloadConfig()
Window:SelectTab(1)
local Tabs = {
    Dashboard = Window:AddTab({ Title = "Dashboard", Icon = "layout-grid" }),
    GameScripts = Window:AddTab({ Title = "Games Scripts", Icon = "file-code" }),
    UniScripts = Window:AddTab({ Title = "Universal Script", Icon = "file-code2" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "Credits" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options
local Window = Fluent:CreateWindow({
    Title = "Guard Hub " .. Fluent.Version,
    SubTitle = "by RBX6",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Z
})
do
    Fluent:Notify({
        Title = "Guard Hub",
        Content = "Bienvenue à Guard Hub!",
        SubContent = "Créer par RBX6",
        Duration = 2
    })

    Tabs.Dashboard:AddParagraph({
        Title = "Bienvenue",
        Content = "Bienvenue Sur Guard Hub Lien Officiel : discord.gg/hrshopp"
    })

    Tabs.Credits:AddParagraph({
        Title = "CREDITS",
        Content = "FONDATEUR : RBX6 | BETA TESTEUR : NETABEATS, MISTERNUT"
    })

    Tabs.Dashboard:AddButton({
        Title = "Rejoindre le Discord",
        Description = "Permet de Rejoindre notre Serveur Discord",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Rejoindre Notre Discord ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            setclipboard("discord.gg/hrshopp")
                        end
                    },
                    {
                        Title = "Non",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })

    Tabs.Dashboard:AddButton({
        Title = "Survive The Killer",
        Description = "Permet de Executer le Script Survive the Killer",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-vous éxecuter le Script?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
                        end
                    },
                    {
                        Title = "Non",
                        Callback = function()
                        end
                    }
                }
            })
        end
    })
