function onCreate()
	-- background shit
	makeLuaSprite('backtrees', 'cyclesstage/lordyuri', -500, -300);
	setScrollFactor('backtrees', 1, 1);
	addLuaSprite('backtrees', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end