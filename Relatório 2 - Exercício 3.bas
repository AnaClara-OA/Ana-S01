function filtrarPares(tabela, n)
    local pares = {}
    local j = 1
    for i = 1, n do
        if tabela[i] % 2 == 0 then
            pares[j] = tabela[i]
            j = j + 1
        end
    end
    return pares, j-1
end

local numeros = {}

print("Quantos números você quer digitar?")
n = io.read("*n")

for i = 1, n do
    print("Digite o número " .. i .. ":")
    numeros[i] = io.read("*n")
end

-- Criar tabela apenas com pares
pares, nPares = filtrarPares(numeros, n)

print("Nova tabela com os pares:")
for i = 1, nPares do
    io.write(pares[i] .. " ")
end
print()
