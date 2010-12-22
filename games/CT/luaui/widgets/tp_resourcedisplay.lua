--display for resources
--because 99999[..]9 storage make the engine resbar look ugly ;)

function widget:GetInfo()
  return {
    name      = "resouce display",
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
local gameframe = 0

local vsx, vsy = widgetHandler:GetViewSizes()
local UIscale, fontsize = vsy/55
function widget:ViewResize(viewSizeX, viewSizeY)
	vsx = viewSizeX
	vsy = viewSizeY
	UIscale = vsx/75
end

function widget:GameFrame(f)
gameframe = f
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
	local ebar_startx = vsx*0.6
	local ebar_endx = vsx*0.95
	local ebar_length =  ebar_endx-ebar_startx
	local ebar_currentendx = ((energy/energystorage)*ebar_length)+ebar_startx
	local ebar_height = UIscale*2
	local ebar_height2 = UIscale/2
	gl.Color(0.8, 0.8, 0.8, 0.5)
	gl.Rect(ebar_endx, vsy-ebar_height, (vsx/2)-UIscale*8,vsy ) --background of metal display
	glText("Metal: " .. metal, vsx/2, vsy-UIscale*1.4, UIscale*1.4, "oc")
	
	gl.Color(1, 1, 0, 0.5)
	gl.Rect(ebar_startx, vsy, ebar_endx, vsy-ebar_height) --background of energy bar in total size/storage	
	gl.Color(1, 1, 0, 0.8)
	--gl.Rect(ebar_startx, vsy-(ebar_height/2)+ebar_height2 , ebar_currentendx, vsy-(ebar_height/2)-ebar_height2) --actual energy bar
	gl.Rect(ebar_startx, vsy-ebar_height , ebar_currentendx, vsy-ebar_height2*3) --actual energy bar
	--sinus_bar (ebar_startx, vsy-(ebar_height/2), ebar_height/2, ebar_currentendx, 50)
	--sinus_bar2 (ebar_startx, vsy-(ebar_height/2), ebar_height/2, ebar_currentendx, ebar_endx, energystorage/50)
	sinus_bar2 (ebar_startx, vsy-(ebar_height2*3.5), ebar_height/4, ebar_currentendx, ebar_endx, energystorage/50)
	gl.Color(0.8, 0.8, 0.8, 0.5)
	--glText("Energy: " .. energy, (ebar_startx+ebar_endx)/2, vsy-UIscale*1.5, UIscale*1.5, "oc")	
	local msg = " Energy: " .. math.floor(energy) --"Energy: " .. math.floor(energy)
	if (energy < 100) then
		msg = " Low Energy"
		if (energyincome < 10) then msg = " Energy Critical" end
	end
	--glText(msg, (ebar_startx+ebar_endx)/2, vsy-UIscale*1.5, UIscale*1.5, "oc") --in middle of energy bar
	glText(msg, ebar_startx, vsy-UIscale*1.2, UIscale*1.4, "o")	
	glText("Income:" ..energyincome , (ebar_startx+ebar_endx)/2.1, vsy+UIscale*0.7, UIscale*1.5, "oc")
	gl.Color(1, 0, 0, 0.8)
	glText("Spending:  " .. math.ceil (energypull) , (ebar_startx+ebar_endx)/2, vsy-UIscale*1.3, UIscale*0.9, "o")
	glText("Production:  " .. math.ceil (energyincome) , (ebar_startx+ebar_endx)/2, vsy-UIscale*0.6, UIscale*0.9, "o")
end
glPopMatrix()
end

function sinus_bar (x,y, h, endx, r)
local SINn = r
local stepx = (endx-x)/(SINn+1)
local a = 2
local SINx = x
local SINy = y
gl.Color(1, 0, 0, 1)
	for i = 0, SINn, 1 do
		SINy = math.sin ((gameframe+SINx)/(UIscale/2)) * (h/2) +y
		SINx = SINx + stepx		
		gl.Rect (SINx-stepx,SINy-a, SINx, SINy+a)		
	end
end

function sinus_bar2 (x,y, h, currentendx, endx, r)
local SINx = x
local SINy = y
local stepx=(endx-x)/r
gl.Color(1, 0, 0, 1)
	for i = 0, r-1, 1 do
		a = math.sin ((gameframe+SINx)/(UIscale/2)) * (h/2)
		SINx = SINx + stepx
		gl.Rect (SINx-stepx,SINy-a, SINx, SINy+a)
		if (SINx > currentendx) then break end
	end
end



function widget:Initialize()
	Spring.SendCommands ("resbar 0")
	Spring.Echo ("tp_ressourcedisplay.lua: type /resbar 1 to get the engines resource bars back")
end