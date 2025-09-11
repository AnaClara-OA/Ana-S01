use std::io; // n sabia o que tava dando de errado e a IA sugeriu usar essa linha

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..limite_superior {
        println!("{} x {} = {}", numero, i, numero * i);
    }
}

fn main() {
    println!("Digite um numero: ");
    let mut numero = String::new();
    io::stdin()
        .read_line(&mut numero)
        .expect("Falha ao ler a entrada");
    let numero: i32 = numero
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Digite o limite inferior: ");
    let mut limite_inferior = String::new();
    io::stdin()
        .read_line(&mut limite_inferior)
        .expect("Falha ao ler a entrada");
    let limite_inferior: i32 = limite_inferior
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Digite o limite superior: ");
    let mut limite_superior = String::new();
    io::stdin()
        .read_line(&mut limite_superior)
        .expect("Falha ao ler a entrada");
    let limite_superior: i32 = limite_superior
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    imprimir_tabuada(numero, limite_inferior, limite_superior);
}

