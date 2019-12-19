AddEventHandler('playerConnecting', function()
     TriggerClientEvent('CheckPlayerPed', source)
end)


function SendWebhookMessageStaff(webhook,message)
	webhook = "https://discordapp.com/api/webhooks/630442986399989781/KM22D2JqS_mZY4FFLqwgK6a1OWbvGKHA-PXJ7U1VsPnb2yvNaA7z-pcxK-V0W51cvCHt"
	if webhook ~= "none" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end


RegisterServerEvent('AntiPersoBug:Detected')
AddEventHandler('AntiPersoBug:Detected', function()

	--name = GetPlayerName(source)
	SendWebhookMessage(webhook,"**Perso bug kick!** \n```diff\nJoueurs: ///\nID du joueurs: "..source.."\n\n+ Anti Bug Flags: ( la personne à été kick du serveur car il était en skin de skateur . )```")
	DropPlayer(source, "Tu à été exclus du serveur car tu était en skin bug. Merci de vider ton cache et de revenir.\nN'oublie pas de faire /register si tu n'a pas pu crée ton personnage.\nBon jeux.")

end)