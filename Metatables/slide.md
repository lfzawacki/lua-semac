!SLIDE subsection

## O que mais eu posso fazer com Tables?

!SLIDE bullets

# Será?

* Qual o comportamente de print recebendo uma table?
* É possível comparar duas tables?
* Hmmm...

!SLIDE code

    @@@ ruby
    local a = {}
    print(a) -- feio!

    a == {} -- erro de interpretação :(

!SLIDE bullets

# Metatables

* Podem nos ajudar a ser mais expressivos nesses casos
* Uma metatable é uma table que denota o comportamento de outra.
* Ela pode definir o que chamamos de metamétodos

!SLIDE code

    @@@ ruby
    -- lembram do nosso hero?
    local hero = { name = 'Goku', 
				   ataque = 8001 , 
				   defesa = 9000, 
				   hp = 1000 
				 }

    local met = {
    	__tostring = function (h) 
						return '@' .. h.name .. 'HP: ' .. h.hp 
					 end ,
    	__eq = function (h1,h2)  
			  	return h1.name == h2.name 
			   end
    }

    setmetatable(hero,met) -- aqui está o segredo
    print(hero)
    print( hero == { name = 'Vegeta' } )

!SLIDE bullets

# Metamétodos

* Existem vários, por exemplo : soma, subtração, comparação, chamada
* Nos ajudam a criar um comportamento variado para nossas tables
* [Lista de metamétodos](http://www.lua.org/manual/5.1/manual.html#2.8)

!SLIDE code

# Criando um "construtor"

    @@@ ruby
    function newHero()
    	return {
    	__tostring = function (h) 
						return '@' .. h.name .. 'HP: ' .. h.hp 
					 end ,
    	__eq = function (h1,h2)  
			  	return h1.name == h2.name 
			   end
    	}
    end
