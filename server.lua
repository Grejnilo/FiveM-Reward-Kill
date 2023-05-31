ESX = nil
TriggerEvent('GrejRewardKill:SharedObject', function(obj) ESX = obj end)


RegisterNetEvent('GrejRewardKill:event')
AddEventHandler('GrejRewardKill:event', function()
    local src = source
    local identifier = ESX.GetPlayerFromId(src).getIdentifier()
	item = 'frytki' -- nazwa itemu ktory ma byc dawany do ekwipunku po zabojstwie
	identifier.addInventoryItem(item, 3) -- ilosc przedmiotow
end)
