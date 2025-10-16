from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass


class Implante:
    def __init__(self, custo, funcao):
        self.custo = float(custo)
        self.funcao = funcao

    def __str__(self):
        return "Implante(funcao=%s, custo=%.2f)" % (self.funcao, self.custo)


class NetRunner(Cibernetico):
    def __init__(self, nome, implante=None):
        self.nome = nome
        if implante is None:
            self.implante = Implante(999.0, "Interface Neural")
        else:
            self.implante = implante

    def realizar_hack(self):
        print("%s executa hack por %s (custo: %.2f)" % (self.nome, self.implante.funcao, self.implante.custo))


class Faccao:
    def __init__(self, membros=None):
        if membros is None:
            self.membros = []
        else:
            self.membros = list(membros)

    def adicionar_membro(self, membro):
        self.membros.append(membro)

    def executar_hacks(self):
        for m in self.membros:
            m.realizar_hack()


if __name__ == "__main__":
    nr1 = NetRunner("Alice", Implante(1200.0, "Backdoor Neural"))
    nr2 = NetRunner("Bob")  # cria implante padrão internamente
    faccao = Faccao([nr1])
    faccao.adicionar_membro(nr2)
    faccao.executar_hacks()
