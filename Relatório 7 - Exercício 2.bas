using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Nome { get; set; }

    public Pokemon(string nome)
    {
        Nome = nome;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Nome} usa Investida!");
    }
}

public class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} dispara uma Labareda!");
    }
}

public class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lança um Jato d’Água!");
    }
}

class ProgramaPrincipal
{
    public static void Main(string[] args)
    {
        List<Pokemon> equipe = new List<Pokemon>
        {
            new PokemonDeFogo("Charmander"),
            new PokemonDeAgua("Squirtle")
        };

        foreach (Pokemon p in equipe)
        {
            p.Atacar();
        }
    }
}
