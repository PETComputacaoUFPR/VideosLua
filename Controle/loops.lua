local i

-- em lua, só existe i = i + 1
-- i += 1 (ERRO)
-- i++ (ERRO)

print("WHILE")
i = 0
while i < 10 do
   print(i)
   i = i + 1
end
print("-----")

print("REPEAT")
i = 0
repeat
   print(i)
   i = i + 1
until i >= 10
print("-----")

print("GOTO")
i = 0
::loop::
if i >= 10 then
   goto fora_loop
end
print(i)
i = i + 1
goto loop
::fora_loop::
print("-----")

print("FOR NUMÉRICO")
-- for i=inicial,limite,passo (limite é inclusivo)
for i=0,9,1 do
   print(i)
end
print("-----")

print("FOR GENÉRICO")
i = 0
valores = function () i = i + 1; if i <= 10 then return i-1 else return nil end end
for x in valores do
   print(x)
end