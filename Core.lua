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

-- Creates a red button in the middle.
mybutton = CreateFrame("Button","mybutton",UIParent,"UIPanelButtonTemplate")
mybutton:SetPoint("CENTER",0,0)
mybutton:SetWidth(50)
mybutton:SetHeight(30)

--  Creating the Frame.
local frame = CreateFrame("Frame", "MUI_BuffFrame", UIParent, "BasicFrameTemplateWithInset");
--The following is required to actually display the frame on the screen
frame:SetSize(300, 360); -- width, height
frame:SetPoint("CENTER", UIParent, "CENTER"); -- point, relativeFrame, relativePoint, xOffset, yOffset
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


--UIConfig IS the parent frame for all other child frames and layered
--  regions we will add on to it, to make it graphical!

-- Child frames and regions:
--UIConfig.title = 
--local textObject = frame:CreateFontString(nil, "OVERLAY");
frame.title = frame:CreateFontString(nil, "OVERLAY");   --Create a FontString Region for the frame's title FontString attribute.
frame.title:SetFontObject("GameFontHighlight");
frame.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0);  --Inherited from the TitleBg class.
frame.title:SetText("MUI Buff Options - Custom");

--UIConfig:SetPoint("CENTER", UIParent, "CENTER"); -- point, relativeFrame, relativePoint, xOffset, yOffset
--local successful = UIConfig.title:SetFont("Fonts\\FRIZQT__.ttf", 11, "OUTLINE");
--if (not successful) then
--	print "failed"
--end

-- BUTTONS!!

--UI Buttons:
-- Creates a SAVE button at the top of the Parent Frame.
frame.saveButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate");
frame.saveButton:SetPoint("CENTER", frame, "TOP", 0, -70);
frame.saveButton:SetSize(140, 40);
frame.saveButton:SetText("Save"); -- Directly communicates to the button's main FontString object
frame.saveButton:SetNormalFontObject("GameFontNormalLarge");
frame.saveButton:SetHighlightFontObject("GameFontHighlightLarge");

-- Creates a RESET button at the top of the Parent Frame.
frame.resetBtn = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate");
frame.resetBtn:SetPoint("TOP", frame.saveButton, "BOTTOM", 0, -10);     --Position relative to saveButton.
frame.resetBtn:SetSize(140, 40);
frame.resetBtn:SetText("Reset"); -- Directly communicates to the button's main FontString object
frame.resetBtn:SetNormalFontObject("GameFontNormalLarge");
frame.resetBtn:SetHighlightFontObject("GameFontHighlightLarge");

-- Creates a UI Load button at the top of the Parent Frame.
frame.loadBtn = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate");
frame.loadBtn:SetPoint("TOP", frame.resetBtn, "BOTTOM", 0, -10);       --Position relative to resetBtn.
frame.loadBtn:SetSize(140, 40);
frame.loadBtn:SetText("Load"); -- Directly communicates to the button's main FontString object
frame.loadBtn:SetNormalFontObject("GameFontNormalLarge");
frame.loadBtn:SetHighlightFontObject("GameFontHighlightLarge");


--Sliders:

--Slider1:
frame.slider1 = CreateFrame("Slider", nil, frame, "OptionsSliderTemplate");
frame.slider1:SetPoint("TOP", frame.loadBtn, "BOTTOM", 0, -20);
frame.slider1:SetMinMaxValues(1, 100);
frame.slider1:SetValue(50);
frame.slider1:SetValueStep(30);
frame.slider1:SetObeyStepOnDrag(true);
--frame.slider1:SetOrientation("VERTICAL");  If I want to change the orientation of the slider
