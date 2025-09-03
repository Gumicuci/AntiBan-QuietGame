-- Hiya!! - 😿

local Mutedframe = Instance.new("Frame", game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons)
Mutedframe.Name = "Muted"
Mutedframe.Transparency = 0.8
Mutedframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Mutedframe.Size = UDim2.new(0, 80, 0, 25)
Mutedframe.Position = UDim2.new(0, 0, 0, 0)
Mutedframe.ZIndex = 1
Mutedframe.LayoutOrder = -1
Mutedframe.Visible = false

local Corner = Instance.new("UICorner", Mutedframe)
Corner.CornerRadius = UDim.new(0, 6)

local Image = Instance.new("ImageLabel", Mutedframe)
Image.Transparency = 1
Image.AnchorPoint = Vector2.new(0, 0.5)
Image.Position = UDim2.new(0, -4, 0.5, 0)
Image.Size = UDim2.new(0, 32, 0, 32)
Image.Image = "rbxassetid://13623808773"
Image.ImageColor3 = Color3.fromRGB(26, 26, 30)

local Text = Instance.new("TextLabel", Mutedframe)
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1
Text.Size = UDim2.new(1, -34, 0, 20)
Text.Position = UDim2.new(0, 32, 0.5, 0)
Text.FontFace = game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons.Wins.TextLabel.FontFace
Text.TextScaled = true
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.ZIndex = 1
Text.AnchorPoint = Vector2.new(0, 0.5)
game.Players.LocalPlayer.AttributeChanged:Connect(function()
	if game.Players.LocalPlayer:GetAttribute("Muted") == true then
		if game.Players.LocalPlayer:GetAttribute("MuteTimer") > 0 then
			Mutedframe.Visible = true
			Text.Text = game.Players.LocalPlayer:GetAttribute("MuteTimer")
		else
			Mutedframe.Visible = false
		end
	end
end)
