function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Markov' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MarkovNotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				opp3 = tostring(getProperty('boyfriend.curCharacter'))
				if opp3 == "LadyY" then
					setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
				else
					setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
				end
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	opp = tostring(getProperty('boyfriend.curCharacter'))
	if opp == "LadyY" then
		if noteType == 'Markov' then
			setProperty('health', getProperty('health') +0.0475);
			cameraShake('camGame', 0.01, 0.2);
		end
	else
		if noteType == 'Markov' then
			setProperty('health', 0);
			addMisses(999);
			characterPlayAnim('boyfriend', 'hurt', true);
		elseif noteType == 'Markov' then
			setProperty('health', 0);
			addMisses(999);
			characterPlayAnim('boyfriend', 'hurt', true);
    	end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	opp2 = tostring(getProperty('boyfriend.curCharacter'))
	if opp2 == "LadyY" then
		if noteType == 'Markov' then
			setProperty('health', getProperty('health')-0.3) ;
			cameraShake('camGame', 0.01, 0.2);
		end
	else
		if noteType == 'Markov' then
			setProperty('health', getProperty('health') +0.0475);
			cameraShake('camGame', 0.01, 0.2);
		end
	end
	
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end
