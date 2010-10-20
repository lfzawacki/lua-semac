--[[
		Este exemplo é uma remodelagem do exercício apresentado na aula 1 (criação de heróis e monstros que se enfrentam numa arena da morte!!1)
		Aqui utilizamos uma convenção de Lua para utilizar o paradigma de Programação Orientada a Objeto (POO).
		
		Lembramos que em Lua não há uma "forma oficial" de POO, a linguagem fornece açucares sintáticos (table.campo, objeto:método(), ...), mas
		o programador tem a liberdade de escolher como representar conceitos como privacidade, (multipla) herança e etc...
  ]]

-- Classe Hero
Hero = { name = "<INSERT NAME>",  attack_power = 25 , defense = 15, hp = 50 }

function Hero:new (o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	--[[ O campo "__index" é um metamétodo que indica o que as tabelas associadas à metatabela devem fazer quando
		 se tenta acessar algum campo não existente.
		 
		 Neste exemplo, o construtor da classe, que atua como metatabela, 'pede' para que os 
		 objetos da classe (tabelas que têm a classe como metatabela) acessem a tabela da classe
	  ]]
	return o
end

function Hero:alive ()
	return self.hp > 0
end

function Hero:attack ( other )
	local damage = math.floor(self.attack_power*math.random() - other.defense)
	damage = math.max(damage,0)
	print(self.name .. ' has hit ' .. other.name .. ' for ' .. damage .. ' damage!')
	other.hp = other.hp - damage
end

function Hero:print ()
	print('@' .. self.name)
	print('HP: ' .. self.hp)
end

-- /Classe Hero

-- Classe Monster
Monster = { name = "<INSERT NAME>", attack_power = 20, defense = 0, hp = 30  }

function Monster:new (o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Monster:alive ()
	return self.hp > 0
end

function Monster:attack ( other )
	local damage = math.floor(self.attack_power *math.random() - other.defense)
	damage = math.max(damage,0)
	print(self.name .. ' has hit ' .. other.name .. ' for ' .. damage .. ' damage!')
	other.hp = other.hp - damage
end

function Monster:print ()
	print('@' .. self.name)
	print('HP: ' .. self.hp)
end

-- /Classe Monster

local luke = Hero:new{name = "Luke"}
local slime = Monster:new{name = "Slime"}
local killed = 0

while luke:alive() do

	print('-------------------------')
	-- if monster died spawn a new one
	slime = slime or Monster:new{name = "Slime"}

	luke:print()

    slime:attack(luke)
	luke:attack(slime)

	if not slime:alive() then
		print(slime.name .. ' died!' )
		killed = killed + 1
		slime = nil
	end

	os.execute('sleep 1')
end

print(luke.name .. ' died... but took ' .. killed .. ' monster(s) with him!' )

