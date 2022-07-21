SansBluePoisonStay = 0
SansBlueDamage = 0
SansBluePosionStayAdd = 0

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SansNote_Blue' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_Blue_assets');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			end
		end
	end

	if difficultyName == 'Easy' then
		SansBlueDamage = 0.005
		SansBluePosionStayAdd = 48
    elseif difficultyName == 'Normal' then
		SansBlueDamage = 0.01
		SansBluePosionStayAdd = 48
    elseif difficultyName == 'Hard' then
		SansBlueDamage = 0.01
		SansBluePosionStayAdd = 64
    elseif difficultyName == 'Hell' then
		SansBlueDamage = 0.02
		SansBluePosionStayAdd = 64
    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'SansNote_Blue' then
		characterPlayAnim('boyfriend', 'hurt', true);
		SansBluePoisonStay = SansBluePoisonStay + SansBluePosionStayAdd
		health = getProperty('health')
	end
end


function onUpdate()
    if SansBluePoisonStay == 0 then

	else
		health = getProperty('health')
		setProperty('health', health- SansBlueDamage);
		SansBluePoisonStay = SansBluePoisonStay - 1
   end
end


