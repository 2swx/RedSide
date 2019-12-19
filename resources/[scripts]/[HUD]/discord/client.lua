Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(628965646415298561)
		SetDiscordRichPresenceAsset('redside')
		--SetDiscordRichPresenceAssetText("")
		SetDiscordRichPresenceAssetSmall('discord')
		SetDiscordRichPresenceAssetSmallText('discord.gg/redside')
		SetRichPresence(GetPlayerName(PlayerId()) .. " [" .. GetPlayerServerId(PlayerId()) .. "] - " .. #(GetActivePlayers()) .. "/128")

		Citizen.Wait(60000)
	end
end)