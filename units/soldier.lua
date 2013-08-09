function createSoldier( xpos, ypos, x ,y )
  local soldier = display.newRect( xpos, ypos, x, y )
  soldier:setFillColor( 200 )
  return soldier
end
