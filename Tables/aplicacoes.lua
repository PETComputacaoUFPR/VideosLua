-- vetor
local v = {1, 2, 3, 4, 5}

-- registro/struct
local pessoa = {
   nome = "roberto",
   grupo = "pet",
   grr = 2023
}
print(pessoa["grr"])  -- 2023
print(pessoa.nome)    -- roberto

-- TADs
function cria_pilha()
   local p = {tam = 0}
   return p
end

function cria_nodo(x)
   local nodo = {valor = x}
   return nodo
end

function empilha(p, x)
   local nodo = cria_nodo(x)
   if p.topo == nil then
      p.topo = nodo
      p.tam = 1
      return
   end
   local antigo_topo = p.topo
   p.topo = nodo
   nodo.prox = antigo_topo
   p.tam = p.tam + 1
   return
end

function desempilha(p)
   if p.tam == 0 then
      error("tentou desempilhar pilha vazia")
   end
   local x = p.topo.valor
   p.topo = p.topo.prox
   p.tam = p.tam - 1
   return x
end

function imprime_pilha(p)
   local nodo = p.topo
   while nodo do
      print(nodo.valor)
      nodo = nodo.prox
   end
end

local p = cria_pilha()
empilha(p, 1)
empilha(p, 7)
empilha(p, 2)
imprime_pilha(p)  -- 2, 7, 1
desempilha(p)
imprime_pilha(p)  -- 7, 1