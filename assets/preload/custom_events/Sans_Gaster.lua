gasterIsThere = false

function onEvent(name, value1, value2)
	if name == 'Sans_Gaster' then
		if value1 == 'Add' then
			gasterIsThere = true
			addLuaSprite('SansEvent_GasterHand', true)
		elseif value1 == 'Remove' then 
			gasterIsThere = false
			removeLuaSprite('SansEvent_GasterHand', true)

		end
	end	
end

function onCreate()
	if difficultyName == 'Easy' then
		gasterHealthBlock = 1.5 
		gasterHealthBlockSpriteX = 385
	else
		gasterHealthBlock = 1 
		gasterHealthBlockSpriteX = 540    
	end

	makeLuaSprite('SansEvent_GasterHand','SansEvent_GasterHand', gasterHealthBlockSpriteX, 555)
	setProperty('SansEvent_GasterHand.antialiasing', false)
	setObjectCamera('SansEvent_GasterHand', 'camHUD');
end

function onUpdate()
	health = getProperty('health')
	if (gasterIsThere == true) and (health > gasterHealthBlock) then
			setProperty('health', gasterHealthBlock)
	end
end