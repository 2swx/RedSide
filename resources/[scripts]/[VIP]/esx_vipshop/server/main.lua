ESX             = nil
local ShopssItems = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function()
	MySQL.Async.fetchAll('SELECT * FROM shopss LEFT JOIN items ON items.name = shopss.item', {}, function(shopssResult)
		for i=1, #shopssResult, 1 do
			if shopssResult[i].name then
				if ShopssItems[shopssResult[i].store] == nil then
					ShopssItems[shopssResult[i].store] = {}
				end

				if shopssResult[i].limit == -1 then
					shopssResult[i].limit = 30
				end

				table.insert(ShopssItems[shopssResult[i].store], {
					label = shopssResult[i].label,
					item  = shopssResult[i].item,
					price = shopssResult[i].price,
					limit = shopssResult[i].limit
				})
			else
				print(('esx_shopss: invalid item "%s" found!'):format(shopssResult[i].item))
			end
		end
	end)
end)

ESX.RegisterServerCallback('esx_shopss:requestDBItems', function(source, cb)
	cb(ShopssItems)
end)

RegisterServerEvent('esx_shopss:buyItem')
AddEventHandler('esx_shopss:buyItem', function(itemName, amount, zone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	amount = ESX.Math.Round(amount)

	-- is the player trying to exploit?
	if amount < 0 then
		print('esx_shopss: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	-- get price
	local price = 0
	local itemLabel = ''

	for i=1, #ShopssItems[zone], 1 do
		if ShopssItems[zone][i].item == itemName then
			price = ShopssItems[zone][i].price
			itemLabel = ShopssItems[zone][i].label
			break
		end
	end

	price = price * amount

	-- can the player afford this item?
	if xPlayer.getMoney() >= price then
		-- can the player carry the said amount of x item?
		if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
			TriggerClientEvent('esx:showNotification', _source, _U('player_cannot_hold'))
		else
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(itemName, amount)
			TriggerClientEvent('esx:showNotification', _source, _U('bought', amount, itemLabel, ESX.Math.GroupDigits(price)))
		end
	else
		local missingMoney = price - xPlayer.getMoney()
		TriggerClientEvent('esx:showNotification', _source, _U('not_enough', ESX.Math.GroupDigits(missingMoney)))
	end
end)
