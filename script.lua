local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local SG = Window:CreateTab("Script Gaël", 4483362458) -- Title, Image
local SD = Window:CreateTab("Script Danaël", 4483362458) -- Title, Image
local SAU = Window:CreateTab("Script Autres", 4483362458) -- Title, Image
local Window = Rayfield:CreateWindow({
   Name = "GUARD",
   LoadingTitle = "GUARD",
   LoadingSubtitle = "GUARD by RBX6",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = Guard, -- Create a custom folder for your hub/game
      FileName = "Guard Scripts"
   },
   Discord = {
      Enabled = true,
      Invite = "hrshopp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "GuardKeySystem",
      Subtitle = "Guard Key System",
      Note = "Veuilez mettre la clé que RBX6 vous a donner avant. Veuillez Rejoindre Notre Discord Serveur discord.gg/hrshopp. indice : "mustbykey12...",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"mustbykey123","mustbykey123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- SCRIPT GAEL
local Button = SG:CreateButton({
   Name = "Survive The Killer",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MiloHaxx/ChairWare/main/loader.lua"))()
   end,
})
-- script Danael
local Button = SD:CreateButton({
   Name = "Blox Fruits",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
   end,
})

local Button = SAU:CreateButton({
    Name = "Infinity yield",
    Callback = function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end,
 })
 
 
