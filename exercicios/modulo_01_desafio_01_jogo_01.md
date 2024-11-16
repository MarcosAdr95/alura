void Welcome()
    {
        Console.WriteLine("Bem vindo ao");
        Console.WriteLine(@"
███╗░░██╗██╗░░░██╗███╗░░░███╗███████╗██████╗░░█████╗░  ░██████╗███████╗░█████╗░██████╗░███████╗████████╗░█████╗░
████╗░██║██║░░░██║████╗░████║██╔════╝██╔══██╗██╔══██╗  ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔══██╗
██╔██╗██║██║░░░██║██╔████╔██║█████╗░░██████╔╝██║░░██║  ╚█████╗░█████╗░░██║░░╚═╝██████╔╝█████╗░░░░░██║░░░██║░░██║
██║╚████║██║░░░██║██║╚██╔╝██║██╔══╝░░██╔══██╗██║░░██║  ░╚═══██╗██╔══╝░░██║░░██╗██╔══██╗██╔══╝░░░░░██║░░░██║░░██║
██║░╚███║╚██████╔╝██║░╚═╝░██║███████╗██║░░██║╚█████╔╝  ██████╔╝███████╗╚█████╔╝██║░░██║███████╗░░░██║░░░╚█████╔╝
╚═╝░░╚══╝░╚═════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝░╚════╝░  ╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚══════╝░░░╚═╝░░░░╚════╝░
        ");
    }

void Tutorial()
    {
        Console.WriteLine("Como o jogo funciona?");
        Console.WriteLine("1. Nós iremos gerar um número randômico entre 0 e 100");
        Console.WriteLine("2. A cada número informado iremos avisar se o jogador acertou \\o/ ou errou =(");
        Console.WriteLine("3. Para cada erro daremos uma dica se o número escolhido é maior ou menor do que o resultado");
        Console.WriteLine("4. Caso deseje sair no meio da partida basta digitar as teclas 'Ctrl+C' ao mesmo tempo");
    }

int InputValueCaptur(string? defaultMessage = "Digite um número: ", int[]? minAndMax = null)
    {
        Console.Write(defaultMessage);

        try
            {
                string posicao = Console.ReadLine()!;
                int positionInt = int.Parse(posicao);

                return positionInt;
            }
        catch(FormatException)
            {
                return 0;
            }
    }

int GetUserChoice(string? message = "")
    {
        int[] choices = {1,2};
        string message2 = !string.IsNullOrEmpty(message) ? message : "\n\nTopa o desafio? Digite 1 para sim e 2 para não: ";

        return InputValueCaptur(message2, choices);

    }

int SecretNumber(int init = 1, int end = 100)
    {
        return new Random().Next(init, end);
    }

void StartGame()
    {
        int attempt = 0;
        int userChoice = 0;
        int secretNumber = SecretNumber();

        Console.WriteLine($"\n>>> O jogo já vai começar! Se prepare!{secretNumber}");

        do {
            attempt++;
            userChoice = InputValueCaptur($"\nTentativa {attempt}, escolha o seu número: ");

            if(userChoice == secretNumber)
                {
                    Console.WriteLine(">>> Parece que hoje é seu dia de sorte você acertou!");
                }
            else {
                string help = userChoice > secretNumber ? "maior" : "menor";
                Console.WriteLine($">>> Sua escolha é {help} do que o número secreto parece que você errou, tente novamente!");
            }
        } while (userChoice != secretNumber);
    }

void PathTaken(string? message)
    {
        switch(GetUserChoice(message))
            {
                case 1:
                    StartGame();
                    break;
                case 2:
                    Console.WriteLine("\n>>> Sentimos o cheiro do medo em você vá embora! Muhahahahahha Muhahahahahha");
                    break;
                default:
                    Console.WriteLine(">>> Parece que você já começou perdendo o valor digitado não é permitido.");
                    PathTaken("\n\nVamos tentar novamente tecle 1 pra jogar, 2 para sair ou outro para perder novamente: ");
                    break;       
            }
    }

Welcome();
Tutorial();
PathTaken("");