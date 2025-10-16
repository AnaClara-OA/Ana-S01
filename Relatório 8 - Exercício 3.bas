class ArmaCorpoACorpo:
    def __init__(self, nome, dano):
        self.nome = nome
        self.dano = int(dano)

    def __str__(self):
        return "Arma: %s (Dano: %d)" % (self.nome, self.dano)


class PhantomThieves:
    def __init__(self, nome, arma):
        # agregação: PhantomThieves recebe uma Arma que pode existir fora dele
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return "%s - %s" % (self.nome, self.arma)


class Joker:
    def __init__(self, nome, membros):
       
        self.nome = nome
        self.arma_principal = ArmaCorpoACorpo("Faca", 25)

        self.equipe = list(membros)

    def mostrar_equipe(self):
        print("Joker (%s) — arma: %s" % (self.nome, self.arma_principal))
        print("Equipe:")
        for membro in self.equipe:
            print(" -", membro)


# Demonstração / main
if __name__ == "__main__":
    arma_ann = ArmaCorpoACorpo("Adaga Ágil", 18)
    arma_morgana = ArmaCorpoACorpo("Anel Mágico", 10)

    ann = PhantomThieves("Anna", arma_ann)
    morgana = PhantomThieves("Morgana", arma_morgana)

    joker = Joker("Joker", [ann, morgana])
    joker.mostrar_equipe()
