class Banda {
    public Banda(string nome)
    {
        Nome = nome;
    }
    public string Nome { get; }
    private List<Album> albuns = new List<Album>();

    public void AdicionarAlbum(Album album)
    {
        albuns.Add(album);
    }

    public void ExibirDiscografia()
    {
        Console.WriteLine($"Discográfia da banda {Nome}");
        
        foreach(Album album in albuns)
        {
            Console.WriteLine($"Álbum: {album.Nome} ({album.DuracaoTotal})");
        }
    }
}