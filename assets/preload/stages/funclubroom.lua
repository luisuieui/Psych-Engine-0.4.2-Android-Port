function onCreate()
	--background boi
	makeLuaSprite('back1', 'clubroom/FarBack', 0, 0)
	setLuaSpriteScrollFactor('back1', 0.6, 0.6)
	scaleObject('back1', 1.6, 1.6)
	addLuaSprite('back1', false)

	makeLuaSprite('bg1', 'funclubroom/MainBG', 0, 0)
	setLuaSpriteScrollFactor('bg1', 0.6, 0.6)
	scaleObject('bg1', 1.6, 1.6)
	addLuaSprite('bg1', false)


	makeLuaSprite('banner1', 'clubroom/FestivalBanner', 0, 0)
	setLuaSpriteScrollFactor('banner1', 0.6, 0.6)
	scaleObject('banner1', 1.6, 1.6)
	addLuaSprite('banner1', false)

	makeLuaSprite('desk1', 'clubroom/DesksFestival', 0, 0)
	setLuaSpriteScrollFactor('desk1', 0.7, 0.6)
	scaleObject('desk1', 1.6, 1.6)
	addLuaSprite('desk1', false)


	makeLuaSprite('back2', 'funclubroom/FarBack2', 0, 0)
	setLuaSpriteScrollFactor('back2', 0.6, 0.6)
	scaleObject('back2', 1.6, 1.6)
	addLuaSprite('back2', false)

	makeAnimatedLuaSprite('funbg','funclubroom/bgfun',0,0)
	scaleObject('funbg', 1, 1)
	addAnimationByPrefix('funbg','idle','fun dance',24,true)
	objectPlayAnimation('funbg','idle',false)
	setScrollFactor('funbg', -1.5, -0.2)
	addLuaSprite('funbg', false)

	makeLuaSprite('bg2', 'funclubroom/MainBG2', 0, 0)
	setLuaSpriteScrollFactor('bg2', 0.6, 0.6)
	scaleObject('bg2', 1.6, 1.6)
	addLuaSprite('bg2', false)


	makeAnimatedLuaSprite('lights_back2','funclubroom/lights_back2',0,0)
	scaleObject('lights_back2', 1.6, 1.6)
	addAnimationByPrefix('lights_back2','idle','lights back',24,true)
	objectPlayAnimation('lights_back2','idle',false)
	setScrollFactor('lights_back2', -0.53, -0.15);
	addLuaSprite('lights_back2', false)

	makeLuaSprite('banner2', 'funclubroom/FestivalBanner2', 0, 0)
	scaleObject('banner2', 1.6, 1.6)
	setLuaSpriteScrollFactor('banner2', 0.6, 0.6)
	addLuaSprite('banner2', false)

	makeLuaSprite('desk2', 'funclubroom/DesksFestival2', 0, 0)

	scaleObject('desk2', 1.6, 1.6)
	setLuaSpriteScrollFactor('desk2', 0.7, 0.6)
	addLuaSprite('desk2', false)

	makeAnimatedLuaSprite( 'lights_front2', 'funclubroom/lights_front2', 0, 0)
	scaleObject('lights_front2', 2, 2)
	addAnimationByPrefix('lights_front2','idle','Lights front',24,true)
	objectPlayAnimation('lights_front2','idle',false)
	setLuaSpriteScrollFactor('lights_front2', 1.2, -0.1)
	addLuaSprite('lights_front2', false)


	setProperty('back2.visible', false)
	setProperty('funbg.visible', false)
	setProperty('bg2.visible', false)
	setProperty('lights_back2.visible', false)
	setProperty('banner2.visible', false)
	setProperty('desk2.visible', false)
	setProperty('lights_front2.visible', false)



end

function onEvent(name,value1,value2)
	if name == 'Change Main BG' then

		if value1 == '2' then
			setProperty('back2.visible', true)
			setProperty('funbg.visible', true)
			setProperty('bg2.visible', true)
			setProperty('lights_back2.visible', true)
			setProperty('banner2.visible', true)
			setProperty('desk2.visible', true)
			setProperty('lights_front2.visible', true)
			setProperty('back1.visible', false)
			setProperty('bg1.visible', false)
			setProperty('banner1.visible', false)
			setProperty('desk1.visible', false)

		end

		if value1 == '3' then
		setProperty('back2.visible', false)
		setProperty('funbg.visible', false)
		setProperty('bg2.visible', false)
		setProperty('lights_back2.visible', false)
		setProperty('banner2.visible', false)
		setProperty('desk2.visible', false)
		setProperty('lights_front2.visible', false)
		setProperty('back1.visible', true)
		setProperty('bg1.visible', true)
		setProperty('banner1.visible', true)
		setProperty('desk1.visible', true)

		end

	end
end
