
AddEventHandler('gameEventTriggered', function(name,args)

	if (name ~= 'CEventNetworkEntityDamage') then return end;

	if (args[6] == 1) then
		killEvent(args[1], args[2])
	end


end)

function killEvent(victim, killer)

	if (victim == PlayerPedId()) then 
		TriggerServerEvent('death:event')
		return
	end;
	local victimsvid = GetPlayerServerId(NetworkGetPlayerIndexFromPed(victim))
	if (victimsvid == 0) then return end; 
	local killersvid = GetPlayerServerId(NetworkGetPlayerIndexFromPed(killer))
	if (killersvid == 0) then return end; 
	
	exports['tu wpisz nazwe skryptu na notyfikacje']:Alert('Ranking', 'Otrzymałeś pączki za zabójstwo!', 2000, 'info')
end