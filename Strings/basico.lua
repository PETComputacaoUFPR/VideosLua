local s = "Hello world!"

print(string.upper(s))  -- HELLO WORLD!
print(string.lower(s))  -- hello world!

print(string.sub(s, 1, 5))   -- Hello
print(string.sub(s, 5, -1))  -- o world!
print(string.sub(s, 1, -2))  -- Hello world

local pi = 3.14159
local raio = 6378.1
local dia, mes, ano = 14, 1, 2025

print(string.format("%.3f", pi))   -- 3.142
print(string.format("%.3e", raio)) -- 6.378e+03                  
print(string.format("%02d/%02d/%04d", dia, mes, ano))  -- 14/01/2025
print(string.format("%010.2f", raio))  -- 0006378.10