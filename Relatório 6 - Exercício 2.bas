#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:

    Pessoa(string nome, int idade) {
        this->nome = nome;
        this->idade = idade;
    }


    void setNome(string nome) {
        this->nome = nome;
    }

    string getNome() {
        return nome;
    }

    void setIdade(int idade) {
        this->idade = idade;
    }

    int getIdade() {
        return idade;
    }
};


class Protagonista : public Pessoa {
private:
    int nivel;

public:

    Protagonista(string nome, int idade, int nivel) : Pessoa(nome, idade) {
        this->nivel = nivel;
    }

    void setNivel(int nivel) {
        this->nivel = nivel;
    }

    int getNivel() {
        return nivel;
    }
};


class Personagem : public Pessoa {
private:
    int rank; 

public:
    
    Personagem(string nome, int idade, int rank) : Pessoa(nome, idade) {
        if(rank < 0) rank = 0;
        if(rank > 10) rank = 10;
        this->rank = rank;
    }

    void setRank(int rank) {
        if(rank < 0) rank = 0;
        if(rank > 10) rank = 10;
        this->rank = rank;
    }

    int getRank() {
        return rank;
    }
};


int main() {
    
    Protagonista protagonista("Percy", 17, 5);
    Personagem aliado("Groover", 17, 8);

    cout << "--- Informações do Protagonista ---" << endl;
    cout << "Nome: " << protagonista.getNome() << endl;
    cout << "Idade: " << protagonista.getIdade() << endl;
    cout << "Nivel: " << protagonista.getNivel() << endl;

    cout<<endl;
    
    cout << "--- Informações do Aliado ---" << endl;
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Idade: " << aliado.getIdade() << endl;
    cout << "Rank Social Link: " << aliado.getRank() << endl;

    return 0;
}
