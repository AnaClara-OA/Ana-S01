#include <iostream>

using namespace std;

float somarArray(int arr[], int tamanho){
    float soma = 0;
    for(int i=0; i<tamanho; i++){
        soma += arr[i];
    }
    return soma;
}

int main() {
    int tamanho;
    float resultado;
    cout << "Digite o tamanho: ";
    cin >> tamanho;
    int arr[tamanho];
    
    cout << "Digite os " << tamanho <<" valores:";
    for(int i=0; i<tamanho; i++){
        cin >> arr[i];
    }
    
    resultado = somarArray(arr, tamanho);
    
    cout <<"A soma é: "<<resultado<<endl;
    
    return 0;
}
