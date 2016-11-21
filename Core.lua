SLASH_RELOADUI1 = "/rl"  -- For quicker reloading
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- For quicker access to frame stack
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTolltop_Toggle()
end

--To be able to use the R/L arrow keys without rotating your character!
for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame" .. i .. "EditBox"]:SetAltArrowKeyMode(false)
end
----------------------------------------The above is used for Testing

local UIConfig = CreateFrame("Frame", "MUI_BuffFrame_whitlock", UIParent, "BasicFrameTemplateWithInset");

--[[
CreateFrame Arguments:
1. The type of frame - "Frame"
2. The global frame name - "MUI_BuffFrame_whitlock"
3. The Parent frame (NOT a string!!!!) - UIParent
4. A comma separated LIST (String List) of XML templates to inherit from
	-\Interface\FrameXML\UIPanelTemplates.xml\BasicFrameTemplateWithInset
	-this does NOT need to be a comma separate list however
	-I'm only using 1 XML template.

]]


--The following is required to actually display the frame on the screen
UIConfig:SetSize(300, 360); -- width, height
UIConfig:SetPoint("CENTER", UIParent, "CENTER", 100 , 100); -- point, relativeFrame, relativePoint, xOffset, yOffset


--[[
	"TOPLEFT"
	"TOP"
	"TOPRIGHT"
	"LEFT"
	"CENTER"
	"RIGHT"
	"BOTTOMLEFT"
	"BOTTOM"
	"BOTTOMRIGHT"


]]