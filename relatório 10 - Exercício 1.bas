class Pokemon {
  #vida;

  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  getVida() {
    return this.#vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) this.#vida = 0;
    console.log(`${this.nome} sofreu ${dano} de dano. Vida atual: ${this.#vida}`);
  }

  atacar(alvo) {
    console.log(`${this.nome} atacou ${alvo.nome}!`);
    alvo.receberDano(10);
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonusAtaque) {
    super(nome, "Fogo", vidaInicial);
    this.bonusAtaque = bonusAtaque;
  }

  atacar(alvo) {
    const dano = 15 + this.bonusAtaque;
    console.log(`${this.nome} lançou uma rajada de fogo em ${alvo.nome}!`);
    alvo.receberDano(dano);
  }
}

class PokemonAgua extends Pokemon {
  #curaBase;

  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.#curaBase = curaBase;
  }

  atacar(alvo) {
    console.log(`${this.nome} usou um jato d’água em ${alvo.nome}!`);
    alvo.receberDano(12);
    this.curar();
  }

  curar() {
    console.log(`${this.nome} se recuperou em ${this.#curaBase} pontos de vida.`);
    const novaVida = this.getVida() + this.#curaBase;
    Object.defineProperty(this, '_', {
      value: novaVida,
      writable: false
    });
  }
}

const charmander = new PokemonFogo("Charmander", 50, 5);
const squirtle = new PokemonAgua("Squirtle", 60, 3);

console.log("\n--- Início da batalha ---\n");
charmander.atacar(squirtle);
squirtle.atacar(charmander);
