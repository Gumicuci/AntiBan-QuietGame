-- Hiya!! - 😿
if getgenv()["Banned!"] == true then
	return
else
	getgenv()["Banned!"] = true
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons.Wins.LayoutOrder = -2
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons.UIListLayout.Padding = UDim.new(0, 6)
	--Loading ^

	--UI V
	local Bannedframe = Instance.new("Frame", game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons)
	Bannedframe.Name = "Banned"
	Bannedframe.Transparency = 0.8
	Bannedframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Bannedframe.Size = UDim2.new(0, 80, 0, 25)
	Bannedframe.Position = UDim2.new(0, 0, 0, 0)
	Bannedframe.ZIndex = 1
	Bannedframe.LayoutOrder = -1

	local Corner = Instance.new("UICorner", Bannedframe)
	Corner.CornerRadius = UDim.new(0, 6)

	local Image = Instance.new("ImageLabel", Bannedframe)
	Image.Transparency = 1
	Image.AnchorPoint = Vector2.new(0, 0.5)
	Image.Position = UDim2.new(0, -4, 0.5, 0)
	Image.Size = UDim2.new(0, 32, 0, 32)
	Image.Image = "rbxassetid://13646487279"
	
	local Text = Instance.new("TextLabel", Bannedframe)
	Text.Text = "True"
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1
	Text.Size = UDim2.new(1, -34, 0, 20)
	Text.Position = UDim2.new(0, 32, 0.5, 0)
	Text.FontFace = game:GetService("Players").LocalPlayer.PlayerGui.Main.Left.Buttons.Wins.TextLabel.FontFace
	Text.TextScaled = true
	Text.TextXAlignment = Enum.TextXAlignment.Left
	Text.ZIndex = 1
	Text.AnchorPoint = Vector2.new(0, 0.5)
end
