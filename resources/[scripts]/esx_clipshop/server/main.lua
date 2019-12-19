ESX = nil

local price = 200

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_clipshop:buyChargeur')
AddEventHandler('esx_clipshop:buyChargeur', function(zone)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(source)
  local sourceItem = xPlayer.getInventoryItem('clip')
  
  if xPlayer.get('money') >= price then
    if sourceItem.limit ~= -1 and (sourceItem.count + 1) > sourceItem.limit then
      TriggerClientEvent('esx:showNotification', _source, 'Vous portez trop de Chargeur sur vous !')
    else
      xPlayer.removeMoney(price)
      xPlayer.addInventoryItem('clip', 1)
      TriggerClientEvent('esx:showNotification', _source, 'Vous avez acheté un Chargeur !')
    end
  else
    TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
  end
end)