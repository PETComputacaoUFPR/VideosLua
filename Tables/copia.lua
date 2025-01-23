local function shallow_copy(t)
   local new_t = {}
   for k, v in pairs(t) do
      new_t[k] = v
   end
   return setmetatable(new_t, getmetatable(t))
end

local function deep_copy(t)
   local new_t = {}
   for k, v in pairs(t) do
      if type(v) == "table" then
         new_t[k] = deep_copy(v)
      else
         new_t[k] = v
      end
   end
   return setmetatable(new_t, getmetatable(t))
end

local jogador = {
   nome = "steve",
   vida = 20,
   inventario = {meat = 64, egg = 16}
}

local copia_rasa = shallow_copy(jogador)
local copia_profunda = deep_copy(jogador)

print(jogador, jogador.inventario)
print(copia_rasa, copia_rasa.inventario)
print(copia_profunda, copia_profunda.inventario)


-- bônus: cria uma cópia corretamente em qualquer caso
-- inclui casos esquisitos, como chaves que são tables e tables recursivas
-- https://gist.github.com/tylerneylon/81333721109155b2d244
function true_copy(obj, seen)
   -- Handle non-tables and previously-seen tables.
   if type(obj) ~= 'table' then return obj end
   if seen and seen[obj] then return seen[obj] end
 
   -- New table; mark it as seen and copy recursively.
   local s = seen or {}
   local res = {}
   s[obj] = res
   for k, v in pairs(obj) do res[true_copy(k, s)] = true_copy(v, s) end
   return setmetatable(res, getmetatable(obj))
end
