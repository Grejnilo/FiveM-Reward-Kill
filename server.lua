ESX = nil
TriggerEvent('adeuszx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('death:event')
AddEventHandler('death:event', function()
    local src = source
    local identifier = ESX.GetPlayerFromId(src).getIdentifier()
	item = 'paczek' -- nazwa itemu ktory ma byc dawany do ekwipunku po zabojstwie
	identifier.addInventoryItem(item, 3) -- ilosc przedmiotow
end)