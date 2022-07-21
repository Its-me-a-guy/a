function onEvent(name)
    if name == '00HealthDifficulty' then
        curhealth = getProperty('health')

        if difficultyName == 'Easy' then
            setProperty('health', curhealth + 1)
        elseif difficultyName == 'Normal' then
            setProperty('health', curhealth + 0.2)
        elseif difficultyName == 'Hard' then
            setProperty('health', curhealth - 0.2)         
        elseif difficultyName == 'Hell' then
            setProperty('health', curhealth - 1)                
        end
    end
end