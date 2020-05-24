local r = require("robot")
a = 0
l= 0 
road = 0
print("Start farm")
k = tonumber(io.read())
while l ~= k do 
print(a)
if r.forward()==true then
print(a) 

r.forward()
r.swing()
r.useDown()

else if ( r.forward() == nil and a == 0) then
 a = a + 1
r.turnRight()
r.forward()
print ("11")
r.turnRight()
if (r.forward() == nil) then

r.turnAround()
while true do 
r.forward()
print("22")
end
if ( k == 0) then 
break
end
end

else if (r.forward() == nil and a == 1) then 
a = a - 1
r.turnLeft()

print ("33")
if (r.forward() == nil) then

r.turnAround()
while true do 
r.forward()
print ("44")
if (r.forward() == nil) then

r.turnRight()
break
end

end
k = tonumber(io.read())
end

r.turnLeft()
end
end
end

end