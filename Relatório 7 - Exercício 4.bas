using System;

public class CriaturaSombria
{
  public string NOME;

  public CriaturaSombria(string NOME)
  {
    this.NOME = NOME;
  }

  public virtual void Mover()
  {
    Console.WriteLine($"A criatura {NOME} está se deslocando nas sombras.");
  }
}

public class Vampiro : CriaturaSombria
{
  public Vampiro(string NOME) : base(NOME) {}

  public override void Mover()
  {
    Console.WriteLine($"O vampiro {NOME} desliza silenciosamente pela noite.");
  }
}

public class Fantasma : CriaturaSombria
{
  public Fantasma(string NOME) : base(NOME) {}

  public override void Mover()
  {
    Console.WriteLine($"O fantasma {NOME} atravessa as paredes em silêncio.");
  }
}

class ProgramaPrincipal
{
  public static void Main(string[] args)
  {
    CriaturaSombria[] criaturas = new CriaturaSombria[4];

    criaturas[0] = new Vampiro("Lucien");
    criaturas[1] = new Vampiro("Ravenor");
    criaturas[2] = new Fantasma("Véu Pálido");
    criaturas[3] = new Fantasma("Eco da Meia-Noite");

    foreach (CriaturaSombria criatura in criaturas)
    {
      criatura.Mover();
    }
  }
}
