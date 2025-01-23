gDIST_MAX = 0.5

-- argumentos opcionais valem nil
function proximo(xa, ya, xb, yb, dist)
   dist = dist or gDIST_MAX
   return (xa - xb) * (xa - xb) + (ya - yb) * (ya - yb) < dist * dist
end

local xa, ya, xb, yb = 0, -3, 1, 4

print(proximo(xa, xb, ya, yb, 6))
print(proximo(xa, xb, ya, yb))