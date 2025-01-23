require "src/coffe_pot"

CoffeMug = CoffePot:extend()
function CoffeMug:drink(quantity)
   local energy
   if quantity > self.quantity then
      energy = self.quantity
      self.quantity = 0
      return energy
   end
   self.quantity = self.quantity - quantity
   energy = quantity
   return energy
end

function CoffeMug:refill(coffe_pot)
   local remaining = self.capacity - self.quantity
   local new_coffe = coffe_pot:pour(remaining)
   self.quantity = self.quantity + new_coffe
end