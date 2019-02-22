-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local dOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 200, 35 )
dOfPizzaTextField.id = "d textField"

local priceOfPizzaTextField = display.newText( "Enter Diameter of Pizza", display.contentCenterX, display.contentCenterY - 100, native.systemFont, 25 )
priceOfPizzaTextField.id = "area textField"
priceOfPizzaTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/calculatebutton.png", 200, 75 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the price of a pizza given it's diameter
 
    local dOfPizza
    local priceOfPizza
 
    dOfPizza = dOfPizzaTextField.text
    priceOfPizza = ((dOfPizza * 0.50) + 1.75) * 1.13
    -- print( priceOfPizza )
    priceOfPizzaTextField.text = "The price is " .. priceOfPizza

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )