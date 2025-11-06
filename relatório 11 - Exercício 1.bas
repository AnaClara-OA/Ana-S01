import java.util.ArrayList;

class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
}

class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String getMagia() {
        return magia;
    }

    public void setMagia(String magia) {
        this.magia = magia;
    }

    public String lancarFeitico() {
        return getNome() + " lançou um feitiço de " + magia + "!";
    }
}

class Divisao {
    private String nome;

    public Divisao(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}

class Castelo {
    private String nome;
    private ArrayList<Divisao> divisoes;

    public Castelo(String nome) {
        this.nome = nome;
        this.divisoes = new ArrayList<>();
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        System.out.println("Divisões do castelo " + nome + ":");
        for (Divisao d : divisoes) {
            System.out.println("- " + d.getNome());
        }
    }
}

public class Principal {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 30, "Transformação");
        System.out.println(howl.lancarFeitico());

        Castelo castelo = new Castelo("Castelo Animado");
        castelo.adicionarDivisao(new Divisao("Sala de Magia"));
        castelo.adicionarDivisao(new Divisao("Cozinha"));
        castelo.adicionarDivisao(new Divisao("Biblioteca"));

        castelo.listarDivisoes();
    }
}
