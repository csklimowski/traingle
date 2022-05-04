gameplay = {}

local trains = {} -- list of images of trains
local spaces = {} -- list of images of spaces (unfilled or filled)
local grid = {} -- information about which tile is where
local nextTileLocation = {}


pathTiles = {
    0={
        img='tile-0',
        0={},
        1={},
        2={4},
        3={},
        4={2}
    },
    1={
        img='tile-1',
        0={2},
        1={3},
        2={0},
        3={1},
        4={}
    },
    2={
        img='tile-2',
        0={3},
        1={2},
        2={1},
        3={0},
        4={}
    },
    3={
        img='tile-3',
        0={},
        1={2},
        2={1, 3},
        3={2},
        4={}
    },
    4={
        img='tile-4',
        0={2, 3},
        1={},
        2={0},
        3={0},
        4={}
    },
    5={
        img='tile-5',
        0={1, 2},
        1={0},
        2={0},
        3={},
        4={}
    },
    6={
        img='tile-6',
        0={},
        1={2, 3},
        2={1, 3},
        3={1, 2},
        4={}
    },
    7={
        img='tile-7',
        0={1},
        1={0, 3},
        2={3},
        3={1, 2},
        4={}
    },
    8={
        img='tile-8',
        0={3},
        1={2, 3},
        2={1},
        3={0, 1},
        4={}
    },
    9={
        img='tile-9',
        0={1, 3},
        1={0},
        2={3},
        3={0, 2},
        4={}
    },
    10={
        img='tile-10',
        0={},
        1={},
        2={4},
        3={},
        4={2}
    }
}

function gameplay:init()
    nextTileLocation = {2, 2}
end

function gameplay:update()
    
end

function gameplay:AButtonDown()
    
end

function gameplay:BButtonDown()
    
end

function gameplay:downButtonDown()
    
end

function gameplay:upButtonDown()
    
end

function gameplay:leftButtonDown()
    
end

function gameplay:rightButtonDown()
    
end