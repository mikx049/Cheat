local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local GuiHandler = require(HttpService:GetAsync("https://sirius.menu/rayfield"))

local Window = GuiHandler:CreateWindow({
	Name = "Example GUI",
	LoadingTitle = "Loading Example GUI",
	LoadingSubtitle = "by YourName",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "ExampleFolder",
		FileName = "ExampleConfig",
	},
	Discord = {
		Enabled = false,
		Invite = "",
		RememberJoins = true,
	},
})

local Char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Char:WaitForChild("Humanoid")

local HomeTab = Window:CreateTab("🏠Home🏠", 4483362458)

local Inv = false

HomeTab:CreateButton({
	Name = "Invicivility",
	Callback = function()
		Inv = not Inv
		while Inv do
			Humanoid.MaxHealth = math.huge
			Humanoid.Health = math.huge
			task.wait(1)
		end
		Humanoid.maxHealth = 100
		Humanoid.Health = 100
	end,
})

HomeTab:CreateButton({
	Name = "Tp to camp fire",
	Callback = function()
		Char:PivotTo(CFrame.new(0, 5, 0))
	end,
})

print(GuiHandler)
