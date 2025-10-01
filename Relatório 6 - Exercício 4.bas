#include <iostream>
#include <string>
#include <list>   

using namespace std;

class SerVivo {
protected:
    string nome;

public:
    SerVivo(string nome) {
        this->nome = nome;
    }

    virtual void apresentar() {
        cout << "Olá, eu sou " << nome << endl;
    }
};

// Humano
class Humano : public SerVivo {
public:
    Humano(string nome) : SerVivo(nome) {}

    void apresentar() override {
        cout << "Prazer em te conhecer, meu nome é " << nome << " e sou um ser humano." << endl;
    }
};

// Elfo
class Elfo : public SerVivo {
public:
    Elfo(string nome) : SerVivo(nome) {}

    void apresentar() override {
        cout << "Saudações, me chamo " << nome << " e sou um elfo." << endl;
    }
};

// Fada
class Fada : public SerVivo {
public:
    Fada(string nome) : SerVivo(nome) {}

    void apresentar() override {
        cout << "Plim, Plim, Plim!! Sou " << nome << " e sou uma fada. Quer pozinho mágico? ^^ " << endl;
    }
};

int main() {

    list<SerVivo*> seres;

    Humano* h = new Humano("Arthur");
    Elfo* e = new Elfo("Legolas");
    Fada* f = new Fada("Tinkerbell");

    seres.push_back(h);
    seres.push_back(e);
    seres.push_back(f);

    for (SerVivo* s : seres) {
        s->apresentar();
    }

    for (SerVivo* s : seres) {
        delete s;
    }

    return 0;
}
