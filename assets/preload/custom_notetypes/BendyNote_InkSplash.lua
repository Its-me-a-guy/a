inkNoteStayDur = 0
inkNoteStayAddTime = 0
inkNoteDamageDrain = 0

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BendyNote_InkSplash' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_InkSplash_assets');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			end
		end
	end

	if difficultyName == 'Easy' then
		inkNoteStayAddTime = 0.8
		inkNoteDamageDrain = 0.1
    elseif difficultyName == 'Normal' then
		inkNoteStayAddTime = 1
		inkNoteDamageDrain = 0.2
    elseif difficultyName == 'Hard' then
		inkNoteStayAddTime = 1.2
		inkNoteDamageDrain = 0.25
    elseif difficultyName == 'Hell' then
		inkNoteStayAddTime = 1.4
		inkNoteDamageDrain = 0.35   
    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BendyNote_InkSplash' then
		characterPlayAnim('boyfriend', 'hurt', true);
		health = getProperty('health')
		setProperty('health', health- inkNoteDamageDrain);
		doTweenAlpha('InkSplash_Ink', 'InkSplash_Ink', 0, 0.01, 'linear');
		inkNoteStayDur = inkNoteStayDur + inkNoteStayAddTime
	end
end

function onUpdate()
	if inkNoteStayDur > 0 then
		inkNoteStayDur = inkNoteStayDur - 0.01
		doTweenAlpha('InkSplash_Ink', 'InkSplash_Ink', inkNoteStayDur, 0.01, 'linear');
	end
end