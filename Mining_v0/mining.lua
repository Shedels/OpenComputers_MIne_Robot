 local r = require("robot")
 local computer = require("computer")
 local component = require("component")
 local sides = require("sides")
 

print("start") 

loop = 0
road = 0

while loop ~= 1  do
r.select(1)
computer.energy()
if computer.energy() <  5000 then 
r.select(2)
r.turnAround()
r.place()
r.turnLeft()
r.forward()
r.turnRight()
r.select(3)
r.place()
r.select(4)
r.turnLeft()
r.forward()
r.turnAround()
r.place()
r.use()
r.turnLeft()
r.forward()
os.sleep(15)

r.turnRight()
r.select(3)
r.swing() 
r.forward()
r.select(2) 
r.swing() 
r.forward()
r.turnRight() 
r.forward()
end

--очистка инв--
if r.space(32) < 64 then   
    for i=1, 32 do 
    item = component.inventory_controller.getStackInInternalSlot(i)
      if item.name == "minecraft:cobblestone" or item.name == "minecraft:dirt" or item.name== "minecraft:planks" or 
         item.name == "minecraft:gravel" or item.name == "minecraft:stone" or item.name == "minecraft:mossy_cobblestone"
      then 
      
      r.select(i)
    r.dropDown() 
    else 
    break     
    end
    r.select(1)
end
 r.select(1)
end
 -- кнец --

-- в сундук --
if r.space(32) < 63 then   
  r.select(5)
  r.placeUp()
  r.select(1)
    for i=6, 32 do 
      r.select(1)
     
        r.select(i)
        r.dropUp()  
r.space(1)
end
r.space(1)
end 
-- конец --

r.swing() 
r.forward() 
r.turnRight() 
for i = 0, 3, 1 do 

if r.detect() == true then
    while r.detect() == true do
      r.swing()

    end
end

r.swingUp()
r.swingDown() 

if r.detect() == true then
    while r.detect() == true do
      r.swing()

    end
end

r.swing()
r.forward()
end

r.swingDown()
r.swingUp()
r.up() 
r.swingUp()
r.up()
r.swingUp()
r.up()


r.turnLeft()
r.turnLeft()
r.swing()
r.swingUp()
r.swingDown()


for i = 0, 3, 1 do

if r.detect() == true then
    while r.detect() == true do
      r.swing()

    end
end

r.swingUp()
r.swingDown()
r.swing()
r.forward()
end 

r.swingUp()
r.swingDown()
r.down()
r.swingDown()
r.down()
r.swingDown()
r.down()


loop = loop + 1
r.turnRight()

road = road + 1
end 

naz = 0
r.turnRight()
r.turnRight()


while naz ~= road do
r.swing()
naz = naz + 1
r.forward()
end
r.turnAround()