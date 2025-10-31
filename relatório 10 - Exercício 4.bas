class Hunter {
  #nome
  #idade
  #localizacao

  constructor(nome, local, idade) {
    this.#nome = nome
    this.#idade = idade
    this.#localizacao = local
  }

  get nome() {
    return this.#nome
  }

  get localizacao() {
    return this.#localizacao
  }

  set localizacao(novaLocalizacao) {
    this.#localizacao = novaLocalizacao
  }
}

class IRastreavel {
  rastrearLocal(lat, long) {
    throw new Error("Método precisa ser implementado")
  }
}

class Especialista extends Hunter {
  constructor(nome, local, idade, habilidade) {
    super(nome, local, idade)
    this.habilidadeNen = habilidade
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`
    return `${this.nome} usou ${this.habilidadeNen} para localizar algo em ${this.localizacao}`
  }
}

class Manipulador extends Hunter {
  constructor(nome, local, idade, alvo) {
    super(nome, local, idade)
    this.alvoAtual = alvo
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`
    return `${this.nome} está manipulando ${this.alvoAtual} nas coordenadas ${this.localizacao}`
  }
}

class Batalhao {
  #hunters

  constructor() {
    this.#hunters = new Set()
  }

  adicionarHunter(hunter) {
    if (![...this.#hunters].some(h => h.nome === hunter.nome)) {
      this.#hunters.add(hunter)
    }
  }

  getNumHunters() {
    return this.#hunters.size
  }

  iniciarRastreamento(lat, long) {
    const logs = []
    this.#hunters.forEach(h => {
      if (typeof h.rastrearLocal === "function") {
        logs.push(h.rastrearLocal(lat, long))
      }
    })
    return logs
  }
}

const gon = new Especialista("Gon", "Floresta", 14, "Jajanken")
const illumi = new Manipulador("Illumi", "Cidade", 25, "Assassino")
const hisoka = new Manipulador("Hisoka", "Arena", 28, "Oponente")

const tropa = new Batalhao()
tropa.adicionarHunter(gon)
tropa.adicionarHunter(illumi)
tropa.adicionarHunter(hisoka)
tropa.adicionarHunter(gon)

console.log(`\nNúmero de Hunters no batalhão: ${tropa.getNumHunters()}`)
console.log("\n--- Rastreamento iniciado ---")
console.log(tropa.iniciarRastreamento("-10.33", "35.42").join("\n"))
