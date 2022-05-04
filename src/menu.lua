local gfx = playdate.graphics

menu = {}

local menuItems = {
    {
        type = 0,
        var = 'numTrains',
        values = {
            'trains: 1',
            'trains: 2',
            'trains: 3'
        }
    },
    {
        type = 0,
        var = 'numExits',
        values = {
            'exits: 1',
            'exits: 2',
            'exits: 3',
            'exits: 4',
            'exits: 5',
            'exits: 6'
        }
    },
    {
        type = 1,
        text = 'start',
        callback = function() startScene(gameplay) end
    }
}
local difficultyTexts = {
    'very easy',
    'easy',
    'moderate',
    'challenging',
    'diabolical',
    'nightmarish',
    'nightmarish',
    'demonic',
    'demonic',
    'unfathomable',
    'unfathomable',
    'unfathomable',
    'unfathomable',
    'unfathomable',
    'unfathomable',
    'unholy',
    'unholy',
    'unholy',
}
local menuIndex, difficulty

function menu:init()
    menuIndex = 1
    difficulty = difficultyTexts[globals.numTrains * globals.numExits]
end

function menu:update()
    for i = 1, #menuItems do
        local mi = menuItems[i]
        if menuItems[i].type == 0 then
            local text = mi.values[globals[mi.var]]
            if i == menuIndex then
                gfx.fillRect(0, 30*i, 200, 30)
                gfx.setImageDrawMode(gfx.kDrawModeInverted)
                gfx.drawText(text, 0, 30*i)
                gfx.setImageDrawMode(gfx.kDrawModeCopy)
            else
                gfx.drawText(text, 0, 30*i)
            end
        elseif menuItems[i].type == 1 then
            if i == menuIndex then
                gfx.fillRect(0, 30*i, 200, 30)
                gfx.setImageDrawMode(gfx.kDrawModeInverted)
                gfx.drawText(mi.text, 0, 30*i)
                gfx.setImageDrawMode(gfx.kDrawModeCopy)
            else
                gfx.drawText(mi.text, 0, 30*i)
            end
        end
    end

    gfx.drawText('difficulty: '..difficulty, 200, 100)
end

function menu:AButtonDown()
    local mi = menuItems[menuIndex]
    if mi.type == 1 then
        mi.callback()
    end
end

function menu:downButtonDown()
    menuIndex = math.min(#menuItems, menuIndex+1)
    
end

function menu:upButtonDown()
    menuIndex = math.max(1, menuIndex-1)
end

function menu:leftButtonDown()
    local mi = menuItems[menuIndex]
    if mi.type == 0 then
        globals[mi.var] = math.max(1, globals[mi.var]-1)
    end
    difficulty = difficultyTexts[globals.numTrains * globals.numExits]
end

function menu:rightButtonDown()
    local mi = menuItems[menuIndex]
    if mi.type == 0 then
        globals[mi.var] = math.min(#mi.values, globals[mi.var]+1)
    end
    difficulty = difficultyTexts[globals.numTrains * globals.numExits]
end