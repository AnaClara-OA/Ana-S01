function calculadora(num1, num2, operador)
  local resultado

  if operador == "+" then
      resultado = num1 + num2
  elseif operador == "-" then
      resultado = num1 - num2
  elseif operador == "*" then
      resultado = num1 * num2
  elseif operador == "/" then
      if num2 ~= 0 then
          resultado = num1 / num2
      else
          return "Divisão por zero."
      end
  else
      return "Erro: operador inexistente."
  end

  return resultado
end

print("Digite o primeiro número:")
local a = io.read("*n")

print("Digite o segundo número:")
local b = io.read("*n")

print("Digite o operador (+, -, * ou /):")
io.read("*l") -- Tava dando erro, então adicionei essa linha
local op = io.read()

local res = calculadora(a, b, op)
print("Resultado: " .. res)
