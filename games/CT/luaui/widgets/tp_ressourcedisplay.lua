--display for ressources
--because 99999[..]9 storage make the engine resbar look ugly ;)

function widget:GetInfo()
  return {
    name      = "ressouce display",
    desc      = "display metal as number, without storage bar",
    author    = "knorke",
    date      = "Oct 19, 2010",
    license   = "weeeeeee iam on horse",
    layer     = -3,
    enabled   = true  --  loaded by default?
  }
end

--thanks to trepan and his "com ends" widget :)
local glPopMatrix      = gl.PopMatrix
local glPushMatrix     = gl.PushMatrix
local glText           = gl.Text

local font = 'FreeMonoBold'
local fontSize = 32
local fontName = LUAUI_DIRNAME..'Fonts/'..font..'_'..fontSize
local fh = fontHandler.UseFont(fontName)

local vsx, vsy = widgetHandler:GetViewSizes()
local UIscale, fontsize = vsy/55
function widget:ViewResize(viewSizeX, viewSizeY)
	vsx = viewSizeX
	vsy = viewSizeY
	UIscale = vsx/75
end


function widget:DrawScreen()
local localplayerID = Spring.GetLocalTeamID()
local metal = math.floor (Spring.GetTeamResources (localplayerID ,"metal"))
local energy, energystorage, energypull, energyincome=  Spring.GetTeamResources (localplayerID ,"energy")
glPushMatrix()
if (fh) then
	fh = fontHandler.UseFont(fontName)
	fontHandler.DrawCentered(msg)
else
	local ebar_heigth = vsy/50
	local ebar_startx = vsx*0.6
	local ebar_endx = vsx*0.95
	local ebar_length =  ebar_endx-ebar_startx
	local ebar_currentendx = ((energy/energystorage)*ebar_length)+ebar_startx
	local ebar_height = UIscale*2
	gl.Color(0.8, 0.8, 0.8, 0.5)
	gl.Rect(ebar_endx, vsy-ebar_height-UIscale, (vsx/2)-UIscale*8,vsy-UIscale ) --background of metal display
	glText("Metal: " .. metal, vsx/2, vsy-UIscale*2.5, UIscale*1.5, "oc")	
	gl.Color(1, 1, 0, 0.8)	
	gl.Rect(ebar_startx, vsy-UIscale, ebar_endx, vsy-ebar_height-UIscale) --background of energy bar in total size/storage
	gl.Color(1, 0, 0, 0.8)
	gl.Rect(ebar_startx, vsy-(UIscale/2)-(ebar_height/2), ebar_currentendx, vsy-(ebar_height)-(UIscale/2)) --background of energy bar in total size/storage
	if (energy < 100) then
		local msg = "Low Energy"
		if (energyincome < 10) then msg = "Energy Critical" end
		glText(msg , (ebar_startx+ebar_endx)/2, vsy-UIscale*2.5, UIscale*2, "oc")
	end
end
glPopMatrix()
end

function widget:Initialize()
Spring.SendCommands ("resbar 0")
Spring.Echo ("tp_ressourcedisplay.lua: type /resbar 1 to get the engines ressource bars back")
end