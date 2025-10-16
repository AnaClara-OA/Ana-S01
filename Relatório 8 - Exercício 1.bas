class Personagem:
    def __init__(self, vida, resistencia):
        self._vida = int(vida)
        self._resistencia = int(resistencia)

    @property
    def vida(self):
        return self._vida

    @vida.setter
    def vida(self, valor):
        valor = int(valor)
        if valor < 0:
            raise ValueError("Vida não pode ser negativa.")
        self._vida = valor

    @property
    def resistencia(self):
        return self._resistencia

    def __str__(self):
        return "Personagem com %d de vida e %d de resistência." % (self._vida, self._resistencia)


class Cavaleiro(Personagem):
    def __init__(self, vida, resistencia, armadura_pesada):
        super(Cavaleiro, self).__init__(vida, resistencia)
        self.armadura_pesada = bool(armadura_pesada)

    def __str__(self):
        armadura = "armadura pesada" if self.armadura_pesada else "sem armadura pesada"
        return "Cavaleiro %s — vida: %d, resistência: %d" % (armadura, self.vida, self.resistencia)



if __name__ == "__main__":
    p = Personagem(100, 20)
    c = Cavaleiro(150, 35, True)
    print(p)
    print(c)

    c.vida = 140
    print("Após dano a vida é:", c.vida)
