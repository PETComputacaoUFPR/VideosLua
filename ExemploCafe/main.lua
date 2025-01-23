require "src/coffe_mug"
require "src/coffe_pot"
require "src/work"

local TASKS = {
   ["pull request"] = 10,
   ["fix bugs"] = 80,
   ["meeting"] = 70,
   ["study lua"] = 20,
   ["install love2d"] = 5
}

local function prioritize_easiest(task_a, task_b, cost)
   return cost[task_a] < cost[task_b]
end

local coffe_pot = CoffePot(1000)
local coffe = CoffeMug(100)
local work = Work(TASKS, prioritize_easiest)

local working = true
local energy
local sip = 10

while (working) do
   energy = coffe:drink(sip)
   work:execute(energy)
   if coffe:is_empty() then
      if coffe_pot:is_empty() then
         coffe_pot:brew()
      end
      coffe:refill(coffe_pot)
   end
   working = not work:is_done()
end
