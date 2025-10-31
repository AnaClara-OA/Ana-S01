class ODM_Gear {
  #gasRestante

  constructor(modelo) {
    this.modelo = modelo
    this.#gasRestante = 100
  }

  usarGas(quantidade) {
    this.#gasRestante -= quantidade
    if (this.#gasRestante < 0) this.#gasRestante = 0
    console.log(`O equipamento ${this.modelo} usou ${quantidade} de gás. Restante: ${this.#gasRestante}`)
  }

  getGas() {
    return this.#gasRestante
  }
}

class IExplorador {
  explorarTerritorio() {
    throw new Error("Método precisa ser implementado")
  }
}

class Soldado extends IExplorador {
  #gear

  constructor(nome, modeloGear) {
    super()
    this.nome = nome
    this.#gear = new ODM_Gear(modeloGear)
  }

  explorarTerritorio() {
    this.#gear.usarGas(20)
    return `${this.nome} avançou usando o ${this.#gear.modelo}. Gás restante: ${this.#gear.getGas()}`
  }

  verificarEquipamento() {
    return `Equipamento do ${this.nome}: ${this.#gear.modelo} (${this.#gear.getGas()} de gás)`
  }
}

class Esquadrao extends IExplorador {
  constructor(lider, membrosIniciais = []) {
    super()
    this.lider = lider
    this.membros = [lider, ...membrosIniciais]
  }

  adicionarMembro(soldado) {
    this.membros.push(soldado)
  }

  explorarTerritorio() {
    return this.membros.map(s => s.explorarTerritorio()).join("\n")
  }

  relatarStatus() {
    return this.membros.map(s => s.verificarEquipamento())
  }
}

const levi = new Soldado("Levi", "ODM-A1")
const hange = new Soldado("Hange", "ODM-B2")
const esquadrao = new Esquadrao(levi, [hange])

console.log("\n--- Missão de reconhecimento ---\n")
console.log(esquadrao.explorarTerritorio())
console.log("\n--- Status após a missão ---\n")
console.log(esquadrao.relatarStatus().join("\n"))
