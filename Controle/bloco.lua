--[[
   Um bloco é uma lista de instruções, executadas sequencialmente
]]

-- isso é um bloco
if x then
   print("x é verdadeiro")
else
   print("x é falso")
end

i = 0
-- outro bloco
while i < 10 do
   print(i)
   i = i + 1
end

i = 0
-- bloco dentro de bloco
while i < 100 do
   if i % 2 == 0 then
      print(i)
   end
   i = i + 1
end

-- instruções simples, como atribuições, também são blocos
x = 5  -- bloco 1
y, z = 2, -1  -- bloco 2
x, y = y, x  -- bloco 3

-- bloco vazio
;