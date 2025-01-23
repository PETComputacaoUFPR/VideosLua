-- jeito ruim
local function cria_player(nome, coords, inventario, skin_path)
   -- caso queira forçar um argumento obrigatório
   if type(nome) ~= "string" then
      error("nome do player nao definido")
   end
   coords = coords or {x = 0, y = 0, z = 0}
   inventario = inventario or {}
   skin_path = skin_path or "assets/skins/base.png"

   return {nome = nome, coords = coords, inventario = inventario, skin_path = skin_path}
end

local player = cria_player("steve", nil, {meat = 64}, nil)
print(player.nome)














-- jeito correto
local function cria_player(opcoes)
   -- caso queira forçar um argumento obrigatório
   if type(opcoes.nome) ~= "string" then
      error("nome do player nao definido")
   end

   return {
      nome = opcoes.nome,
      coords = opcoes.coords or {x = 0, y = 0, z = 0},
      inventario = opcoes.inventario or {},
      skin_path = opcoes.skin_path or "assets/skins/base.png"
   }
end

local player1 = cria_player({nome = "steve", inventario = {meat = 64}})
local player2 = cria_player({inventario = {chicken = 64}, nome = "alex"})
local player3 = cria_player{nome = "steve", inventario = {meat = 64}}

print(player1.skin_path, player2.nome, player3.inventario)