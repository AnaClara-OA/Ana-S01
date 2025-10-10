using System;

public class SerDaTerraMedia
{
    private string nome;
    private string especie;
    private string papel;

    public SerDaTerraMedia(string nome, string especie, string papel)
    {
        this.nome = nome;
        this.especie = especie;
        this.papel = papel;
    }

    public void MostrarInfo()
    {
        Console.WriteLine($"🧙 Nome: {nome}\n Espécie: {especie}\n Papel: {papel}\n");
    }
}

class ProgramaPrincipal
{
    public static void Main(string[] args)
    {
        SerDaTerraMedia personagem1 = new SerDaTerraMedia("Gandalf", "Maiar", "Mago");
        SerDaTerraMedia personagem2 = new SerDaTerraMedia("Gimli", "Anão", "Guerreiro");

        personagem1.MostrarInfo();
        personagem2.MostrarInfo();
    }
}
