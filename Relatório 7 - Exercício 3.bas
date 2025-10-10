using System;
using System.Collections.Generic;

public class Magia
{
    public string Nome { get; set; }

    public Magia(string nome)
    {
        Nome = nome;
    }
}

public class LivroMagico
{
    private List<Magia> magias = new List<Magia>();

    public void AdicionarMagia(Magia magia)
    {
        magias.Add(magia);
    }

    public void ExibirMagias()
    {
        foreach (Magia magia in magias)
        {
            Console.WriteLine(magia.Nome);
        }
    }
}

public class ItemMagico
{
    public string Nome { get; set; }

    public ItemMagico(string nome)
    {
        Nome = nome;
    }
}

public class Feiticeira
{
    public string Nome { get; set; }
    public LivroMagico Grimorio { get; private set; }
    private List<ItemMagico> itens = new List<ItemMagico>();

    public Feiticeira(string nome, List<ItemMagico> itens)
    {
        Nome = nome;
        Grimorio = new LivroMagico();
        this.itens = itens;
    }

    public void ExibirItens()
    {
        foreach (ItemMagico item in itens)
        {
            Console.WriteLine(item.Nome);
        }
    }
}

class ProgramaPrincipal
{
    public static void Main(string[] args)
    {
        List<ItemMagico> equipamentos = new List<ItemMagico>
        {
            new ItemMagico("Cajado de Cristal"),
            new ItemMagico("Amuleto Arcano"),
            new ItemMagico("Tomo Antigo")
        };

        Feiticeira selene = new Feiticeira("Selene", equipamentos);

        selene.Grimorio.AdicionarMagia(new Magia("Raio Arcano"));
        selene.Grimorio.AdicionarMagia(new Magia("Barreira Mística"));
        selene.Grimorio.AdicionarMagia(new Magia("Chama Eterna"));

        Console.WriteLine($"Itens de {selene.Nome}:");
        selene.ExibirItens();
        Console.WriteLine();
        Console.WriteLine($"Magias de {selene.Nome}:");
        selene.Grimorio.ExibirMagias();
    }
}
