#include <iostream>

using namespace std;


int main() {
    
    int n;
    double nota;
    double soma = 0;
    double media = 0;
    
    cout << "Digite quantas notas você quer inserir: ";
    cin >> n;
    
    for(int i=0; i<n; i++)
    {
        cout << "Digite uma nota: ";
        cin >> nota;
        
        while(nota < 0 || nota > 10)
        {
            cout << "Nota inválida, digite a nota novamente: ";
            cin >> nota;
        }
        
        soma += nota;
    }
    
    media = soma/n;
    
    cout << "Sua média é: " << media << endl;
    
    if(media >=7)
    {
        cout << "Aprovado! :)" << endl;
    }else{
        cout << "Reprovado! :(" << endl;
    }
    
    return 0;
}
