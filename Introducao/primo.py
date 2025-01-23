n = int(input())

primo = True
i = 2
while i*i <= n:
    if n % i == 0:
        primo = False
        break
    i = i + 1

if primo:
   print("é primo")
else:
   print("não é primo")
