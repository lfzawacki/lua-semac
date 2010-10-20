!SLIDE subsection

## Isto está parecendo orientação a objetos...

!SLIDE bullets

# Orientação a Objetos

* Existem algumas facilidades para ajudar quem quer programar "OO" em Lua, embora a linguagem não implemente o conceito de classes ou métodos

!SLIDE code

    Hero = {}
    
    function Hero.new(n,h,a,d)
    	return { name = n , hp = h , attack = a , defense = d }
    end

    -- note o operador :
    function Hero:alive()
    	self.hp > 0
    end

!SLIDE bullets
 
