local function write(file, text)
   file:write(text)
end

--[[
   read:
      - *line
      - *all
      - *number
      - num
]]

local function read_all(file)
   print(file:read("*all"))
end

local function read_lines(file)
   local line = file:read("*line")
   while line do
      print(line)
      print("------")
      line = file:read("*line")
   end
end

--local file = assert(io.open("teste.txt", "r"))
--write(file, "teste7")
--write(file, "teste8\n")
--write(file, "teste9")
--read_lines(file)
--file:close()



-- standard streams
io.stdout:write("aaa\n")
local input = io.stdin:read("*line")
print("input: " .. input)
io.stderr:write("mensagem de erro\n")