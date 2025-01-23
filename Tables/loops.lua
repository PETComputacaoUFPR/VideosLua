local a = {1, 6, 1, 8}
for i=1,#a do
   print(a[i])
end

print("-----")

local t = {
   x = 1,
   y = 2,
   z = 3
}
for k, v in pairs(t) do
   print(k, v)
end