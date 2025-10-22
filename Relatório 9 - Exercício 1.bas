class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @nome = nome
    self.preco_base = preco_base
  end
  
  def preco_base
    @preco_base
  end

  def preco_base=(valor)
    if valor > 0
      @preco_base = valor
    else
      puts "O preço deve ser positivo!"
      @preco_base = 0
    end
  end

 
  def preco_final
    @preco_base
  end
  
  def to_s
    "Drink: #{@nome}, Preço Base: $#{@preco_base}"
  end
end


class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao
  end

 
  def preco_final
    @preco_base + (5 * @anos_desde_criacao)
  end

  def to_s
    "Drink: #{@nome}"
  end
end


puts "Digite o nome do drink:"
nome = gets.chomp

puts "Digite o preço base:"
preco_base = gets.chomp.to_f

puts "Digite os anos desde a criação (0 se for comum):"
anos = gets.chomp.to_i


if anos > 0
  drink = DrinkLenda.new(nome, preco_base, anos)
else
  drink = Drink.new(nome, preco_base)
end

puts "\nInformações do Drink"
puts drink
puts "Preço final: $#{drink.preco_final}"
