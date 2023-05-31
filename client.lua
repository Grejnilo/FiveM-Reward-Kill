
AddEventHandler('GrejRewardKill:event', function(name,args)

	if (name ~= 'CEventNetworkEntityDamage') then return end;

	if (args[6] == 1) then
		killEvent(args[1], args[2])
	end


end)

function killEvent(victim, killer)

	if (victim == PlayerPedId()) then 
		TriggerServerEvent('GrejRewardKill:event')
		return
	end;
	local victimsvid = GetPlayerServerId(NetworkGetPlayerIndexFromPed(victim))
	if (victimsvid == 0) then return end; 
	local killersvid = GetPlayerServerId(NetworkGetPlayerIndexFromPed(killer))
	if (killersvid == 0) then return end; 
	
	exports['skrypt na notyfikacje']:Alert('Ranking', 'Otrzymałeś frytki za zabójstwo!', 2000, 'info')
end
