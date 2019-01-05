local sti = require "sti"
local gamera = require "gamera"

function love.load()
    -- Load map file
    map = sti("Tile/map.lua")

    -- 135-206-250
    love.graphics.setBackgroundColor(035/255, 106/255, 150/255)
    love.graphics.setBackgroundColor(035/255, 106/255, 150/255)
end

function love.update(dt)
    -- Update world
    map:update(dt)
end

function love.draw()
    -- Draw world
    map:draw()


    -- Only for debug!
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
    -- DEBUG
end
