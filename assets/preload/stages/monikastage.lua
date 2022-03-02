
local xx = 520;
local yy = 450;
local xx2 = 820;
local yy2 = 450;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;


function onCreate()
	-- background shit
	makeLuaSprite('sky', 'monikastage/sky', -300, -60);
	setLuaSpriteScrollFactor('sky', 0.1, 0.1);

	makeLuaSprite('floor2', 'monikastage/floor2', -300, -180);
	setLuaSpriteScrollFactor('floor2', 0.8, 0.8);
	
	makeLuaSprite('floor1', 'monikastage/floor1', -300, -140);
	setLuaSpriteScrollFactor('floor1', 1, 1);
	if not lowQuality then
	
		makeLuaSprite('HILLS', 'monikastage/HILLS', -270, -110);
		setLuaSpriteScrollFactor('HILLS', 0.4, 0.4);
		
		--makeLuaSprite('sticklol', 'sticklol', -357, -100);
		--setLuaSpriteScrollFactor('sticklol', 1, 1);
		
		makeLuaSprite('eggman', 'monikastage/eggman', -357, -100);
		setLuaSpriteScrollFactor('eggman', 1, 1);
		
		makeLuaSprite('knuckle', 'monikastage/knuckle', 230, -100);
		setLuaSpriteScrollFactor('knuckle', 1, 1);
		
		makeLuaSprite('frontgrass', 'monikastage/frontgrass', -300, -30);
		setLuaSpriteScrollFactor('frontgrass', 1.2, 1.2);
		
	end
	
	addLuaSprite('sky', false);
	addLuaSprite('HILLS', false);
	addLuaSprite('floor2', false);
	addLuaSprite('floor1', false);
	--addLuaSprite('sticklol', false);
	addLuaSprite('eggman', false);
	addLuaSprite('knuckle', false);
	addLuaSprite('frontgrass', false);

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end