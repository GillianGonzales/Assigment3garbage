-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 09 2018
--
-- This program will calculate the price for pizza
-----------------------------------------------------------------------------------------

--Making Varables
local topping1 = 1
local topping2 = 2
local topping3 = 3
local topping4 = 4
local large = 1
local extraLarge = 2
local subTotal
local taxes
local totalPrice
local userTopping
local userSize
local HTS

-- Change background colour
display.setDefault( "background", 1, 1, 1 )

--Importing Tesxt
local toppingText = display.newText("Type in the amount of topppings", 550, 50, native.systemFont, 75)
toppingText:setFillColor( 0, 0, 0 )
toppingText.id = "Instruction for topppings"

local sizeText = display.newText("Type in the size of the pizza", 475, 270, native.systemFont, 75 )
sizeText:setFillColor( 0, 0, 0 )
sizeText.id = "Instruction for Size of pizza"

local subTotalText = display.newText("Subtotal :", 220, 750, native.systemFont, 75 )
subTotalText:setFillColor( 0, 0, 0 )
subTotalText.id = "The Subtotal"

local taxesText = display.newText("Taxes :", 240, 850, native.systemFont, 75 )
taxesText:setFillColor( 0, 0, 0 )
taxesText.id = "The Taxes"

local totalPriceText = display.newText("Total cost :",  390, 950, native.systemFont, 100)
totalPriceText:setFillColor( 0, 0, 0)
totalPriceText.id  = "The Total Cost"

--Importing TextField
local topppingField = native.newTextField( display.contentCenterX - 700, display.contentCenterY - 600, 600, 110 )
topppingField.id = "Toppping User Input"

local sizeField = native.newTextField( display.contentCenterX - 700, display.contentCenterY - 400, 600, 110 )
sizeField.id = "Size User Input"

--Importing Image
local calculateButton = display.newImageRect("./Assets/sprites/Button.png", 406, 157)
calculateButton.x = display.contentCenterX - 700
calculateButton.y = display.contentCenterY - 200
calculateButton.id = "Function Button"

-- Making Funtions
local function calculatePriceTouch( event )
	-- This funtion will calculate the subtotal, tax and total price
	userTopping = topppingField.text
	userSize = sizeField.text
	HTS = 0.13


	if userTopping + userSize == topping1 + large then
		large = 6
		subTotal = topping1 + large
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : " .. subTotal .. "$"
		taxesText.text = "Taxes : " .. taxes .."$"
		totalPriceText.text = "Total cost : " .. totalPrice .."$"
	end




end

 calculateButton:addEventListener( "touch", calculatePriceTouch)