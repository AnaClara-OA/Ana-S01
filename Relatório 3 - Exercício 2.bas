use std::io;

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

fn main() {

    println!("Escolha par ou impar: ");
    let mut escolha = String::new();
    io::stdin()
        .read_line(&mut escolha)
        .expect("Falha ao ler a escolha");
    let escolha = escolha.trim(); 

    println!("Digite seu numero: ");
    let mut numero1 = String::new();
    io::stdin()
        .read_line(&mut numero1)
        .expect("Falha ao ler o número");
    let numero1: i32 = numero1.trim().parse().expect("Por favor, digite um numero valido");

   
    println!("Jogador 2, digite seu numero: ");
    let mut numero2 = String::new();
    io::stdin()
        .read_line(&mut numero2)
        .expect("Falha ao ler o número");
    let numero2: i32 = numero2.trim().parse().expect("Por favor, digite um numero valido");

    let soma = numero1 + numero2;
    let soma_par = eh_par(soma);

    println!("Soma dos numeros: {}", soma);

 
    if (soma_par && escolha == "par") || (!soma_par && escolha == "impar") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
