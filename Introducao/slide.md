!SLIDE center

# Lua

![](lua.png)

### Luca Couto Manique Barreto
### Lucas Fialho Zawacki

!SLIDE bullets incremental

# Introdução #

* Criada em 1993 na Puc/Rio
* Aproximadamente 1700 linhas de código
* Roda embarcada em programas C

!SLIDE bullets

# Motivação

* Incrementar aplicações com scripts
* Fazer isso de maneira simples e eficiente
* Do more with less

!SLIDE bullets

# Features

* Integração com C padrão
* Roda interpretando bytecode
* Garbage Collection incremental
* Sintaxe simples

!SLIDE bullets

# Onde é usada

* Ginga
* WoW / WarHammer Online / Ragnarok
* Consoles da Sony (principalmente PSP)
* Adobe Photoshop Lightroom
* Muito outros...

!SLIDE bullets

# Instalação

* Geralmente vem integrada no ambiente
* Baixando o código fonte
* Instalador (Windows)

!SLIDE

    $ lua
    Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
    > print("Hello lua World")
    Hello lua World
    > a = 1
    > print(a+2)
    3

!SLIDE 

    luac -o compilado.out -
    print("Hello luac World") 
    $ lua compilado.out 
    Hello luac World

