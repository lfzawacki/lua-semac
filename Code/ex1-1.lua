--[[
	Solução do exercício 1 com algumas adições
]]

local DISTANCIA_LUA = 384403
local KM_POR_LITRO = 100
local GASOSA_TANQUE = 15000
 
print('Vão ser quantas viagens?')

local viagens = io.read()
local distancia_percorrida = viagens * DISTANCIA_LUA * 2

if GASOSA_TANQUE >= distancia_percorrida/KM_POR_LITRO then
	print('Iremos percorrer ' .. distancia_percorrida .. ' Km ')
else
	print('Não vai dar cara!')
end

