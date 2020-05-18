local r = require("robot") 


print("Hello qurier started")
print("Skoko w niz = ") 
down = tonumber(io.read())
print("Dlina =") 
dlin = tonumber(io.read())
print("Sherina")
sher = tonumber(io.read())


l = 0
while l ~= down do 
l = l + 1
r.swingDown()
r.down()

for i = 2 , sher do

for i = 2, dlin do 
r.swing()
r.forward()

end
r.turnRight()
r.swing()
r.forward()
r.turnRight()

for i = 2, dlin do 
r.swing()
r.forward()

end

r.turnLeft()
r.swing()
r.forward()
r.turnLeft() 

end
r.turnLeft()
for i = -1 , sher do 
r.forward()
end
r.turnRight()

end