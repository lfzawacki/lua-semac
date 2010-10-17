function fatorial_sexy(n)
	local  tab = {}
	tab[true] = function () return 1 end
	tab[false] = function () return n * fatorial_sexy(n-1) end
	return tab[n == 0]()
end

print(fatorial_sexy(170))

