#include <iostream>
#include <string>

using namespace std;

class Personagem {
private:
    string nome;
    int nivel;
    int dano;
    int vida;

public:

    Personagem(string nome, int nivel, int dano, int vida) {
        this->nome = nome;
        this->nivel = nivel;
        this->dano = dano;
        this->vida = vida;
    }


    void atacar(Personagem* alvo) {
        cout << nome << " atacou " << alvo->getNome()
             << " e causou " << dano << " de dano." << endl;

        alvo->perderVida(dano);
    }

    // Reduz vida do personagem atacado
    void perderVida(int quantidade) {
        vida -= quantidade;
        if (vida < 0) vida = 0;
    }

    string getNome() { return nome; }
    int getNivel() { return nivel; }
    int getDano() { return dano; }
    int getVida() { return vida; }

    void mostrarInfo() {
        cout << "Nome: " << nome << endl;
        cout << "Nível: " << nivel << endl;
        cout << "Dano: " << dano << endl;
        cout << "Vida: " << vida << endl;
    }
};

int main() {
    
    Personagem* personagem = new Personagem("Skyler", 10, 25, 95);
    Personagem* inimigo = new Personagem("Golem", 8, 15, 80);

    cout << "--- Combate ---" << endl;
    personagem->atacar(inimigo);    
    inimigo->atacar(personagem);  

    cout << "--- Após a batalha ---" << endl;
    personagem->mostrarInfo();
    cout <<"------------"<<endl;
    inimigo->mostrarInfo();

    delete personagem;
    delete inimigo;

    return 0;
}
