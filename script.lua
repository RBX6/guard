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

    -- Ajoute un raccourci clavier (Keybind) dans l'onglet Main
    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle",
        Default = "LeftControl",
        Callback = function(Value)
            print("Raccourci clavier cliqué !", Value)
        end,
        ChangedCallback = function(New)
            print("Raccourci clavier changé !", New)
        end
    })

    -- Gestion des événements du raccourci clavier
    Keybind:OnClick(function()
        print("Raccourci clavier cliqué :", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Raccourci clavier changé :", Keybind.Value)
    end)

    -- Boucle vérifiant si le raccourci clavier est maintenu enfoncé
    task.spawn(function()
        while true do
            wait(1)
            local state = Keybind:GetState()
            if state then
                print("Raccourci clavier maintenu enfoncé")
            end
            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Définit le raccourci clavier sur MB2, mode sur Hold

    -- Initialisation des gestionnaires
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)

    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})

    InterfaceManager:SetFolder("FluentScriptHub")
    SaveManager:SetFolder("FluentScriptHub/specific-game")

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
end

-- Sélectionne l'onglet Main par défaut
Window:SelectTab(1)

-- Notification de chargement du script
Fluent:Notify({
    Title = "Guard Hub",
    Content = "Le script a été chargé.",
    Duration = 3
})

-- Charge une configuration automatique si disponible
SaveManager:LoadAutoloadConfig()
