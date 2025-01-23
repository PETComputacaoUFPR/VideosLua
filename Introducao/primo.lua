n = io.read("*n")

primo = true
i = 2
while i*i <= n do
   if n % i == 0 then
      primo = false
      break
   end
   i = i + 1
end

if primo then
   print("é primo")
else
   print("não é primo")
end
