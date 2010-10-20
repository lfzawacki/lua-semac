--[[
	demonstrando escopos globais, locais e de tabelas
--]]

    g = 20 -- global com o número 20
    local l = {} -- local com uma tabela
    if g == 20 then
    	local n = g + 20
    	l["valor"] = n + g
    end
    print(g, l, l["valor"], n )

