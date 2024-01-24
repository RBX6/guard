-- Charge la bibliothèque Fluent depuis le lien fourni
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Charge le gestionnaire de sauvegarde depuis le lien fourni
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

-- Charge le gestionnaire d'interface depuis le lien fourni
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- Crée une fenêtre avec Fluent
local Window = Fluent:CreateWindow({
    Title = "Guard Hub " .. Fluent.Version,
    SubTitle = "by RBX6",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Z
})

-- Icons https://lucide.dev/icons/
local Tabs = {
    Dashboard = Window:AddTab({ Title = "Dashboard", Icon = "layout-grid" }),
    GameScripts = Window:AddTab({ Title = "Games Scripts", Icon = "file-code" }),
    UniScripts = Window:AddTab({ Title = "Universal Script", Icon = "file-code2" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "Credits" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Options Fluent
local Options = Fluent.Options

-- Notification de bienvenue
Fluent:Notify({
    Title = "Guard Hub",
    Content = "Bienvenue à Guard Hub!",
    SubContent = "Créé par RBX6",
    Duration = 2
})

-- Ajoute un paragraphe dans l'onglet Dashboard
Tabs.Dashboard:AddParagraph({
    Title = "Bienvenue",
    Content = "Bienvenue Sur Guard Hub Lien Officiel : discord.gg/hrshopp"
})

-- Ajoute un paragraphe dans l'onglet Credits
Tabs.Credits:AddParagraph({
    Title = "CREDITS",
    Content = "FONDATEUR : RBX6 | BETA TESTEUR : NETABEATS, MISTERNUT"
})

-- Ajoute un bouton dans l'onglet Dashboard pour rejoindre le Discord
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

-- Ajoute un bouton dans l'onglet Dashboard pour exécuter le script "Survive The Killer"
Tabs.Dashboard:AddButton({
    Title = "Survive The Killer",
    Description = "Permet d'Exécuter le Script Survive the Killer",
    Callback = function()
        Window:Dialog({
            Title = "GuardHub | Information",
            Content = "Voulez-vous exécuter le Script?",
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

-- Charge la configuration automatique si disponible
SaveManager:LoadAutoloadConfig()
