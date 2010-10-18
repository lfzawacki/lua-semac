!SLIDE subsection 

## Um pouco mais de detalhes

!SLIDE bullets 

# Chunks

* Todo código executado pelo interpretador é um chunk
* Uma linha, um arquivo, um código pré-compilado
* Integração é transparente

!SLIDE bullets 

# Escopos

* **Globais**: visíveis em todos blocos e chunks
* **Locais**: visíveis do seu bloco em diante

!SLIDE commandline 

    $ lua
    $ local a = 1
    $ print(a)
    nil
    $ a = 1
    $ print(a)
    1

!SLIDE  code 

    @@@ ruby
    -- hello.lua
    print("Digite um nome")
    local nome = io.read()
    print("Olá " .. nome)

!SLIDE  commandline 

    $ lua
    $ chunk = loadfile('hello.lua')
    $ chunk() -- executando
    Digite seu nome
    Luca
    Olá Luca
    $ dofile('hello.lua')
    Digite seu nome
    Luca
    Olá Luca
