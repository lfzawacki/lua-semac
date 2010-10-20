local menu = { 'banana', 'batata', 'alface' }

local choice = ''
while choice ~= 'fim' do

	print('Escolha algo, não tenho o dia todo...')
	for i in pairs(menu) do
		print('* ' .. menu[i])
	end	

	choice = io.read()

	local found = nil
	for i in pairs(menu) do
		if choice == menu[i] then
			found = menu[i] 
		end
	end

	print('Escolheu ' .. (found or 'errado!') )
end
