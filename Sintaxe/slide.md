!SLIDE subsection

# Propaganda mode off

!SLIDE bullets

# Sintaxe

* Minimalista
* Menos símbolos e mais palavras

!SLIDE 

    @@@ javascript
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

!SLIDE

# Code

!SLIDE

# Palavras reservadas

    and       break     do        else      elseif
    end       false     for       function  if
    in        local     nil       not       or
    repeat    return    then      true      until
    while

!SLIDE

# Operadores
## Em ordem de precedência

    ^
    not  - (unary)
    *   /
    +   -
    ..
    <   >   <=  >=  ~=  ==
    and
    or

!SLIDE 

# Controle de fluxo

!SLIDE 
# if then else

    @@@ javascript
    if e then 
    	block 
    {else|elsif e then}
    	[else block] 
    end

!SLIDE

### CODE

!SLIDE 
# while

    while e do 
    	block 
    end

!SLIDE

### CODE

!SLIDE
# for numérico

    for Name = e1 , e2 [, e3] do 
    	block
    end

!SLIDE

#code

!SLIDE
# for genérico

    for namelist in explist do 
    	block 
    end

!SLIDE bullets

# Exercícios
