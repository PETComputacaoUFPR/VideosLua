local frase = "those who can imagine anything, can create the impossible"

local frase_x = string.gsub(frase, "%a", "x")
-- xxxxx xxx xxx xxxxxxx xxxxxxxx, xxx xxxxxx xxx xxxxxxxxxx
print(frase_x)

local frase_sem_espacos = string.gsub(frase, "%A", "_")
-- those_who_can_imagine_anything__can_create_the_impossible
print(frase_sem_espacos)

frase = "O prazo é 25/12/2025"
local data = string.sub(frase, string.find(frase, "%d%d/%d%d/%d%d%d%d"))
print(data)

frase = "hello, world"
for x in string.gmatch(frase, ".") do
   print(x)
end

frase = "essa frase 23 possui 76 alguns numeros 435"
for num in string.gmatch(frase, "%d+") do
   print(num)
end

-- captures
frase = "idade = 19"
_, _, var, valor = string.find(frase, "(%w+)%s*=%s*(%d+)")
print(var, valor)
