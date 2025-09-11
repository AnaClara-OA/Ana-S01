use std::io;

fn verificar_senha(senha: &str) -> bool {
  
    if senha.len() < 8 {
        return false;
    }

    let mut num = false;
    let mut caps = false;
// não sabia como fazer e precisei de ajuda da IA
    for c in senha.chars() {
        if c.is_ascii_digit() {
            num = true;
        }
        if c.is_ascii_uppercase() {
            caps = true;
        }
    }

    num && caps
}

fn main() {
    loop {
        println!("Digite uma senha: ");
        let mut senha = String::new();

        io::stdin()
            .read_line(&mut senha)
            .expect("Falha ao ler a senha");

        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida! Não cumpre os requisitos de ter pelo menos 8 caracteres, um número e uma letra maiuscula");
        }
    }
}
