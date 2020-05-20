local r = require("robot") 
local computer = require("computer")


print("start") 

loop = 0
road = 0

while loop ~= 300  do

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
os.sleep(40)

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
print(r.space(64))

for i = 0, 1 do
if r.space(64) < 63 then 
print(r.space(64))
r.select(64)  
    for i=6, 64 do 
      r.select(1)
      if r.compareTo(i) == true then
        r.select(i)
        r.dropDown()  
      else
       
    end

end
end
end
if r.space(64) < 63 then   
  r.select(5)
  r.placeUp()
  r.select(1)
    for i=6, 64 do 
      r.select(1)
     
        r.select(i)
        r.dropUp()  
r.space(1)
end
end
r.swing() 
r.forward() 
r.turnRight() 
for i = 0, 3, 1 do 
r.swingUp()
r.swingDown() 
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