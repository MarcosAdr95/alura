class Podcast {
    public Podcast(string host, string nome)
    {
        Host = host;
        Nome = nome;
    }
    private List<Episodio> episodios { get; } = new List<Episodio>();
    public string Host { get; }
    public string Nome { get; }
    public int totalEpisodios => episodios.Count;
    public void AdicionarEpisodio(Episodio episodio)
    {
        episodios.Add(episodio);
    }
    public void ExibirDetalhes()
    {
        Console.WriteLine($"Podcast: {Nome}");
        Console.WriteLine($"Host: {Host}");
        Console.WriteLine($"Total de episódios: {totalEpisodios}");
        Console.WriteLine($"\nEpisódios");
        foreach(Episodio episodio in episodios.OrderBy(e=> e.Ordem))
        {
            Console.WriteLine(episodio.Resumo);
        }
    }
}