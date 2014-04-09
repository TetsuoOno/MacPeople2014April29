--幅の取得
local _W = display.contentWidth
--高さの取得
local _H = display.contentHeight
---------------------------------------------------
--背景の表示
local back = display.newRect(_W/2, _H/2, _W, _H)

--画像の表示
local yellow = display.newImage("yellow.png", _W/5, _H/5)

local blue = display.newImage("blue.png", _W/2, _H/5)

local green = display.newImage("green.png", _W*4/5, _H/5)
---------------------------------------------------
local yBase = display.newImage("yBase.png", _W*4/5, _H*4/5)

local bBase = display.newImage("bBase.png", _W/5, _H*4/5)

local gBase = display.newImage("gBase.png", _W/2, _H*4/5)
---------------------------------------------------
--タッチイベントのfunction
local function onYellow(event)
	--タッチを開始したとき
	if( event.phase == "began" ) then
		--オブジェクトを最前面に表示
		yellow:toFront()
		--現在のオブジェクトにフォーカス
		display.getCurrentStage():setFocus(event.target)
	--ドラッグいているとき
	elseif( event.phase == "moved" ) then
		--オブジェクトのx座標を変更
		yellow.x = event.x
		--オブジェクトのy座標を変更
		yellow.y = event.y
		
		--変数を宣言
		local l,h,length_W,length_H
		
		--タッチ位置のx座標とターゲットのx座標の差
		l = event.x - (_W*4/5)
		--絶対値とする
		length_W = math.abs( l )
		
		--タッチ位置のy座標とターゲットのy座標の差
		h = event.y - (_H*4/5)
		--絶対値とする
		length_H = math.abs( h )
			
		--ターゲットとの距離の条件
		if( (length_W < 30) and (length_H < 30) )then
			--オブジェクトを移動
			transition.to(yellow, {time = 1000, x = _W*4/5, y = _H*4/5})
		end
	--タッチし終わった時
	elseif("ended" == event.phase)then
		--オブジェクトへのフォーカスを解除
		display.getCurrentStage():setFocus(nil)
	end
end

--オブジェクトyellowをタッチイベントの対象に設定
yellow:addEventListener("touch", onYellow)
---------------------------------------------------
local function onBlue(event)
	if( event.phase == "began" ) then
		blue:toFront()
		display.getCurrentStage():setFocus(event.target)
	elseif( event.phase == "moved" ) then
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
	elseif("ended" == event.phase)then
		display.getCurrentStage():setFocus(nil)
	end
end

blue:addEventListener("touch", onBlue)

---------------------------------------------------

local function onGreen(event)
	if( event.phase == "began" ) then
		green:toFront()
		display.getCurrentStage():setFocus(event.target)
	elseif( event.phase == "moved" ) then
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
	elseif("ended" == event.phase)then
		display.getCurrentStage():setFocus(nil)
	end
end

green:addEventListener("touch", onGreen)

---------------------------------------------------
