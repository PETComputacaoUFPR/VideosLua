require "class"

Node = class()
function Node:init(x)
   self.x = x
   self.next = nil
end


Stack = class()
function Stack:init(capacity)
   self.top = nil
   self.size = 0
   self.capacity = capacity or math.huge
end

function Stack:push(x)
   if self.capacity == self.size then
      error("stack already at max capacity")
   end
   local old_top = self.top
   self.top = Node(x)
   self.top.next = old_top
   self.size = self.size + 1
end

function Stack:pop()
   if self:empty() then
      error("trying to remove element from empty stack")
   end
   self.top = self.top.next
   self.size = self.size - 1
end

function Stack:get_top()
   if self:empty() then
      error("trying to access top element from empty stack")
   end
   return self.top.x
end

function Stack:empty()
   return self.size == 0
end

function Stack:get_size()
   return self.size
end

function Stack:get_capacity()
   return self.capacity
end

function Stack:set_capacity(capacity)
   if capacity < self.size then
      error("trying to set capacity smaller than stack size")
   end
   self.capacity = capacity
end

function Stack:print()
   local node = self.top
   while node do
      io.write(node.x .. " ")
      node = node.next
   end
   io.write("\n")
end



local pilha = Stack()
pilha:push(3)
pilha:push(-1)
pilha:push(0)
print(pilha:get_top())
pilha:print()
pilha:pop()
print(pilha:get_top(), pilha:get_size())

print("-----")
local outra_pilha = Stack(3)
outra_pilha:push(1)
outra_pilha:push(2)
outra_pilha:push(3)
outra_pilha:print()
outra_pilha:push(4)







