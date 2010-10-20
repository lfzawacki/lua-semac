!SLIDE subsection 

## Como eu escrevo o código então?

!SLIDE bullets 

# Sintaxe 

* Minimalista
* Menos símbolos e mais palavras

!SLIDE code 

    @@@ ruby
	function fizzBuzz(n)
		local res = ""		

		if n % 3 == 0  then
			res = res .. "Fizz"
		end

		if n % 5 == 0 then
			res = res .. "Buzz"
		end

		if res == "" then 
			res = n
		end
		return res
	end

!SLIDE bullets 

# Variáveis

* Locais
* Globais
* Campo de uma tabela

!SLIDE code 

    @@@ ruby
    g = 20 -- global com o número 20
    local l = {} -- local com uma tabela
    if g == 20 then
    	local n = g + 20
    	l["valor"] = n + g
    end
    print(g, l, l["valor"], n )

!SLIDE 

# Palavras reservadas

    and       break     do        else      elseif
    end       false     for       function  if
    in        local     nil       not       or
    repeat    return    then      true      until
    while

!SLIDE 

# Operadores

    ^
    not  - (unary)
    *   /
    +   -
    ..
    <   >   <=  >=  ~=  ==
    and
    or

!SLIDE  bullets

# Controle de fluxo

* Sintaxe para as construções mais comuns de seleção e repetição

!SLIDE 
# if then else

    @@@ ruby
    if exp then 
    	block 
    {elseif exp then 
    	block } 
    [else block] 
    end

!SLIDE code 

    @@@ ruby
    local e = 10
    local num = 2^e
    if num == 512 then
    	print("e = " .. 9)
    elseif num == 1024 then
    	print("e = " .. 10)
    else
    	print("Sei lá então...")
    end

!SLIDE  
# while

    @@@ ruby
    while e do 
    	block 
    end

!SLIDE code 

    @@@ ruby
    -- euclides
    local a = 21
    local b = 3
    while a ~= b do
    	if a > b then 
    		a = a - b
    	else
    		b = b - a
    	end
    end
    print('MDC: ' .. a)

!SLIDE  
# for numérico

    @@@ ruby
    for Name = e1 , e2 [, e3] do 
    	block
    end

!SLIDE code 

    @@@ ruby
    local numbers = { 0 , 99, 3, 20 , 51 }

    for i = 1,table.getn(numbers) do
    	print(numbers[i])
    end

!SLIDE  
# for genérico

    @@@ ruby
    for namelist in explist do 
    	block 
    end

!SLIDE code 

    @@@ ruby
    local food = { "banana", "alface", "batata", "batata-frita" }

    for i in pairs(food) do
    	print('food[' .. i .. '] tem: ' .. food[i])
    end

    for k,v in ipairs(food) do
    	print('food[' .. k .. '] tem: ' .. v)
    end

!SLIDE bullets 

# Exercícios

* Sabendo que a distância da terra até a Lua é aproximadamente 384403 km, faça uma programa que leia do teclado o número de viagens (considere que uma viagem é ida e volta) para a Lua e calcule a distância total a ser percorrida.
* **--->** dica io.read()

!SLIDE smbullets 

# Exercícios

* Faça um programa que decide se você vai almoçar ou não no RU. A entrada é:
   
* Um cardápio (com pesos para o quanto você gosta de cada comida)
* O tempo livre que você tem antes da aula e o tempo esperando na fila
* A aula que você tem depois do almoço com uma penalidade por cada minuto de atraso.

* Assuma que você demora 45 minutos para almoçar depois de entrar no RU.

