local function altera_x(x)
   x = 3
end

local function altera_table(t)
   t.x = 3
end

local function altera_table_v2(t)
   t = nil
end


local x = 1
local t = {x = 2}

print(t)  -- 0x60db6ce6df10

altera_x(x)
print(x)

altera_table(t)
print(t.x)

altera_table_v2(t)
print(t.x)

