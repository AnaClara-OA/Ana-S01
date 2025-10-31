class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome
    this.perigosa = perigosa
  }
}

class Diario {
  #autorSecreto
  constructor(autor) {
    this.#autorSecreto = autor
    this.enigmas = new Map()
    this.criaturasAvistadas = []
  }

  getAutor() {
    return this.#autorSecreto
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma)
  }

  decodificar(chave, num) {
    if (chave === this.#autorSecreto && this.enigmas.has(num)) {
      return `Enigma ${num}: ${this.enigmas.get(num)}`
    }
    return "Acesso negado."
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome
    this.idade = idade
  }
}

class Protagonista extends Personagem {
  constructor(nome, idade, autorDiario) {
    super(nome, idade)
    this.diario = new Diario(autorDiario)
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario
    this.visitantes = []
    this.funcionarios = []
  }

  adicionarFuncionario(personagem) {
    this.funcionarios.push(personagem)
  }

  listarFuncionarios() {
    return this.funcionarios
  }
}

const dipper = new Protagonista("Dipper Pines", 12, "Stanley")
dipper.diario.adicionarEnigma(1, "A criatura se esconde na floresta.")
dipper.diario.adicionarEnigma(2, "Evite olhar diretamente nos olhos dela.")

const criatura = new Criatura("Monstro da Névoa", true)
dipper.diario.criaturasAvistadas.push(criatura)

const soose = new Personagem("Soos", 22)
const wendy = new Personagem("Wendy", 17)
const cabana = new CabanaMisterio(dipper.diario)
cabana.adicionarFuncionario(soose)
cabana.adicionarFuncionario(wendy)

console.log("\n--- Teste de decodificação ---")
console.log(dipper.diario.decodificar("Stanley", 1))
console.log(dipper.diario.decodificar("Errado", 2))

console.log("\n--- Funcionários da Cabana do Mistério ---")
cabana.listarFuncionarios().forEach(f => console.log(`${f.nome}, ${f.idade} anos`))
