function onSongStart()	
	noteTweenX(defaultOpponentStrumX0, 0, -600, 4)
	noteTweenX(defaultOpponentStrumX1, 1, -600, 4)
	noteTweenX(defaultOpponentStrumX2, 2, -600, 4)
	noteTweenX(defaultOpponentStrumX3, 3, -600, 4)
end


function onCreate()
    if difficultyName == 'Easy' then
        bendySingMaxHealthLeft = 0.5
        bendySingHealthDrain = 0.02 
    elseif difficultyName == 'Normal' then
        bendySingMaxHealthLeft = 0.4
        bendySingHealthDrain = 0.03 
    elseif difficultyName == 'Hard' then
        bendySingMaxHealthLeft = 0.2
        bendySingHealthDrain = 0.04   
    elseif difficultyName == 'Hell' then
        bendySingMaxHealthLeft = 0.035
        bendySingHealthDrain = 0.07              
    end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if (dadName == 'bendy_normal') or (dadName == 'bendy_run') or (dadName == 'bendy_run_dark') or (dadName == 'final_bendy') then
        curHealth = getProperty('health')
        if (isSustainNote == false) and (curHealth > bendySingMaxHealthLeft) then
            setProperty('health', curHealth - bendySingHealthDrain)
        end
    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if difficultyName == 'Easy' then
		hitHealth = 0.0253; 
    elseif difficultyName == 'Easy' then
        hitHealth = 0.0207;        
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
    if difficultyName == 'Hell' then
		missHealth = 0.095;        
    end
end
