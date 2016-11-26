print "Hello, from events!";
-- arg1 = new level, arg2 = Hit points gained, arg3 = mana points gained.
local Congrats_EventFrame = CreateFrame("Frame")
Congrats_EventFrame:RegisterEvent("PLAYER_LEVEL_UP")
Congrats_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
	    local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
		print('Congratulations on reaching level ' ..arg1.. ', ' .. UnitName("Player").. '! You gained ' ..arg2.. ' HP and ' ..arg3.. ' MP!') 
	end)

local frame = CreateFrame("Frame", "dpsDisplayFrame", UIParent, "BasicFrameTemplateWithInset");
--The following is required to actually display the frame on the screen
frame:SetSize(250, 150); -- width, height
frame:SetPoint("LEFT", UIParent, "LEFT", 0, -5); -- point, relativeFrame, relativePoint, xOffset, yOffset

--local textObject = frame:CreateFontString(nil, "OVERLAY");
frame.title = frame:CreateFontString(nil, "OVERLAY");   --Create a FontString Region for the frame's title FontString attribute.
frame.title:SetFontObject("GameFontHighlight");
frame.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0);  --Inherited from the TitleBg class.
frame.title:SetText("Damage Per Second - custom");

frame.a = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal");
frame.a:SetPoint("LEFT", 25, 25);
frame.a:SetText("UnitID: ");
frame.b = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal");
frame.b:SetPoint("LEFT", 25, -25);
frame.b:SetText("Damage Value: ");

--arg1 = the UnitID, arg2 = Action, Damage, etc., arg3 = Critical/Glancing indicator, arg4 = the numeric damage, arg5 = Damage type
local dps_EventFrame = CreateFrame("Frame")
dps_EventFrame:RegisterEvent("UNIT_COMBAT")
dps_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
	    local arg1, arg2, arg3, arg4, arg5 = ...
		--print('UnitID ' ..arg1.. ', Type ' ..arg2.. ' Critical? ' ..arg3.. ', Amount of Damage: ' ..arg4.. 'and Damage type: ' ..arg5.. '!') 
		if (arg1 == 'target') then 
			frame.a:SetText("UnitID: " ..arg5);
			frame.b:SetText("Damage Value: " ..arg4);
		end
	end)


