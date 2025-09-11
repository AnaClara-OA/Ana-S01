local numeros = {}

print("Quantos números você quer na sua tabela?")
local n = io.read("*n")

print("Digite os números: ")

for i = 1, n do
    numeros[i] = io.read("*n")
end

function maiorValor(tabela, qtd)
    local maior = tabela[1]
    for i = 2, qtd do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

print("O maior valor da tabela é: " .. maiorValor(numeros, n))

