using System.Text.Json;

int InputValueCaptur(string? defaultMessage = "Digite um número: ", int[]? minAndMax = null)
    {
        Console.Write(defaultMessage);

        try
            {
                string posicao = Console.ReadLine()!;
                int positionInt = int.Parse(posicao);

                if(minAndMax == null)
                    {
                        return positionInt;
                    }
                
                if(minAndMax != null)
                    {
                        int min = minAndMax[0];
                        int max = minAndMax[1];

                        if(min <= positionInt && max >= positionInt)
                            {
                                return positionInt;
                            }
                    }

                Console.WriteLine("\nO número digitado não está entre os disponíveis, vamos tentar novamente?");
                return InputValueCaptur(defaultMessage, minAndMax);
            }
        catch(FormatException)
            {
                Console.WriteLine($"\nO que você digitou não é um número, vamos tentar novamente?");
                return InputValueCaptur(defaultMessage, minAndMax);
            }
    }
    
void Exercise1()
    {
        int[] minAndMax= {0, 10};
        int notaMedia = InputValueCaptur("Digite sua nota de 0 a 10: ", minAndMax);

        if(notaMedia >= 5)
            {
                Console.WriteLine("Nota suficiente para aprovação");
            }
        else
            {
                Console.WriteLine("Sua nota ficou abaixo de 5, que tal reforçarmos o conteúdo estudando novamente?");
            }
    }

void Exercise2()
    {
        List<string> languages = new List<string>{"Java", "C#", "Javascript"};

        // converte o array em string
        Console.WriteLine(JsonSerializer.Serialize(languages));
    }

void Exercise3()
    {
        string[] languages = {"C#", "Java", "Javascript"};

        foreach(var language in languages)
            {
                if(language == "C#")
                    {
                        Console.WriteLine(language);
                    }
            }
    }

void Exercise4()
    {
        string[] languages = {"C#", "Java", "Javascript"};
        int[] minAndMax= {1, 3};

        int itemPosition = InputValueCaptur($"Dada a lista {JsonSerializer.Serialize(languages)} digite um número de 1 a 3 equivalente a linguagem que gostaria de selecionar: ", minAndMax);

        Console.WriteLine(languages[itemPosition-1]);
    }

// Exercise1();
// Exercise2();
// Exercise3();
// Exercise4();