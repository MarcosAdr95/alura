Podcast podcast1 = new Podcast("luluzinha", "Incansáveis");

Episodio episodio1 = new Episodio("podcast1", 1, 60);
episodio1.AdicionarConvidados("Convidado xpto");
episodio1.Duracao = 120;

Episodio episodio2 = new Episodio("podcast1", 2, 80);
episodio2.AdicionarConvidados("Convidado xpto 2");
episodio2.Duracao = 150;

podcast1.AdicionarEpisodio(episodio2);
podcast1.AdicionarEpisodio(episodio1);

podcast1.ExibirDetalhes();