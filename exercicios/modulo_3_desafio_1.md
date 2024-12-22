Exercicio 1 e 2:
using System.Globalization;

class Titular{
    public string Nome { get; set; }
}
class Conta
{
    public Titular titular;
    public int Agencia { get; set; }
    public int NumeroDaConta { get; set; }
    public double Saldo { get; set; }
    public int Limite { get; set; }

    public void InformacoesDaConta()
    {
        if(string.IsNullOrEmpty(titular.Nome) && (Agencia + NumeroDaConta) <= 0)
        {
            return;
        }

        Console.WriteLine($"A conta com número {NumeroDaConta}, Agência: {Agencia} pertence ao titular {titular.Nome}, seu saldo é de {ConvertIntParaMoedaLocal(Saldo)} e seu LIS é de {ConvertIntParaMoedaLocal(Limite)}");
    }

    private string ConvertIntParaMoedaLocal(double value)
    {
        return value.ToString("C", CultureInfo.GetCultureInfo("pt-BR"));
    }
}

Conta conta1 = new Conta();

Titular titular1 = new Titular();
titular1.Nome = "Irineu";
conta1.titular = titular1;
conta1.Agencia = 0010;
conta1.NumeroDaConta = 11118;
conta1.Saldo = 525.99;
conta1.Limite = 150;

conta1.InformacoesDaConta();

Exercicio 3:
class EstoqueDeProdutos
{
    private Dictionary<string, int> estoque = new Dictionary<string, int>{
        {"creatina",1}
    };
    public void AdicionarProduto(string name, int quantidade)
    {
        if(estoque.ContainsKey(name))
        {
            estoque[name]+=quantidade;
            return;
        }

        estoque[name] = quantidade;
    }
    public void ExibirProdutosNoEstoque()
    {
        foreach(string key in estoque.Keys)
        {
            Console.WriteLine($"Produto: {key}, quantidade: {estoque[key]}");
        }
    }
}

EstoqueDeProdutos estoque1 = new EstoqueDeProdutos();
estoque1.AdicionarProduto("creatina", 3);

estoque1.ExibirProdutosNoEstoque();

Exercicio 4:
class Aluno
{
    public string Nome { get; set; }
    public int Idade { get; set; }
    public List<int> Notas { get; set; }
}
class Disciplina
{
    public string Nome { get; set; }
    public List<Aluno> alunosMatriculados { get; } = new List<Aluno>();
    public void AdicionarAluno(Aluno aluno)
    {
        alunosMatriculados.Add(aluno);
    }   
}
class Professor
{
    public string Nome { get; set; }
    public List<Disciplina> DisciplinasLecionadas { get; } = new List<Disciplina>();
    public void  AdicionaDisciplina(Disciplina disciplina)
    {
        DisciplinasLecionadas.Add(disciplina);
    }
    public void ExibirInformacoes()
    {
        Console.Clear();
        Console.WriteLine($"O professor {Nome} é responsável por lecionar {DisciplinasLecionadas.Count} disciplina, sendo ela:");

        foreach(var disciplina in DisciplinasLecionadas)
        {
            Console.WriteLine($"\t-\"{disciplina.Nome}\", contém {disciplina.alunosMatriculados.Count} matrículado, sendo:");

            foreach(var aluno in disciplina.alunosMatriculados)
            {
                Console.WriteLine($"\t\t- {aluno.Nome}, idade: {aluno.Idade} e suas notas na matéria fora de {string.Join(", ", aluno.Notas)}");
            }
        }
    }
}

Aluno aluno1 = new Aluno();
aluno1.Nome = "Naiara";
aluno1.Idade = 27;
aluno1.Notas = new List<int>{7, 8, 9};

Disciplina disciplina1 = new Disciplina();
disciplina1.Nome = "Vendas";
disciplina1.AdicionarAluno(aluno1);

Professor professor1 = new Professor();
professor1.Nome = "Aurélio";
professor1.AdicionaDisciplina(disciplina1);

professor1.ExibirInformacoes();

Exercicio 5:
class Restaurante
{
    public List<Mesa> mesas = new List<Mesa>();
    public bool TemMesaDisponivel => mesas.Where(value => !value.Reservada).ToList().Count > 0;
    public List<int> MesasDisponiveisPosicoes => mesas.Select((value, i) => value.Reservada ? -1 : i+1).Where(i => i != -1).ToList();
    public void AdicionarMesa(Mesa mesa) => mesas.Add(mesa);
    public Mesa InformacaoPorMesa(int identificador) => mesas[identificador];
    public bool MesaExiste(int identificador) => mesas.Count <= identificador;
    public void RelatorioDasMesas() {
        Console.Clear();
        Console.WriteLine($"\nO restaurante tem {mesas.Count} mesas e {mesas.Where(value => value.Reservada).ToList().Count} estão ocupadas, aonde os pedidos feitos são:\n");

        int loop = 1;
        foreach(var mesa in mesas)
        {
            Console.WriteLine($"Mesa número {loop}, pedido {mesa.pedido.Prato}");
            loop++;
        }
        
    }
}

class Mesa
{
    public bool Reservada { get; set; } = false;
    public Cardapio cardapio = new Cardapio();
    private bool vip = false;
    public bool Vip {
        get => vip;
        set {
            if(value) {
                vip = value;

                cardapio.Especial = value;
            }
        }
    }
    public Pedido pedido = new Pedido();
}

class Cardapio
{
    private bool especial = false;
    public bool Especial {
        get => especial;
        set {
            if(value) {
                especial = value;

                // pratos.AddRange(pratosVip);
            }
        }
    }
    public List<string> pratosVip = new List<string>{"Feijoada", "Lasanha"};
    public List<string> pratos = new List<string>{ "Bife à cavalo", "Omelete", "Frango a parmegiana" };
    public int loop = 1;
    public void ExibirOpcoes()
    {
        print("Pratos normais", pratos);

        if(Especial)
        {
            print("\n\nPratos especiais", pratosVip);
        }
    }
    private void print(string titulo, List<string> pratos) {
        Console.WriteLine($"{titulo}\n");

        foreach(string prato in pratos)
        {
            Console.WriteLine($"{loop}. {prato}");

            loop++;
        }
    }
    public string EscolherPrato()
    {
        Console.Write("Qual o pedido? ");
        int numeroDoPrato = int.Parse(Console.ReadLine()!)-1;

        List<string> opcoes = pratos.Concat(pratosVip).ToList();

        return opcoes[numeroDoPrato];
    }
}

class Pedido
{
    public string Prato { get; set; } = "";
}

using System.Text.RegularExpressions;

Restaurante restaurante1 = new Restaurante();

Mesa mesa1 = new Mesa();
Mesa mesa2 = new Mesa();
Mesa mesa3 = new Mesa();
mesa3.Vip = true;

restaurante1.AdicionarMesa(mesa1);
restaurante1.AdicionarMesa(mesa2);
restaurante1.AdicionarMesa(mesa3);

foreach(int cliente in new List<int>{1})
{
    Console.Clear();
    Console.WriteLine($"Chegou o cliente {cliente}");

    if(restaurante1.TemMesaDisponivel)
    {
        List<int> mesasVaziaPosicoes = restaurante1.MesasDisponiveisPosicoes;

        Console.Write($"Gostaria de sentar na mesa {Regex.Replace(string.Join(", ", mesasVaziaPosicoes), ",([^,]+)$", " ou$1")}? ");
        int numeroDaMesaEscolhida = int.Parse(Console.ReadLine()!)-1;

        if(restaurante1.MesaExiste(numeroDaMesaEscolhida))
        {
            Console.WriteLine("A mesa selecionada não existe");
            Thread.Sleep(3000);

            continue;
        }

        Mesa mesaSelecionada = restaurante1.InformacaoPorMesa(numeroDaMesaEscolhida);

        if(!mesaSelecionada.Reservada)
        {
            bool fazerPedido = true;
            mesaSelecionada.Reservada = true;
            Console.WriteLine("Você já pode se sentar a mesa!");
            Thread.Sleep(3000);

            do
            {
                Console.Clear();
                Console.Write("Gostaria de fazer o seu pedido? Digite 1 para sim e 2 para não: ");

                if(int.Parse(Console.ReadLine()!) == 1)
                {
                    fazerPedido = false;
                    Console.WriteLine("Por favor escolha o prato desejado:");
                    mesaSelecionada.cardapio.ExibirOpcoes();
                    mesaSelecionada.pedido.Prato = mesaSelecionada.cardapio.EscolherPrato();

                    Console.Clear();
                    Console.WriteLine(mesaSelecionada.pedido.Prato);
                    Thread.Sleep(3000);
                }
            } while(fazerPedido);
            
            // mesaSelecionada.FazerPedido();

            continue;

        }
        
        if(mesaSelecionada.Reservada)
        {
            Console.WriteLine("A mesa selecionada não está disponível");
            Thread.Sleep(3000);

            continue;
        }
    }
    else
    {
        Console.WriteLine("Todas as mesas estão ocupadas por favor aguarde!");
    }
}

restaurante1.RelatorioDasMesas();