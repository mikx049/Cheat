local HttpService = game:GetService("HttpService")

local GuiHandler = require(HttpService:GetAsync("https://sirius.menu/rayfield"))

local Window = GuiHandler:CreateWindow({
    Name = "Example GUI",
    LoadingTitle = "Loading Example GUI",
    LoadingSubtitle = "by YourName",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ExampleFolder",
        FileName = "ExampleConfig"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    }
})

print(GuiHandler)