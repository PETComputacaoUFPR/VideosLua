local t = {
   x = 1,
   y = 2,
   z = 3
}

-- insercao
t.a = -1
t[3] = 0

-- delecao
t.x = nil

-- busca por chave
local chave = "a"
if t[chave] ~= nil then
   print("chave existe na table")
else
   print("chave nao existe na table")
end