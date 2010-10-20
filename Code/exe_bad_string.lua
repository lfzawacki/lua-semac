--[[
	exemplo de como não escrever código com strings
	a criação constante de novas strings pode ficar pesada
]]

-- WARNING: bad code ahead!!
local buff = ""
for line in io.lines() do
buff = buff .. line .. "\n"
end
-- Fonte: http://www.lua.org/pil/11.6.html
