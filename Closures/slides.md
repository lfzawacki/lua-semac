!SLIDE center

![](../Introducao/lua.png)

### Luca Couto Manique Barreto
### Lucas Fialho Zawacki
#### Grupo PET Computação

!SLIDE bullets

# Revisão

* Controle de fluxo
* Funções
* Tabelas

!SLIDE code

# Escopo Léxico

	@@@ ruby
	for i = 1, 10 do
		local var1 = 5
		for j = 1, 3 do
			local var2 = 'oy!'
			print(var1, var2)
		end
		print(var1,var2)
	end

!SLIDE code

# Escopo Léxico

	> 5		oy!
	> 5		oy!
	> 5		oy!
	> 5		nil
	(...)


!SLIDE code

# Closure

    Escopo Léxico 
    	+ 
    Funções como Variáveis de Primeira Ordem
    	=
    Closure

!SLIDE code

# Exemplo

    @@@ ruby
    function itFactory (i)
    	i = i or 0
    	--local i = 0
    	return function()
    		i = 1 + 1
			return 1
    	end
    end

    it1 = itFactory(4)
    it2 = itFactory()

    for i = 1,5 do print(it1()) end

    for i = 1,3 do print(it2()) end


!SLIDE bullets

# Iteradores

* Factories
* For Genérico

!SLIDE code

# For Genérico - Revisão

	@@@ruby
	for namelist in explist do block end

!SLIDE code

# Exemplo

	@@@ruby
	function list_iter (t)
	local i = 0
	local n = table.getn(t)
	return function ()
		i = i + 1
		if i <= n then return t[i] end
		end
	end

	t = {10, 20, 30}
	for element in list_iter(t) do
		print(element)
	end


