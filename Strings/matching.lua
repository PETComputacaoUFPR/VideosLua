local frase = "Sometimes it is the people no one can imagine anything of who do the things no one can imagine."

local inicio, fim = string.find(frase, "any")
-- 47 49
print(inicio, fim)

local nova_frase = string.gsub(frase, "s", "x")
-- Sometimex it ix the people no one can imagine anything of who do the thingx no one can imagine.
print(nova_frase)

local _, spaces = string.gsub(frase, " ", " ")
-- Espaços: 18
print("Espaços: " .. spaces)

for s in string.gmatch(frase, "s") do
   print(s)
end
-- s
-- s
-- s

