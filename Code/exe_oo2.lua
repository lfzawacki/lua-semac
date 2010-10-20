--[[
		Se você leu o exemplo anterior, deve ter percebido a quantidade de código repetido nas classes Hero e Monster.
		O exemplo a seguir tenta sanar este problema, introduzindo o conceito de POO chamado Herança.
		
		Lembre-se: em Lua não há uma forma 'oficial' de aplicar POO, apenas convenções.
  ]]

-- Classe Creature
Creature = { name = "<INSERT NAME>",  attack_power = 10 , defense = 0, hp = 30 }

function Creature:new (o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Creature:alive ()
	return self.hp > 0
end

function Creature:attack ( other )
	local damage = math.floor(self.attack_power*math.random() - other.defense)
	damage = math.max(damage,0)
	print(self.name .. ' has hit ' .. other.name .. ' for ' .. damage .. ' damage!')
	other.hp = other.hp - damage
end

function Creature:print ()
	print('@' .. self.name)
	print('HP: ' .. self.hp)
end

-- /Classe Creature

-- Classes Hero e Monster
Hero = Creature:new{ attack_power = 30, defense = 15, hp = 40}
Monster = Creature:new{ attack_power = 20 }
--[[
		Confuso? a POO em Lua é Prototype-Based
		Leia mais em: http://en.wikipedia.org/wiki/Prototype-based_programming
  ]]

-- /Classes Hero Monster

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

