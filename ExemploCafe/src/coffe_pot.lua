require "src/class"

CoffePot = class()
function CoffePot:init(capacity)
   self.capacity = capacity
   self.quantity = 0
end

function CoffePot:brew(volume)
   self.quantity = math.min(self.quantity + volume, self.capacity)
end

function CoffePot:brew()
   self.quantity = self.capacity
end

function CoffePot:pour(quantity)
   if quantity > self.quantity then
      local actual_quantity = self.quantity
      self.quantity = 0
      return actual_quantity
   end
   self.quantity = self.quantity - quantity
   return quantity
end

function CoffePot:is_empty()
   return self.quantity == 0
end

function CoffePot:get_capacity()
   return self.capacity
end

function CoffePot:get_quantity()
   return self.quantity
end