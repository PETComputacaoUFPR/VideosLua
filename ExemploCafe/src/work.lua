require "src/class"

Work = class()

function Work:init(tasks_cost, prioritization)
   self.tasks = {}
   self.cost = {}
   for task, cost in pairs(tasks_cost) do
      table.insert(self.tasks, task)
      self.cost[task] = cost
   end
   table.sort(self.tasks, function (a, b) return prioritization(a, b, tasks_cost) end)
   self.task_index = 1
end

function Work:execute(energy)
   local task = self.tasks[self.task_index]
   while energy >= self.cost[task] do
      energy = energy - self.cost[task]
      self.cost[task] = 0
      self.task_index = self.task_index + 1
      if self:is_done() then
         return
      end
      task = self.tasks[self.task_index]
   end
   self.cost[task] = self.cost[task] - energy
end

function Work:is_done()
   return self.task_index > #self.tasks
end

function Work:active_tasks()
   local tasks = {}
   for i=self.task_index, #self.tasks do
      local task = self.tasks[i]
      table.insert(tasks, task)
   end
   return tasks
end
