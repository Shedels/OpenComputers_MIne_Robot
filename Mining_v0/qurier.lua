local r = require("robot") 

print("Hello qurier started")
print("Skoko w niz = ") 
down = io.read()
print("Dlina =") 
dlin = io.read()
print("Sherina")
sher = io.read()


local l = 0
while l ~= down do 

r.swingDown()
r.down()

for i2 = 0, i2 == sher do

for i=0, i == dlin, 1 do 
r.swing()
r.forward()
end
r.tunrRight()
r.swing()
t.forward()
r.tunrRight()
for i=0, i == dlin, 1 do 
r.swing()
r.forward()
end
r.tunrLeft() 
r.swing()
t.forward()
r.tunrLeft()

end
end







end
