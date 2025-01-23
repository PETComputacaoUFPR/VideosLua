local w, h = 1280, 720
local x, y = 5, -3
local player = true


if player then
   print("há um jogador!")
end

if x < 0 or x > w then
   print("jogador saiu da tela!")
else
   print("jogador talvez esteja na tela")
end

if y < 0 then
   print("jogador saiu da tela por cima")
elseif y > h then
   print("jogador saiu da tela por baixo")
else
   print("jogador está verticalmente na tela")
end