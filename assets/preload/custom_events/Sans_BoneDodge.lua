sansCanDoDodge = false
sansMustDoDodge = false
sansBoneDodgeTime = 0


function onCreate()
	makeAnimatedLuaSprite('SansEvent_Dodge','SansEvent_Dodge', 640, 300)
	addAnimationByPrefix('SansEvent_Dodge','SansBoneWarn ','Alarm instance ',24 , true)
	setObjectCamera('SansEvent_Dodge', 'camHUD');
	scaleObject('SansEvent_Dodge', 0.65, 0.65);	

	makeAnimatedLuaSprite('SansEvent_Dodge_Hit','SansEvent_Dodge', 640, 300)
	addAnimationByPrefix('SansEvent_Dodge_Hit','SansBoneHit ','Bones boi instance ',24 , false)
	setObjectCamera('SansEvent_Dodge_Hit', 'camHUD');
	scaleObject('SansEvent_Dodge_Hit', 0.65, 0.65);	

	if difficultyName == 'Easy' then
		sansBoneDodgeBeats = 4
		sansBoneDodgeDamage = 0.5
	elseif difficultyName == 'Normal' then
		sansBoneDodgeBeats = 2
		sansBoneDodgeDamage = 0.8
	else
		sansBoneDodgeBeats = 2
		sansBoneDodgeDamage = 1       
	end
end

function onEvent(name, value1)
	if name == 'Sans_BoneDodge' then
		playSound('SansBoneDodge_Appear', 1)
		removeLuaSprite('SansEvent_Dodge_Hit', false)
		addLuaSprite('SansEvent_Dodge', true)
		sansBoneDodgeTime = sansBoneDodgeBeats
		sansCanDoDodge = true
		sansMustDoDodge = true
	end
end

function onUpdate()
	if sansCanDoDodge == true and keyJustPressed('space') then
		playSound('SansBoneDodge_Dodge', 0.7)
		removeLuaSprite('SansEvent_Dodge', false)
		sansCanDoDodge = false
		sansMustDoDodge = false
	end
end

function onBeatHit()
	if sansBoneDodgeTime == 0 and sansMustDoDodge == true then 
		playSound('SansBoneDodge_Miss', 1)
		removeLuaSprite('SansEvent_Dodge', false)
		addLuaSprite('SansEvent_Dodge_Hit', true)
		sansCanDoDodge = false
		sansMustDoDodge = false
		health = getProperty('health')
		setProperty('health', health - sansBoneDodgeDamage)

	elseif sansBoneDodgeTime > 0 then
		playSound('SansBoneDodge_Damage', 0.5)
		sansBoneDodgeTime = sansBoneDodgeTime - 1
	end
end