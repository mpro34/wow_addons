print "Hello, from events!";
-- arg1 = new level, arg2 = Hit points gained, arg3 = mana points gained.
local Congrats_EventFrame = CreateFrame("Frame")
Congrats_EventFrame:RegisterEvent("PLAYER_LEVEL_UP")
Congrats_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
	    local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
		print('Congratulations on reaching level ' ..arg1.. ', ' .. UnitName("Player").. '! You gained ' ..arg2.. ' HP and ' ..arg3.. ' MP!') 
	end)

--arg1 = the UnitID, arg2 = Action, Damage, etc., arg3 = Critical/Glancing indicator, arg4 = the numeric damage, arg5 = Damage type
local dps_EventFrame = CreateFrame("Frame")
dps_EventFrame:RegisterEvent("UNIT_COMBAT")
dps_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
	    local arg1, arg2, arg3, arg4, arg5 = ...
		print('UnitID ' ..arg1.. ', Type ' ..arg2.. ' Critical? ' ..arg3.. ', Amount of Damage: ' ..arg4.. 'and Damage type: ' ..arg5.. '!') 
	end)