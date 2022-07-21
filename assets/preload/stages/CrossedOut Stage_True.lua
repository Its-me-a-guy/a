function onCreate()
	makeLuaSprite('Final_Stars1', 'Final_Stars1', -1600, -800);
	setScrollFactor('Final_Stars1', 0.6, 0.6);
	scaleObject('Final_Stars1', 1.5, 1.5);
	
	makeLuaSprite('Final_Stars2', 'Final_Stars2', -1600, -800);
	setScrollFactor('Final_Stars2', 0.4, 0.4);
	scaleObject('Final_Stars2', 1.5, 1.5);

	makeLuaSprite('Final_Stars3', 'Final_Stars3', -1600, -800);
	setScrollFactor('Final_Stars3', 0.2, 0.2);
	scaleObject('Final_Stars3', 1.5, 1.5);

	makeAnimatedLuaSprite('Final_Bendy','Final_Bendy', -1080, -490)
	addAnimationByPrefix('Final_Bendy','IdleBedy','DeathBendy instance ',24, true)
	scaleObject('Final_Bendy', 2.2, 2.2);

	makeAnimatedLuaSprite('Final_Cuphead','Final_Cuphead', -470, 30)
	addAnimationByPrefix('Final_Cuphead','IdleCuphead','Idle instance ',24, true)
	scaleObject('Final_Cuphead', 1.9, 1.9);

	makeAnimatedLuaSprite('Final_Sans','Final_Sans', -120, -440)
	addAnimationByPrefix('Final_Sans','IdleSans','Nightmare SANS Idle instance ',24, true)
	scaleObject('Final_Sans', 1.5, 1.5);

	makeAnimatedLuaSprite('Final_Cuphead_front','Final_Cuphead', -470, 30)
	addAnimationByPrefix('Final_Cuphead_front','IdleCuphead','Idle instance ',24, true)
	scaleObject('Final_Cuphead_front', 1.9, 1.9);

	makeAnimatedLuaSprite('Final_Sans_front','Final_Sans', -120, -440)
	addAnimationByPrefix('Final_Sans_front','IdleSans','Nightmare SANS Idle instance ',24, true)
	scaleObject('Final_Sans_front', 1.5, 1.5);

	makeLuaSprite('CupheadStage1_Background', 'CupheadStage1_Background', -795, -495);
	setScrollFactor('CupheadStage1_Background', 0.6, 0.6);
	scaleObject('CupheadStage1_Background', 3.2, 3.2);
	if not lowQuality then
		makeLuaSprite('CupheadStage1_Back', 'CupheadStage1_Back', -795, -495);
		setScrollFactor('CupheadStage1_Back', 0.8, 0.8);
		scaleObject('CupheadStage1_Back', 3.5, 3.2);
	end
	makeLuaSprite('CupheadStage1_Front', 'CupheadStage1_Front', -795, -495);
	setScrollFactor('CupheadStage1_Front', 1, 1);
	scaleObject('CupheadStage1_Front', 3.2, 3.2);

	makeLuaSprite('CupheadStage2_Dark_Background', 'CupheadStage2_Dark_Background', -795, -495);
	setScrollFactor('CupheadStage2_Dark_Background', 0.6, 0.6);
	scaleObject('CupheadStage2_Dark_Background', 3.2, 3.2);
	if not lowQuality then
		makeLuaSprite('CupheadStage2_Dark_Back', 'CupheadStage2_Dark_Back', -795, -495);
		setScrollFactor('CupheadStage2_Dark_Back', 0.8, 0.8);
		scaleObject('CupheadStage2_Dark_Back', 3.5, 3.2);
	end
	makeLuaSprite('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', -795, -495);
	setScrollFactor('CupheadStage2_Dark_Front', 1, 1);
	scaleObject('CupheadStage2_Dark_Front', 3.2, 3.2);

	doTweenAlpha('CupheadStage2_Dark_Background', 'CupheadStage2_Dark_Background', 0, 0.01,'linear')
	doTweenAlpha('CupheadStage2_Dark_Back', 'CupheadStage2_Dark_Back', 0, 0.01,'linear')
	doTweenAlpha('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', 0, 0.01,'linear')

	makeLuaSprite('SansStage1_Back', 'SansStage1_Back', -800, -550);
	setScrollFactor('SansStage1_Back', 1, 1);
	scaleObject('SansStage1_Back', 2.5, 2.5);

	makeLuaSprite('SansStage3_Back', 'SansStage3_Back', -800, -550);
	setScrollFactor('SansStage3_Back', 1, 1);
	scaleObject('SansStage3_Back', 2, 2);

	makeLuaSprite('SansStage4_Front', 'SansStage4_Front', -800, -550);
	setScrollFactor('SansStage4_Front', 1, 1);
	scaleObject('SansStage4_Front', 2, 2);
	doTweenAlpha('SansStage4_Front', 'SansStage4_Front', 0, 0.01,'linear')

	makeLuaSprite('SansStage4_BackFrame1', 'SansStage4_BackFrame1', -800, -550);
	setScrollFactor('SansStage4_BackFrame1', 1, 1);
	scaleObject('SansStage4_BackFrame1', 2, 2);
	doTweenAlpha('SansStage4_BackFrame1','SansStage4_BackFrame1', 0, 0.01, 'linear')

	makeLuaSprite('SansStage4_BackFrame2', 'SansStage4_BackFrame2', -800, -550);
	setScrollFactor('SansStage4_BackFrame2', 1, 1);
	scaleObject('SansStage4_BackFrame2', 2, 2);
	doTweenAlpha('SansStage4_BackFrame2','SansStage4_BackFrame2', 0, 0.01, 'linear')

	makeLuaSprite('BendyStage1_Background', 'BendyStage1_Background', -400, -550);
	setScrollFactor('BendyStage1_Background', 0.7, 0.7);

	makeLuaSprite('BendyStage1_Back', 'BendyStage1_Back', -800, -550);
	setScrollFactor('BendyStage1_Back', 0.9, 0.9);

	makeLuaSprite('BendyStage1_Front', 'BendyStage1_Front', -700, -470);
	setScrollFactor('BendyStage1_Front', 1, 1);
	scaleObject('BendyStage1_Front', 0.9, 0.9);

	makeLuaSprite('BendyStage1_Pillar', 'BendyStage1_Pillar', 1300, -580);
	setScrollFactor('BendyStage1_Pillar', 1.2, 1.2);

	makeAnimatedLuaSprite('BendyStage2_Back','BendyStage2_Back', -750, -450)
	scaleObject('BendyStage2_Back', 2, 2);
	addAnimationByPrefix('BendyStage2_Back','Pain ','Pain ', 48, true)
	doTweenAlpha('BendyStage2_Back','BendyStage2_Back', 0, 0.01, 'linear')

	makeAnimatedLuaSprite('BendyStage3_Back','BendyStage3_Back', -750, -450)
	scaleObject('BendyStage3_Back', 2, 2);
	addAnimationByPrefix('BendyStage3_Back','Pain ','Pain ', 48, true)
	doTweenAlpha('BendyStage3_Back','BendyStage3_Back', 0, 0.01, 'linear')

	if not lowQuality then
		makeAnimatedLuaSprite('CupheadStage2_Rain1','CupheadStage2_Rain1', -700, -250)
		addAnimationByPrefix('CupheadStage2_Rain1','RainFirstlayer instance ','RainFirstlayer instance ',24, true)
		scaleObject('CupheadStage2_Rain1', 1.6, 1.6);

		makeAnimatedLuaSprite('CupheadStage2_Rain2','CupheadStage2_Rain2', -700, -250)
		addAnimationByPrefix('CupheadStage2_Rain2','RainFirstlayer instance ','RainFirstlayer instance ',24, true)
		scaleObject('CupheadStage2_Rain2', 1.6, 1.6);	

		makeAnimatedLuaSprite('SansStage3_Papyrus','SansStage3_Papyrus', -500, -110)
		addAnimationByPrefix('SansStage3_Papyrus','Idle instance ','Idle instance ',24, true)
		scaleObject('SansStage3_Papyrus', 2, 2);

		objectPlayAnimation('SansStage3_Papyrus','Idle instance ', false)
		makeAnimatedLuaSprite('SansStage3_Gf','SansStage3_Gf', 800, 150)
		addAnimationByPrefix('SansStage3_Gf','GF Dancing Beat','GF Dancing Beat',24, true)
		objectPlayAnimation('SansStage3_Gf','GF Dancing Beat', false)

		makeLuaSprite('SansStage3_Mugman', 'SansStage3_Mugman', 1600, 750);

		makeAnimatedLuaSprite('BendyStage1_Sammy','BendyStage1_Sammy', 1350, 10)
		addAnimationByPrefix('BendyStage1_Sammy','Sam instance ','Sam instance ',24, true)
		setProperty('BendyStage1_Sammy.flipX', true);
		scaleObject('BendyStage1_Sammy', 1.3, 1.3);

		makeLuaSprite('BendyStage1_Boi', 'BendyStage1_Boi', 400, 100);
		setScrollFactor('BendyStage1_Boi', 0.7, 0.7);
		scaleObject('BendyStage1_Boi', 0.35, 0.35);

		makeLuaSprite('BendyStage1_Chains1', 'BendyStage1_Chains', -800, -750);
		setScrollFactor('BendyStage1_Chains1', 1.1, 1.1);
		scaleObject('BendyStage1_Chains1', 1.5, 1.5);

		makeLuaSprite('BendyStage1_Chains2', 'BendyStage1_Chains', 650, -50);
		setScrollFactor('BendyStage1_Chains2', 0.72, 0.72);
		scaleObject('BendyStage1_Chains2', 0.5, 0.5);
		setProperty('BendyStage1_Chains2.flipX', true);

		makeLuaSprite('BendyStage1_Chains3', 'BendyStage1_Chains', 1300, -750);
		setScrollFactor('BendyStage1_Chains3', 1.1, 1.1);
		scaleObject('BendyStage1_Chains3', 1.5, 1.5);
		setProperty('BendyStage1_Chains3.flipX', true);

		makeLuaSprite('Final_Stars4', 'Final_Stars4', -1600, -800);
		setScrollFactor('Final_Stars4', 0.05, 0.05);
		scaleObject('Final_Stars4', 1.5, 1.5);

		makeLuaSprite('Final_Stars5', 'Final_Stars3', -1600, -800);
		setScrollFactor('Final_Star5', 1.4, 1.4);
		scaleObject('Final_Stars5', 3, 3);

		makeLuaSprite('Final_Stars6', 'Final_Stars4', -1600, -800);
		setScrollFactor('Final_Stars6', 1.2, 1.2);
		scaleObject('Final_Stars6', 3, 3);

		makeAnimatedLuaSprite('Final_Base1','Final_Base', 430, 600)
		addAnimationByPrefix('Final_Base1','Ground Bop instance1 ','Ground Bop instance ', 24, false)
		scaleObject('Final_Base1', 2, 2);

		makeAnimatedLuaSprite('Final_Base2','Final_Base', -1880, 440)
		addAnimationByPrefix('Final_Base2','Ground Bop instance2 ','Ground Bop instance ', 24, false)
		scaleObject('Final_Base2', 4.5, 3);
	end

	addLuaSprite('CupheadStage1_Background', false);
	addLuaSprite('CupheadStage1_Back', false);
	addLuaSprite('CupheadStage1_Front', false);
	addLuaSprite('CupheadStage2_Dark_Background', false);
	addLuaSprite('CupheadStage2_Dark_Back', false);
	addLuaSprite('CupheadStage2_Dark_Front', false);

	close(true);
end

-- if not lowQuality then
-- end
