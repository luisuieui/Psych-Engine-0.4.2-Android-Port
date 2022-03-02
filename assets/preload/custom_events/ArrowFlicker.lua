function onEvent(name, value1, value2)
    if name == "ArrowFlicker" then
        
        duration = tonumber(value2);
        runTimer('tweenduration',duration);

        character = tonumber(value1);
    
        if character == 1 then
            noteTweenAlpha('A', 4, -1, 0.5, linear);
			noteTweenAlpha('B', 5, -1, 0.5, linear);
			noteTweenAlpha('C', 6, -1, 0.5, linear);
			noteTweenAlpha('D', 7, -1, 0.5, linear);
        elseif character == 2 then
            noteTweenAlpha('E', 0, -1, 0.5, linear);
			noteTweenAlpha('F', 1, -1, 0.5, linear);
			noteTweenAlpha('G', 2, -1, 0.5, linear);
			noteTweenAlpha('H', 3, -1, 0.5, linear);
        end
    end
end

function onTimerCompleted(tag)
    if tag == 'tweenduration' then
		
        noteTweenAlpha('A', 4, 1, 0.5, linear);
		noteTweenAlpha('B', 5, 1, 0.5, linear);
		noteTweenAlpha('C', 6, 1, 0.5, linear);
		noteTweenAlpha('D', 7, 1, 0.5, linear);
		-- oppt
		noteTweenAlpha('E', 0, 1, 0.5, linear);
		noteTweenAlpha('F', 1, 1, 0.5, linear);
		noteTweenAlpha('G', 2, 1, 0.5, linear);
		noteTweenAlpha('H', 3, 1, 0.5, linear);
    end
end
