-- criando um vetor normal
local v = {3, 1, 4, 1, 5, 9}
print(v[3])  -- 4

-- criando um vetor associativo
local t = {
   [1000] = 7,
   x = 2,
   y = 3
}
print(t[1000])
print(t["x"])
print(t.x)


-- lembre-se: funções são tipos!
local op = {
   add = function (a, b) return a + b end,
   sub = function (a, b) return a - b end,
   mul = function (a, b) return a * b end,
   div = function (a, b) return a / b end
}
print(op.add(1, 2))