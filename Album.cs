class Album {
    public Album(string nome)
    {
        Nome = Nome;
    }
    private List<Musica> musicas = new List<Musica>();
    public string Nome { get; }
    public int DuracaoTotal => musicas.Sum(c => c.Duracao);
    public void AdicionarMusica(Musica musica)
    {
        musicas.Add(musica);
    }
    public void ExibirNomeDasMusicas()
    {
        Console.WriteLine("Exibir nome das músicas\n");

        foreach(var musica in musicas)
        {
            Console.WriteLine($"Musica: {musica.Nome}");
        }
        
        Console.WriteLine($"\nPara ouvir este álbum inteiro você precisa de {DuracaoTotal} segundos");
    }
}