require "src/coffe_pot"

CoffeMug = CoffePot:extend()
function CoffeMug:drink(quantity)
   if quantity > self.quantity then
      local energy
      energy = self.quantity
      self.quantity = 0
      return energy
   end
   self.quantity = self.quantity - quantity
   return quantity
end

function CoffeMug:refill(coffe_pot)
   local remaining = self.capacity - self.quantity
   local new_coffe = coffe_pot:pour(remaining)
   self.quantity = self.quantity + remaining
end