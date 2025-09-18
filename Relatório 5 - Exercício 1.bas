// Online C++ compiler to run C++ program online
#include <iostream>

using namespace std;

int fibonacci(int n){
    int resultado;
    
    if(n==0){
        return 0;
    }else if(n ==1){
        return 1;
    }else {
        resultado = fibonacci(n-1) + fibonacci(n-2);
        return resultado;
    }
}

int main() {
    int n;
    cout << "Digite um número:";
    cin >> n;
    
    cout << "O resultado é: " << fibonacci(n);
    
    return 0;
}
