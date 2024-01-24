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
    Acrylic = true, -- Le flou peut être détecté, le désactiver entièrement avec false
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Ajoute des onglets à la fenêtre
local Tabs = {
    Main = Window:AddTab({ Title = "Dashboard", Icon = "layout-dashboard" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "scroll" }),
    Premium = Window:AddTab({ Title = "Premium", Icon = "star" }), -- Correction de l'orthographe
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Options Fluent
local Options = Fluent.Options

-- Section d'initialisation
do
    -- Notification de bienvenue
    Fluent:Notify({
        Title = "Guard Hub",
        Content = "Guard Hub ",
        SubContent = "Créé par RBX6", -- Correction orthographique
        Duration = 3
    })

    -- Ajoute un paragraphe dans l'onglet Main
    Tabs.Main:AddParagraph({
        Title = "Bienvenue !",
        Content = "Bienvenue à GuardHub !"
    })

    Tabs.Scripts:AddParagraph({
        Title = "Scripts",
        Content = "C'est ici que vous pouvez voir les Scripts cértifié par GUARD HUB Inc."
    })

    Tabs.Premium:AddParagraph({
        Title = "Prenium",
        Content = "Voici les Meilleurs Script Special."
    })

    Tabs.Premium:AddButton({
        Title = "Infinity Yield",
        Description = "Permet de Executer le Script Infinity yield",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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

    Tabs.Premium:AddButton({
        Title = "CMD-X",
        Description = "Permet de Executer le Script CMD-X",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
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

    Tabs.Premium:AddButton({
        Title = "Nameless Admin",
        Description = "Permet de Executer le Script Nameless Admin",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
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

    
    Tabs.Premium:AddParagraph({
        Title = "Universal Script",
        Content = "Voici les Scripts qui fonctionne sur TOUT les Jeux."
    })
    Tabs.Premium:AddButton({
        Title = "Unnamed ESP",
        Description = "Permet de Executer le Script Unnamed ESP",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                           loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua',true))()
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


    Tabs.Scripts:AddButton({
        Title = "Survive the Killer",
        Description = "Permet de Executer le Script Survive the killer",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
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
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Scripts:AddButton({
        Title = "Blox Fruits",
        Description = "Permet de Executer le Script Blox Fruit",
        Callback = function()
            Window:Dialog({
                Title = "GuardHub | Information",
                Content = "Voulez-Vous Executer ce Scripts ?",
                Buttons = {
                    {
                        Title = "Oui",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
                        end
                    },
                    {
                        Title = "Non",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    


end

-- Sélectionne l'onglet Main par défaut
Window:SelectTab(1)

-- Notification de chargement du script
Fluent:Notify({
    Title = "Guard Hub",
    Content = "Le Menu a été chargé Avec Succés.",
    Duration = 3
})

-- Charge une configuration automatique si disponible
SaveManager:LoadAutoloadConfig()
