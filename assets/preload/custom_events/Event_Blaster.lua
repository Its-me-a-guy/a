curHealthValue = 0
newHealthValueStep = 0

function onCreate()
    precacheImage('SansEvent_Blaster');
	if not lowQuality then
		makeAnimatedLuaSprite('SansEvent_Blaster','SansEvent_Blaster', -900, 522)
		addAnimationByPrefix('SansEvent_Blaster','fefe instance ','fefe instance ',24, false)
		scaleObject('SansEvent_Blaster', 0.55, 0.55);	
		setObjectCamera('SansEvent_Blaster', 'camHUD');
	end

	if difficultyName == 'Easy' then
		BlasterDamageDealt = 0.5
	elseif difficultyName == 'Normal' then
		BlasterDamageDealt = 0.8
	elseif difficultyName == 'Hard' then
		BlasterDamageDealt = 1
	elseif difficultyName == 'Hell' then
		BlasterDamageDealt = 1.25          
	end
end

function onEvent(name, value1, value2)
	if name == 'Event_Blaster' then
		if value1 == 'Do' then
			runTimer('BlasterDoDealDamage', 0.6)
			runTimer('BlasterDoRemoveSprite', 1)
			addLuaSprite('SansEvent_Blaster', true)
			playSound('BlasterShoot', 1)
			objectPlayAnimation('SansEvent_Blaster','fefe instance ',true)
		end
	end	
end

function onTimerCompleted(tag)
	health = getProperty('health')
	if tag == 'BlasterDoDealDamage' then
		curHealthValue = health
		newHealthValueStep = curHealthValue - BlasterDamageDealt

		if newHealthValueStep < 0.01 then
			newHealthValueStep = 0.01
		end
		setProperty('health', newHealthValueStep)
	end

	if tag == 'BlasterDoRemoveSprite' then
		removeLuaSprite('SansEvent_Blaster', false)
	end
end
