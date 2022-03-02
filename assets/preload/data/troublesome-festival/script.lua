
local xx = 425;
local yy = 450;
local xx2 = 625;
local yy2 = 450;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
    deathscreen = math.random(1, 3)
    if deathscreen == 1 then
    
        scream = "TailsScreamLOL"
    end
    if deathscreen == 2 then
       
        scream = "KnucklesScreamLOL"
    end
    if deathscreen == 3 then
        
        scream = "EggmanScreamLOL"
    end
    setPropertyFromClass('GameOverSubstate', 'characterName', 'nogf'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', scream); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverSon'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndSon'); --put in mods/music/
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
function opponentNoteHit()
    health = getProperty('health')
    opp = tostring(getProperty('dad.curCharacter'))

    
    
    if opp == "yurichr" then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.025);
        end
    end
    if opp == "tryagain" then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.050);
        end
    end
    if opp == "libitina" then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.030);
        end
    end
    if opp == "libitinax" then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.030);
        end
    end
end

