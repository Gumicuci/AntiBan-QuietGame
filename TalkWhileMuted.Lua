task.spawn(function() --Skyyyyyyyyyyyyyyy i dont know if this will work :<
	game.Players.LocalPlayer.AttributeChanged:Connect(function(Attribute)
		if Attribute == "Muted" then
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
		end
	end)
end)
