!SLIDE subsection transition=fade

## Quais são os tipos disponíveis?

!SLIDE bullets transition=fade

# Tipos #

* "Primitivos"
* String
* Table
* Function
* Outros

!SLIDE bullets transition=fade

# "Primitivos"

* Nil
* Number
* Boolean

!SLIDE  transition=fade

    @@@ ruby
    print(a, type(a)) -- variável não inicializada
    a = 20
    print(a, type(a))

    -- b == nil
    if a and b then
    	print('Impossivel')
    end

!SLIDE bullets transition=fade

# String

* Imutável
* Funções de utilidade dentro da tabela string

!SLIDE  transition=fade

    @@@ ruby
    local str = 'nova string'
    local outra_str = "com aspas duplas"
    print( str .. ' com ' .. outra_str)
    print( string.gsub(str , 'nova' , 'velha') )

!SLIDE transition=fade

    @@@ ruby
    -- saudades do printf?
    local idade = 19
    local nome = 'lucas'
    print(string.format('Oi eu sou %s e tenho %d anos.\n',nome,idade) )

!SLIDE bullets transition=fade

# Tables

* Única estrutura de dados
* Uma hash associativo
* Serve como array, dicionario, struct, ...

!SLIDE  code transition=fade

    @@@ ruby
    -- declaracao de uma tabela vazia
    a = {}
    -- preenchendo com valores
    a["lucas"] = 10
    a["jesus"] = 0
    a[1] = 3  

!SLIDE code transition=fade

    @@@ ruby
    -- exemplo de array
    array = { 4, 3, 2 , 1 }
    print(a[1]) -- 4
    print(a[3]) -- 2


!SLIDE code transition=fade

    @@@ ruby
    -- exemplo de struct
    peep = {}
    peep.name = "lucas" -- equivalente a peep["name"] = "lucas"
    peep["age"] = 19 --  também podia ser peep.age = 19
    print(peep.name .. " | " .. peep.age)

!SLIDE bullets transition=fade

# Function

* Objetos de primeira ordem
* Podem receber e retornar um número qualquer de parâmetros

!SLIDE transition=fade

    @@@ ruby
    -- definindo funções
    function foo (x)
    	return x + 12
    end
    
    goo = function (x) 
    	return x^2
    end

    print( foo(2) + goo(3) )

!SLIDE transition=fade

    @@@ ruby
    -- um pouco de mágica
    a = print

    print = function (...)
       a('Não, função errada cara')
    end

    print('Algo')
    print('Por favor')
    a('Agora sim!')

!SLIDE transition=fade

    @@@ ruby
    -- multiplos retornos
    function maximo (a)
      local mi = 1          -- indice do maximo
      local m = a[mi]       -- valor do maximo
      
      for i,val in ipairs(a) do
        if val > m then
          mi = i
          m = val
        end
      end
      return m, mi
    end

    print( maximum({3,99,12,50}) ) 

!SLIDE code transition=fade

    @@@ ruby
    -- um menu
    local menu = { batata = function () print('eu gosto de batata') end ,
                   repolho = function () print('não gosto de repolho') end,
                   sair = function () os.exit() end 
                 }
    local foo = menu['batata']
    foo()
    menu['repolho']()
    menu['sair']()

!SLIDE bullets transition=fade

# Outros

* Userdata
* Thread

!SLIDE bullets transition=fade

# Tipagem

* Dinâmica
* Fraca

!SLIDE code transition=fade

# Tipagem Dinâmica

    @@@ ruby
    var_exemplo = 5.18
    print(var_exemplo)
    var_exemplo = "Oi, eu sou o Goku"
    print(var_exemplo)
    var_exemplo = print
    var_exemplo(var_exemplo)

!SLIDE code transition=fade

# Tipagem Fraca

    @@@ ruby
    print "Insira um número"
    numero = io.read()
    numero = numero .. "00"
    print(numero, type(numero))
    numero = numero + "010"
    print(numero, type(numero))
    numero = numero * 3 + 4.52
    print(numero, type(numero))
    numero = numero .. '1'
    print(numero, type(numero))

!SLIDE smbullets transition=fade

# Exercício

* Faça uma função que recebe uma função matemática ( f(x) ) e os três valores opcionais especificados abaixo:

* int_beg: início do intervalo (incluso)
* int_end: fim do intervalo (incluso)
* int_inc: incremento de x

* A função deve imprimir os pares (x,y) para cada valor de x.

!SLIDE smbullets transition=fade

# Exercício

* Crie uma tabela com os dados de um herói: nome, hp, defesa, ataque
* Crie o mesmo para um monstro
* Crie uma função ataque, que recebe 'a' e 'b' e faz 'a' atacar 'b'
* Crie uma função vivo, que recebe um 'a' e retorna true se ele está vivo
* Faça eles lutarem

