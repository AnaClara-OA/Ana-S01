#include <iostream>
#include <string>

using namespace std;

class Pessoa {
protected:
    string nome;
public:
    Pessoa(string nome) { 
        this->nome = nome; 
        
    }
    virtual void apresentar() {
        cout << "Olá, meu nome eh " << nome << endl;
    }
};

class Professor : public Pessoa {
private:
    string disciplina;
public:
    Professor(string nome, string disciplina) : Pessoa(nome), disciplina(disciplina) { }
    void apresentar() override {
        cout << "Olá, meu nome eh " << nome << " e eu sou um professor de " << disciplina << endl;
    }
};

class Aluno : public Pessoa {
private:
    string curso;
public:
    Aluno(string nome, string curso) : Pessoa(nome), curso(curso) { }
    void apresentar() override {
        cout << "Olá, meu nome eh " << nome << " e eu sou um aluno de " << curso << endl;
    }
};

int main() {
    Pessoa* p1 = new Professor("Ynogutti", "Programação");
    Pessoa* p2 = new Aluno("Ana Clara", "Engenharia de Software");

    p1->apresentar();
    p2->apresentar();

    delete p1;
    delete p2;
    
    return 0;
}
