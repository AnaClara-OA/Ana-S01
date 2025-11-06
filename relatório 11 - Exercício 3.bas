import java.util.HashMap;

interface IRastreavel {
    String obterCoordenadas();
}

class Poder {
    private String nome;

    public Poder(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

abstract class Entidade implements IRastreavel {
    protected String nome;
    protected String localizacao;
    protected Poder poder;

    public Entidade(String nome, String localizacao, Poder poder) {
        this.nome = nome;
        this.localizacao = localizacao;
        this.poder = poder;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public String toString() {
        return nome + " (" + poder.getNome() + ")";
    }
}

class Youkai extends Entidade {
    public Youkai(String nome, String localizacao, Poder poder) {
        super(nome, localizacao, poder);
    }

    @Override
    public String obterCoordenadas() {
        return "Youkai " + nome + " avistado em " + localizacao;
    }
}

class Alien extends Entidade {
    private String planetaOrigem;
    private String ovni;

    public Alien(String nome, String planetaOrigem, String ovni, Poder poder) {
        super(nome, planetaOrigem, poder);
        this.planetaOrigem = planetaOrigem;
        this.ovni = ovni;
    }

    @Override
    public String obterCoordenadas() {
        return "Alien " + nome + " vindo de " + planetaOrigem + " no OVNI " + ovni;
    }
}

class Registros {
    private String nomeEquipe;
    private HashMap<String, Entidade> avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>();
    }

    public boolean registrarAvistamento(Entidade entidade) {
        if (!avistamentos.containsKey(entidade.getNome())) {
            avistamentos.put(entidade.getNome(), entidade);
            System.out.println("Avistamento registrado: " + entidade.obterCoordenadas());
            return true;
        } else {
            System.out.println("Entidade " + entidade.getNome() + " já registrada!");
            return false;
        }
    }

    public void listarAvistamentos() {
        System.out.println("\n=== Avistamentos da equipe " + nomeEquipe + " ===");
        for (Entidade e : avistamentos.values()) {
            System.out.println(e.obterCoordenadas());
        }
    }
}

public class Principal {
    public static void main(String[] args) {
        Poder invisibilidade = new Poder("Invisibilidade");
        Poder telepatia = new Poder("Telepatia");

        Youkai kappa = new Youkai("Kappa", "Rio Naka", invisibilidade);
        Alien zorg = new Alien("Zorg", "Marte", "ZX-9", telepatia);

        Registros equipe = new Registros("Detetives Ocultos");

        equipe.registrarAvistamento(kappa);
        equipe.registrarAvistamento(zorg);
        equipe.registrarAvistamento(kappa); // tentativa repetida

        equipe.listarAvistamentos();
    }
}
