using namespace std;

double celsiusParaFahrenheit(double celsius) {
    return (celsius * 1.8) + 32;
}

double celsiusParaKelvin(double celsius) {
    return celsius + 273.15;
}

int main() {
    int n;
    double celsius;

    cout << "Digite a temperatura em Celsius: ";
    cin >> celsius;

    do {
        cout << "Escolha uma opção: " << endl;
        cout << "1. Converter Celsius para Fahrenheit." << endl;
        cout << "2. Converter Celsius para Kelvin." << endl;
        cout << "3. Sair" << endl;
        
        cin >> n;

        switch (n) 
        {
            case 1:
                cout << celsiusParaFahrenheit(celsius) << " °F" << endl;
                break;
            case 2:
                cout << celsiusParaKelvin(celsius) << " K" << endl;
                break;
            case 3:
                cout << "Fim do programa." << endl;
                break;
            default:
                cout << "Opção inválida!" << endl;
        }

    } while (n != 3);

    return 0;
}
