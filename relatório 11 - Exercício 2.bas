import java.util.ArrayList;

class Cafe {
    protected String nome;
    protected double precoBase;

    public Cafe(String nome, double precoBase) {
        this.nome = nome;
        this.precoBase = precoBase;
    }

    public double calcularPrecoFinal() {
        // Preço padrão é o próprio preço base
        return precoBase;
    }

    @Override
    public String toString() {
        return nome + " - R$ " + String.format("%.2f", calcularPrecoFinal());
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double precoBase, double bonusAroma) {
        super(nome, precoBase);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        // Adiciona o bônus de aroma ao preço final
        return precoBase + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> itens;

    public Menu() {
        this.itens = new ArrayList<>();
    }

    public void adicionarItem(Cafe cafe) {
        itens.add(cafe);
    }

    public void mostrarMenu() {
        System.out.println("=== MENU ===");
        for (Cafe c : itens) {
            System.out.println(c);
        }
    }
}

class CafeLeblanc {
    private Menu menu;

    public CafeLeblanc(Menu menu) {
        this.menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        menu.adicionarItem(cafe);
        System.out.println("Pedido recebido: " + cafe.nome);
    }

    public void exibirMenu() {
        menu.mostrarMenu();
    }
}

// Classe principal só pra testar
public class Principal {
    public static void main(String[] args) {
        Menu menu = new Menu();
        CafeLeblanc leblanc = new CafeLeblanc(menu);

        Cafe comum = new Cafe("Café Preto", 5.0);
        CafeGourmet gourmet = new CafeGourmet("Café Gourmet", 7.0, 2.5);

        leblanc.receberPedido(comum);
        leblanc.receberPedido(gourmet);

        System.out.println();
        leblanc.exibirMenu();
    }
}
