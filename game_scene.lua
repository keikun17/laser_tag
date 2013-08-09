-----------------------------------------------------------------------------------------
--
-- game_scene.lua
--
-----------------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local unit = require( "units.unit" )

-----------------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
--
-- NOTE: Code outside of listener functions (below) will only be executed once,
--		 unless storyboard.removeScene() is called.
--
-----------------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view

	-- create a black background to fill screen
	local bg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
  bg:setFillColor( 0 ) -- black

  --local soldier = display.newRect( 40,40, 10, 10)
  --soldier:setFillColor( 200 )
  player = createSoldier( 40, 40, 10, 10 )

	-- all objects must be added to group (e.g. self.view)

	group:insert( bg )
	group:insert( player )
end

-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view

end

	-- INSERT code here (e.g. remove listeners, remove widgets, save state variables, etc.)

-----------------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
-----------------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-----------------------------------------------------------------------------------------

return scene

