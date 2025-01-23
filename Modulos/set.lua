--[[
   Defines a set structure
   A set is a non ordered structure that contains unique elements
]]

local function new(values)
   local set = {}
   for _, value in pairs(values) do
      set[value] = true
   end
   return set
end

local function copy(s)
   local s_copy = {}
   for x, _ in pairs(s) do
      s_copy[x] = true
   end
   return s_copy
end

local function belongs(s, x)
   return s[x]
end

-- returns true if s1 is a subset of s2
local function is_subset(s1, s2)
   for x, _ in pairs(s1) do
      if not s2[x] then
         return false
      end
   end
   return true
end

local function union(s1, s2)
   local set = {}
   for x, _ in pairs(s1) do
      set[x] = true
   end

   for x, _ in pairs(s2) do
      set[x] = true
   end

   return set
end

local function remove(s1, x)
   s1[x] = nil
end

-- returns s1 - s2
local function difference(s1, s2)
   local s_diff = copy(s1)
   for x, _ in pairs(s2) do
      remove(s_diff, x)
   end
   return s_diff
end

local function print_set(s)
   local output = "{ "
   for x, _ in pairs(s) do
      output = output .. x .. " "
   end
   output = output .. "}"
   print(output)
end


set = {
   new = new,
   belongs = belongs,
   is_subset = is_subset,
   union = union,
   difference = difference,
   print = print_set
}
return set
