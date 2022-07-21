
function onEvent(name, value1, value2)
	if name == 'Final_Change' then
		if value1 == 'c' then
			triggerEvent('Change Character', 'dad', 'final_cuphead')

			doTweenColor('Final_CharChangeSplash1', 'Final_CharChangeSplash1', '5b001c', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash1','Final Splash instance ', false)
			doTweenColor('Final_CharChangeSplash2', 'Final_CharChangeSplash2', '5b001c', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash2','Final Splash instance ', false)

			doTweenAlpha('Final_Bendy_Tween','Final_Bendy', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans_Tween','Final_Sans', 1, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead_Tween','Final_Cuphead', 0, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead2_Tween','Final_Cuphead_front', 0, 0.01, 'linear')
			doTweenAlpha('Final_Sans2_Tween','Final_Sans_front', 0, 0.01, 'linear')
		elseif value1 == 's' then
			triggerEvent('Change Character', 'dad', 'final_sans')

			doTweenColor('Final_CharChangeSplash1', 'Final_CharChangeSplash1', '193c3c', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash1','Final Splash instance ', false)
			doTweenColor('Final_CharChangeSplash2', 'Final_CharChangeSplash2', '193c3c', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash2','Final Splash instance ', false)

			doTweenAlpha('Final_Bendy_Tween','Final_Bendy', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans_Tween','Final_Sans', 0, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead_Tween','Final_Cuphead', 0, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead2_Tween','Final_Cuphead_front', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans2_Tween','Final_Sans_front', 0, 0.01, 'linear')
		elseif value1 == 'b' then
			triggerEvent('Change Character', 'dad', 'final_bendy')

			doTweenColor('Final_CharChangeSplash1', 'Final_CharChangeSplash1', '3c2a00', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash1','Final Splash instance ', false)
			doTweenColor('Final_CharChangeSplash2', 'Final_CharChangeSplash2', '3c2a00', 0.01, 'linear');
			objectPlayAnimation('Final_CharChangeSplash2','Final Splash instance ', false)

			doTweenAlpha('Final_Bendy_Tween','Final_Bendy', 0, 0.01, 'linear')
			doTweenAlpha('Final_Sans_Tween','Final_Sans', 0, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead_Tween','Final_Cuphead', 0, 0.01, 'linear')
			doTweenAlpha('Final_Cuphead2_Tween','Final_Cuphead_front', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans2_Tween','Final_Sans_front', 1, 0.01, 'linear')
		end
	end	
end

function onCreate()
	makeAnimatedLuaSprite('Final_CharChangeSplash1','Final_CharChangeSplash', -150, 150)
	addAnimationByPrefix('Final_CharChangeSplash1','Final Splash instance ','Final Splash instance ',12, false)
	setObjectCamera('Final_CharChangeSplash1', 'camHUD')
	scaleObject('Final_CharChangeSplash1', 50, 5);
	--doTweenAlpha('Final_CharChangeSplash1','Final_CharChangeSplash', 0, 0.01, 'linear')
	addLuaSprite('Final_CharChangeSplash1',true)

	makeAnimatedLuaSprite('Final_CharChangeSplash2','Final_CharChangeSplash', -150, 0)
	addAnimationByPrefix('Final_CharChangeSplash2','Final Splash instance ','Final Splash instance ',18, false)
	setObjectCamera('Final_CharChangeSplash2', 'camHUD')
	scaleObject('Final_CharChangeSplash2', 50, 5);
	--doTweenAlpha('Final_CharChangeSplash2','Final_CharChangeSplash', 0, 0.01, 'linear')
	setProperty('Final_CharChangeSplash2.flipY', true);
	addLuaSprite('Final_CharChangeSplash2',true)

end