-- cria um número complexo
function create_complex(real, im)
   local c = {r = real, i = im}
   setmetatable(c, meta_complex)
   return c
end

-- definindo funções para operações com números complexos
function add(a, b)
   return create_complex(a.r + b.r, a.i + b.i)
end

function sub(a, b)
   return create_complex(a.r - b.r, a.i - b.i)
end

function mul(a, b)
   return create_complex(a.r * b.r - a.i * b.i, a.r * b.i + a.i * b.r)
end

function eq(a, b)
   return a.r == b.r and a.i == b.i
end

function to_string(a)
   return (a.r .. " + " .. a.i .. "i")
end

-- definindo metatable
meta_complex = {
   __add = add,
   __sub = sub,
   __mul = mul,
   __tostring = to_string,
   __eq = eq
}

local a = create_complex(2, 3)
local b = create_complex(0, -1)
print(a, b)
local c = a * b 
print(c)
print(c == a * b)