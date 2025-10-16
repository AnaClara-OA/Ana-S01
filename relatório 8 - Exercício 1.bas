class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = int(vida)
        self._resistencia = int(resistencia)

    @property
    def vida(self) -> int:
        return self._vida
        
    @vida.setter
    def vida(self, valor: int):
        valor = int(valor)
        if valor < 0:
            raise ValueError("Vida não pode ser negativa.")
        self._vida = valor

    @property
    def resistencia(self) -> int:
        return self._resistencia

    def __str__(self) -> str:
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência."


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)
        self.armadura_pesada = bool(armadura_pesada)

    def __str__(self) -> str:
        armadura = "com armadura pesada" if self.armadura_pesada else "sem armadura pesada"
        return f"Cavaleiro {armadura} — vida: {self.vida}, resistência: {self.resistencia}"

if __name__ == "__main__":
    p = Personagem(100, 20)
    c = Cavaleiro(150, 35, True)
    print(p)   # Personagem com 100 de vida e 20 de resistência.
    print(c)   # Cavaleiro com armadura pesada — vida: 150, resistência: 35

    c.vida = 140
    print("Após dano, vida do cavaleiro:", c.vida)
