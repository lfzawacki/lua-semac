	--[[
		Nosso herói irá lutar bravamente contra slimes até morrer
	]]

	local hero = { name = "Luke",  attack = 20 , defense = 12, hp = 45 }

	function print_character (c)
		print('@' .. c.name)
		print('HP: ' .. c.hp)
	end

	function spawnMonster () 
		print('Spawned a new monster!')
		return { name = "slime", attack = 20, defense = 0, hp = 30 }
	end

	function attack (a,b) 
		local damage = math.floor(a.attack*math.random() - b.defense)
		damage = math.max(damage,0)
		print(a.name .. ' has hit ' .. b.name .. ' for ' .. damage .. ' damage!')
		b.hp = b.hp - damage
	end

	function alive (a) 
		return a.hp > 0
	end


	local monster = spawnMonster()
	local killed = 0

	while alive(hero) do

		print('-------------------------')
		-- if monster died spawn a new one
		monster = monster or spawnMonster()

		print_character(hero)

		attack(monster,hero)
		attack(hero,monster)

		if not alive(monster) then
			print(monster.name .. ' died!' )
			killed = killed + 1
			monster = nil
		end

		os.execute('sleep 1')
	end

	print(hero.name .. ' died... but took ' .. killed .. ' monsters with him!' )

