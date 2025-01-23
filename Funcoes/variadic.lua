-- variadic function
-- select("#", ...) -> retorna quantidade de argumentos
-- select(i, ...) -> retorna o i-ésimo argumento
function min(...)
   local menor = math.huge  -- valor "infinito"
   for i=1,select("#", ...) do
      local temp = select(i, ...)
      if temp < menor then
         menor = temp
      end
   end
   return menor
end

print(min(0, -7))