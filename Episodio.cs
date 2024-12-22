class Episodio {
    public Episodio(string titulo, int ordem, int duracao)
    {
        Titulo = titulo;
        Ordem = ordem;
        Duracao = duracao;
    }
    public string Titulo { get; }
    public int Ordem { get; }
    public int Duracao { get; set; }
    public string Resumo => $"{Ordem}. {Titulo} ({Duracao} min) - {string.Join(", ", convidados)}";
    private List<string> convidados { get; }= new List<string>();
    public void AdicionarConvidados(string convidado)
    {
        convidados.Add(convidado);
    }
}