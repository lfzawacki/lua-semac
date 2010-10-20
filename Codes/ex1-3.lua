-- steak de peixe, pêssego com canela e omelete
local cardapio = {-20,50,10 }

local tempo_fila = 20
local tempo_livre = 30
local penalidade_atraso = 5

local vontade = 0   
-- o quanto eu gosto desse almoço
for comida,gosta in ipairs(cardapio) do
	vontade = vontade + gosta
end

-- quanto tempo irei me atrasar
local atraso = tempo_fila +  45 - tempo_livre

-- eu gosto mais da comida ou de chegar no horário?
vontade = vontade - atraso * penalidade_atraso

if vontade > 0 then
	print('Vamos almoçar no RU!')
else
	print('Não dá... vou me atrasar')
end

print('Vontade: ' .. vontade)
