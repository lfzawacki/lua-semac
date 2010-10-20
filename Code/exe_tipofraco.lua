--[[
        Exemplo que demonstra a propriedade de Tipagem Fraca em Lua
  ]]


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
