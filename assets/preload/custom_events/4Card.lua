
canAttackCard = false;
cardSplashAlpha = 0;
cardCurAlpha = 0;
CardIsAllowedOnScreen = true
curNotesLoaded = 0

function onCreate()
    makeLuaSprite('AceOfHearts','AceOfHearts', 100, 490)
    setObjectCamera('AceOfHearts', 'camHUD');
    scaleObject('AceOfHearts', 0.5, 0.5);
    addLuaSprite('AceOfHearts', false);
    doTweenAlpha('AceOfHearts', 'AceOfHearts', a, 0.1, 'linear');

    makeLuaSprite('FullAce','FullAce', -50, 0)
    setObjectCamera('FullAce', 'camHUD');
    scaleObject('FullAce', 0.7, 0.7);
    doTweenAlpha('FullAce', 'FullAce', a, 0.1, 'linear');
    addLuaSprite('FullAce', true);

    if difficultyName == 'Easy' then
        cupheadCardAttackDamage = 1
        cupheadCardAlphaReady = 0.4
    elseif difficultyName == 'Hell' then
        cupheadCardAttackDamage = 0.75
        cupheadCardAlphaReady = 0.55
    else
        cupheadCardAttackDamage = 0.75
        cupheadCardAlphaReady = 0.5
    end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
    if (curNotesLoaded == 2) then
        curNotesLoaded = 2
    elseif (curNotesLoaded < cupheadCardAlphaReady) then
        if (noteType == 'CupNote_Parry') then
            if (isSustainNote == false) then
                cardCurAlpha = cardCurAlpha  + 0.1
                curNotesLoaded = curNotesLoaded + 0.1
            else
                cardCurAlpha = cardCurAlpha  + 0.025
                curNotesLoaded = curNotesLoaded + 0.025
            end 
        else
            cardCurAlpha = cardCurAlpha  + 0.005
            curNotesLoaded = curNotesLoaded + 0.005
        end
    else
        cardCurAlpha = 1
        cardSplashAlpha = 1
        canAttackCard = true;
        curNotesLoaded = 2
        if (CardIsAllowedOnScreen == true) then
            playSound('cuphead_CardIsReady', 5)
        end
    end
end

function onUpdate()
    if (CardIsAllowedOnScreen == true) and (canAttackCard == true) and (keyJustPressed('space')) then
        characterPlayAnim('boyfriend', 'attack', false);
        curHealth = getProperty('health');
        setProperty('health', curHealth + cupheadCardAttackDamage);
        triggerEvent('Add Camera Zoom', '0.1', '0');

        canAttackCard = false;
        cardCurAlpha = 0;
        curNotesLoaded = 0
        doTweenAlpha('AceOfHearts', 'AceOfHearts', cardCurAlpha , 0.25, 'linear');
        doTweenAlpha('FullAce', 'FullAce', cardCurAlpha , 0.25, 'linear');

        playSound('cuphead_CardAttack', 5)
    end


    if (CardIsAllowedOnScreen == true) then 
        doTweenAlpha('AceOfHearts', 'AceOfHearts', cardCurAlpha, 0.01, 'linear');
        doTweenAlpha('FullAce', 'FullAce', cardSplashAlpha, 0.01, 'linear');
    end

    if (cardSplashAlpha > 0) then
        cardSplashAlpha = cardSplashAlpha - 0.035
    end
end

function onEvent(name, value1)
    if (name == '4Card') then
        if value1 == 'true' then
            CardIsAllowedOnScreen = true
        else
            CardIsAllowedOnScreen = false
            doTweenAlpha('AceOfHearts', 'AceOfHearts', 0, 0.01, 'linear');
            doTweenAlpha('FullAce', 'FullAce', 0, 0.01, 'linear');
        end
    end
end