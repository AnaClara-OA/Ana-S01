from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass

    def __str__(self):
        return "%s (%s)" % (self.nome, self.funcao)


class Tanque(Heroi):
    def __init__(self, nome):
        super(Tanque, self).__init__(nome, "Tanque")

    def usar_ultimate(self):
        print("%s ativa escudo" % self.nome)


class Dano(Heroi):
    def __init__(self, nome):
        super(Dano, self).__init__(nome, "Dano")

    def usar_ultimate(self):
        print("%s ataca" % self.nome)

if __name__ == "__main__":
    herois = [Tanque("Skyler"), Dano("Genji"), Tanque("Adrien"), Dano("Soldado")]
    for h in herois:
        print(h)
        h.usar_ultimate()
