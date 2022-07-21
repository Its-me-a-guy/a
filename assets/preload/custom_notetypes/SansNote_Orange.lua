SansOrangePoisonStay = 0
SansOrangeDamage = 0
SansOrangePosionStayAdd = 0

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SansNote_Orange' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_Orange_assets');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); 
			end
		end
	end

	if difficultyName == 'Easy' then
		SansOrangeDamage = 0.005
		SansOrangePosionStayAdd = 48
    elseif difficultyName == 'Normal' then
		SansOrangeDamage = 0.01
		SansOrangePosionStayAdd = 48
    elseif difficultyName == 'Hard' then
		SansOrangeDamage = 0.01
		SansOrangePosionStayAdd = 64
    elseif difficultyName == 'Hell' then
		SansOrangeDamage = 0.02
		SansOrangePosionStayAdd = 64
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'SansNote_Orange' then
		characterPlayAnim('boyfriend', 'hurt', true);
		SansOrangePoisonStay = SansOrangePoisonStay + SansOrangePosionStayAdd
		health = getProperty('health')
		setProperty('health', health- 0.1);
	end
end


function onUpdate()
    if SansOrangePoisonStay == 0 then

	else
		health = getProperty('health')
		setProperty('health', health - SansOrangeDamage);
		SansOrangePoisonStay = SansOrangePoisonStay - 1
   end
end


