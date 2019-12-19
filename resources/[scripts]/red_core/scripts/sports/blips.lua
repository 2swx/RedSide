
-- blips
Citizen.CreateThread(function()
	for k,v in pairs(para) do
		local vpara = v.position

		local blip = AddBlipForCoord(vpara.x, vpara.y, vpara.z)
		SetBlipSprite(blip, 377)
		SetBlipColour(blip, 50)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.nompara)
		EndTextCommandSetBlipName(blip)
	end
end)


local blips = {

  {title="Circuit de Cross", colour=0, id=127, x = 893.68, y = 2383.62, z = 50.68},

  {title="Ring", colour=1, id=491, x = -517.71, y = -1717.19, z = 20.46},

 -- {title="Territoire Crips", colour=3, id=310, x = 69.92, y = -1910.98, z = 21.64},

 -- {title="Territoire Bikers", colour=6, id=494, x = 982.29, y = -112.31, z = 74.13},

 -- {title="Territoire Bloods", colour=1, id=310, x = 1291.98, y = -1729.43, z = 53.49},

 -- {title="Territoire Mafia Russe", colour=0, id=310, x = -576.6, y = -1607.07, z = 27.01},

 -- {title="Territoire Costa Nostra", colour=0, id=310, x = -235.663, y = 603.209, z = 188.405},

  {title="Récolte Orpailleur", colour=28, id=500, x = -1178.92, y = 4375.30, z = 5.62},

  {title="Traitement Orpailleur", colour=28, id=500, x = 1114.376, y = -2006.653, z = 35.439},

  {title="Vente Orpailleur", colour=28, id=500, x = -96.328, y = -806.523, z = 44.038},


}

     

Citizen.CreateThread(function()



   for _, info in pairs(blips) do

     info.blip = AddBlipForCoord(info.x, info.y, info.z)

     SetBlipSprite(info.blip, info.id)

     SetBlipDisplay(info.blip, 4)

     SetBlipScale(info.blip, 1.0)

     SetBlipColour(info.blip, info.colour)

     SetBlipAsShortRange(info.blip, true)

   BeginTextCommandSetBlipName("STRING")

     AddTextComponentString(info.title)

     EndTextCommandSetBlipName(info.blip)

   end

end)