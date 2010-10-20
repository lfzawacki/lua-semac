io.input('curso.csv')

local l = io.read('*line')

while  l do
	-- qualquer numero de caracteres que nao uma virgula, seguidos de @
	-- seguidos de qualquer numero de caracteres seguido de uma virgula
	-- note o '-' que representa a match nao gulosa
	i,j = string.find(l, '[^,]-@.-,')
	if i and j then
		print(string.sub(l , i,j-1))
	end
	l = io.read('*line')
end


