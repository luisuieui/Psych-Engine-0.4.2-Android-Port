-- Event notes hooks
function onEvent(name, value1, value2)
    if name == "ChangeBF and Opp positions" then
        bfxnotes0 = getPropertyFromGroup('playerStrums', 0, 'x');
        bfxnotes1 = getPropertyFromGroup('playerStrums', 1, 'x');
        bfxnotes2 = getPropertyFromGroup('playerStrums', 2, 'x');
        bfxnotes3 = getPropertyFromGroup('playerStrums', 3, 'x');
        bfxnotes4 = getPropertyFromGroup('playerStrums', 4, 'x');
        opxnotes0 = getPropertyFromGroup('opponentStrums', 0, 'x');
        opxnotes1 = getPropertyFromGroup('opponentStrums', 1, 'x');
        opxnotes2 = getPropertyFromGroup('opponentStrums', 2, 'x');
        opxnotes3 = getPropertyFromGroup('opponentStrums', 3, 'x');
        opxnotes4 = getPropertyFromGroup('opponentStrums', 4, 'x');

        

        bfposx = getCharacterX('bf');
        oppox = getCharacterX('dad');
       
    
        noteTweenX('A',5,opxnotes0,0.1,linear);
        noteTweenX('B',6,opxnotes1,0.1,linear);
        noteTweenX('C',7,opxnotes2,0.1,linear);
        noteTweenX('D',8,opxnotes3,0.1,linear);
        noteTweenX('E',9,opxnotes4,0.1,linear);

        noteTweenX('F',0,bfxnotes0,0.1,linear);
        noteTweenX('G',1,bfxnotes1,0.1,linear);
        noteTweenX('H',2,bfxnotes2,0.1,linear);
        noteTweenX('I',3,bfxnotes3,0.1,linear);
        noteTweenX('J',4,bfxnotes4,0.1,linear);

        setCharacterX('bf', oppox)
        setCharacterX('dad', bfposx)
        
    end
end