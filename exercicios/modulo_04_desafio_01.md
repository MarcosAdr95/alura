using System.Runtime.InteropServices;

void Exercicio1()
    {
        Dictionary<string, List<int>> notasAluno = new Dictionary<string, List<int>> {
            { "Naiara", new List<int>{1,2,3} }
        };

        string nome = notasAluno.Keys.First();
        int media = notasAluno.Values.First().Sum() / notasAluno.Values.First().Count;
        Console.WriteLine($"A média da nota da {nome} é {media}");
    }

void Exercicio2()
    {
        Dictionary<string, int> lojaFitness = new Dictionary<string, int> {
            {"Whey Growth", 3 },
            {"Creatina Growth", 5 },
            {"Haze Growth", 4 }
        };

        Console.Write("Digite o nome do produto que deseja pesquisar: ");
        string nomeDoProduto = Console.ReadLine()!;

        if(lojaFitness.ContainsKey(nomeDoProduto))
            {
                Console.WriteLine($"{nomeDoProduto} contém {lojaFitness[nomeDoProduto]} únidades disponíveis em estoque");
            }
        else
            {
                Console.WriteLine($"Não temos o produto {nomeDoProduto} no momento");
            }
    }

void Exercicio3()
    {
        int totalDeAcertos = 0;
        Dictionary<string, Dictionary<string, bool>> fitnessQuiz = new Dictionary<string, Dictionary<string, bool>>{
            {
                "Qual é o principal músculo trabalhado no exercício de supino reto?",
                new Dictionary<string, bool>{
                    { "Bíceps", false },
                    { "Quadríceps", false },
                    { "Peitoral", true },
                    { "Dorsal", false }
                }
            },
            {
                "Quantas repetições são recomendadas para ganho de força muscular?",
                new Dictionary<string, bool>{
                    { "1-5 repetições", true },
                    { "8-12 repetições", false },
                    { "15-20 repetições", false },
                    { "Mais de 20 repetições", false }
                }
            }
        };

        Console.Clear();
        Console.WriteLine("As perguntas vão começar para cada pergunta escolha a alternativa correta:");
        Thread.Sleep(5000);

        foreach(string questao in fitnessQuiz.Keys)
            {
                int afirmacaoCorreta = 0;

                Console.Clear();
                Console.WriteLine($"\n{questao}");
                
                foreach(var (afirmacao, index) in fitnessQuiz[questao].Select((value, i) => (value, i)))
                    {
                        Console.WriteLine($"\t{index+1}: {afirmacao.Key}?");
                        

                        if(afirmacao.Value)
                            {
                                afirmacaoCorreta = index+1;
                            }
                    }

                Console.Write("\n\nDigite o número da afirmação que está correta: ");
                int escolhaDoUsuario = int.Parse(Console.ReadLine()!);

                if(escolhaDoUsuario == afirmacaoCorreta)
                    {
                        totalDeAcertos++;
                        Console.WriteLine("Você acertou!");
                    }
                else
                    {
                        Console.WriteLine("Você errou");
                    }

                Thread.Sleep(3000);
            }
        
        Console.Clear();
        Console.WriteLine($"Você acertou {totalDeAcertos} de {fitnessQuiz.Count}");
    }

Dictionary<string, string> usuarioLogado = new Dictionary<string, string>{};
Dictionary<string, string> usuariosCadastrados = new Dictionary<string, string>{
    { "user-a", "1234" }
};
void Exercicio4()
    {
        Console.Clear();
        Console.WriteLine(@"Bem vindo ao
█░░ █▀█ █▀▀ █ █▄░█   █▀ █▀▀ █▀▀ █░█ █▀█ █▀█
█▄▄ █▄█ █▄█ █ █░▀█   ▄█ ██▄ █▄█ █▄█ █▀▄ █▄█
        ");
        
        Console.WriteLine("Digite 1 para logar");
        Console.WriteLine("Digite 2 para redefinir sua senha");
        Console.WriteLine("Digite 3 para criar uma conta");
        Console.WriteLine("Digite 4 para excluir sua conta");

        Console.Write("\nDigite a opção que deseja acessar: ");
        int escolhaDoUsuario = int.Parse(Console.ReadLine()!);

        switch(escolhaDoUsuario)
            {
                case 1:
                    Exercicio4Login();
                    break;
                case 2:
                    Exercicio4RedefinirSenha();
                    break;
                case 3:
                    Exercicio4CriarConta();
                    break;
                case 4:
                    Exercicio4DeletarConta();
                    break;
                default:
                    Console.WriteLine($"Comando {escolhaDoUsuario} não reconhecido");
                    break;
            }
    }

void Exercicio4MenuPrincipal()
    {
        Console.Clear();
        Exercicio4();
    }

bool Exercicio4Login(bool turnOff = true)
    {
        Console.Clear();
        Console.Write("Por favor digite o seu login: ");
        string usuario = Console.ReadLine()!;

        Console.Write("Por favor digite a sua senha: ");
        string senha = Console.ReadLine()!;

        Thread.Sleep(3000);

        if(usuariosCadastrados.ContainsKey(usuario) && usuariosCadastrados[usuario] == senha)
            {
                usuarioLogado[usuario] = senha;
                Console.Clear();
                Console.WriteLine("Login efetuado com sucesso!");
                Thread.Sleep(3000);

                if(turnOff)
                    {
                        Console.Clear();
                        Console.WriteLine("Estamos em desenvolvimento!");
                        Console.Write("\nPara sair digite qualquer coisa: ");
                        Console.ReadKey();
                        Console.Clear();

                    }
                
                return true;
            }
        else
            {
                Console.Clear();
                Console.WriteLine("Usuário ou senha inválido.");
                Console.WriteLine("Digite 1 para tentar novamente");
                Console.Write("Digite outra tecla e pressione enter para voltar ao menu principal: ");
                string escolhaDoUsuario = Console.ReadLine()!;

                switch(escolhaDoUsuario)
                    {
                        case "1":
                            Exercicio4Login();
                            break;
                        default:
                            Exercicio4MenuPrincipal();
                            break;

                    }

                return false;           
            }
    }

void Exercicio4RedefinirSenha()
    {
        Console.Clear();
        Console.Write("Por favor digite o seu login: ");
        string usuario = Console.ReadLine()!;

        if(usuariosCadastrados.ContainsKey(usuario))
            {
                Console.Write("Por favor digite sua nova senha: ");
                usuariosCadastrados[usuario] = Console.ReadLine()!;

                Console.Clear();
                Console.Write("Senha atualizada com sucesso.\nVoltaremos ao menu Principal");
                Thread.Sleep(3000);

                Exercicio4MenuPrincipal();
            }
        else
            {
                Console.Write($"Usuário {usuario} não encontrado");
                Thread.Sleep(3000);
                Exercicio4MenuPrincipal();
            }

    }

void Exercicio4CriarConta()
    {
        Console.Clear();
        Console.WriteLine("Para criar uma conta é necessário login e senha");
        Console.Write("Digite o login que deseja usar para logar: ");
        string loginDoUsuario = Console.ReadLine()!;

        if(!usuariosCadastrados.ContainsKey(loginDoUsuario))
            {
                Console.Write("Digite a senha que deseja usar para logar: ");
                string senha = Console.ReadLine()!;

                usuariosCadastrados[loginDoUsuario] = senha;

                Console.Clear();
                Console.Write("Cadastro realizado com sucesso!\nVoltaremos ao menu principal");
                Thread.Sleep(3000);
                Exercicio4MenuPrincipal();
            }
        else
            {
                Console.Write("usuário já cadastrado! Voltaremos ao menu principal");
                Thread.Sleep(3000);
                Exercicio4MenuPrincipal();
            }
    }

void Exercicio4DeletarConta()
    {
        Console.WriteLine("Para deletar sua conta é necessário estar logado");
        bool logado = Exercicio4Login(false);

        if(logado) {
            Console.Clear();
            Console.WriteLine("Tem certeza que deseja deletar sua conta?");
            Console.WriteLine("Digite 1 para confirmar");
            Console.WriteLine("Digite 2 para voltar ao menu inicial");

            string deletar = Console.ReadLine()!;

            switch(deletar)
                {
                    case "1":
                        usuariosCadastrados.Remove(usuarioLogado.Keys.First());
                        usuarioLogado.Clear();
                        Exercicio4MenuPrincipal();
                        break;
                    default:
                        Exercicio4MenuPrincipal();
                        break;
                }
        }
    }

Exercicio4();