x = 0
y = 0
 
love.window.setTitle("KYT_CAT 2019")
 
love.keyboard.setKeyRepeat(true)
ft = love.graphics.newFont(25)
ft2 = love.graphics.newFont(15)
love.graphics.setFont(ft)
 
function love.keypressed(key)
    if key == "down" and y < love.graphics.getHeight() - 50 then
      y = y + 50
    end
    if key == "up" and y > 0 then
      y = y - 50
    end
    if key == "right" and x < love.graphics.getWidth() - 50 then
      x = x + 50
    end
    if key == "left" and x > 0 then
      x = x - 50
    end
end
 
function love.draw()
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", x, y, 50, 50)
  love.graphics.setFont(ft2)
  love.graphics.setColor(255, 0, 0)
  love.graphics.print({"x :", x, "\n", "y :", y}, x, y, 0)
  love.graphics.setFont(ft)
  love.graphics.print("KYT_CAT", 350, 10, 0)
end
