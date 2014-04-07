--幅の取得
local _W = display.contentWidth
--高さの取得
local _H = display.contentHeight

---------------------------------------------------
--背景の表示
local back = display.newRect(_W/2, _H/2, _W, _H)


---[[
local yBase = display.newImage("yBase.png", 0, 0)
yBase.x = _W*4/5 ; yBase.y = _H*4/5

local bBase = display.newImage("bBase.png", 0, 0)
bBase.x = _W/5 ; bBase.y = _H*4/5

local gBase = display.newImage("gBase.png", 0, 0)
gBase.x = _W/2 ; gBase.y = _H*4/5
--]]
---------------------------------------------------

local yellow = display.newImage("yellow.png", _W/5, _H/5)
---[[
local blue = display.newImage("blue.png", _W/2, _H/5)

local green = display.newImage("green.png", _W*4/5, _H/5)
--]]
---------------------------------------------------
---[[
local function onYellow(event)
	if( event.phase == "moved" ) then
		yellow.x = event.x
		yellow.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W*4/5)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			transition.to(yellow, {time = 1000, x = _W*4/5, y = _H*4/5})
		end
	end
end

yellow:addEventListener("touch", onYellow)
--]]
---------------------------------------------------
---[[
local function onBlue(event)
	if( event.phase == "moved" ) then
		blue.x = event.x
		blue.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W/5)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			transition.to(blue, {time = 1000, x = _W/5, y = _H*4/5})
		end
	end
end

blue:addEventListener("touch", onBlue)

---------------------------------------------------

local function onGreen(event)
	if( event.phase == "moved" ) then
		green.x = event.x
		green.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W/2)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			transition.to(green, {time = 1000, x = _W/2, y = _H*4/5})
		end
	end
end

green:addEventListener("touch", onGreen)
--]]
---------------------------------------------------
