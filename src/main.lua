import "CoreLibs/sprites"
import "CoreLibs/graphics"
import "menu"
import "gameplay"

playdate.display.setRefreshRate(30)
playdate.graphics.setFont(playdate.graphics.getSystemFont('bold'))

globals = {
	numTrains = 1,
	numExits = 2
}

function playdate.update()
	playdate.graphics.clear()
	scene:update()
end

function startScene(s)
	scene = s
	scene:init()
end

function playdate.gameWillPause() if scene.gameWillPause then scene:gameWillPause() end end
function playdate.leftButtonDown() if scene.leftButtonDown then scene:leftButtonDown() end end
function playdate.leftButtonUp() if scene.leftButtonUp then scene:leftButtonUp() end end
function playdate.rightButtonDown() if scene.rightButtonDown then scene:rightButtonDown() end end
function playdate.rightButtonUp() if scene.rightButtonUp then scene:rightButtonUp() end end
function playdate.upButtonDown() if scene.upButtonDown then scene:upButtonDown() end end
function playdate.upButtonUp() if scene.upButtonUp then scene:upButtonUp() end end
function playdate.downButtonDown() if scene.downButtonDown then scene:downButtonDown() end end
function playdate.downButtonUp() if scene.downButtonUp then scene:downButtonUp() end end
function playdate.AButtonDown() if scene.AButtonDown then scene:AButtonDown() end end
function playdate.AButtonUp() if scene.AButtonUp then scene:AButtonUp() end end
function playdate.BButtonDown() if scene.BButtonDown then scene:BButtonDown() end end
function playdate.BButtonUp() if scene.BButtonUp then scene:BButtonUp() end end

startScene(menu)