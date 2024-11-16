using System;
using System.Text.Json;

List<string> bandas = new List<string>();

void Exercise1()
    {
        float a = 3.14f;
        float b = 2.1f;

        Console.WriteLine($"A adição de {a} e {b} é igual a: {a + b}");
        Console.WriteLine($"A subtração de {a} e {b} é igual a: {a - b}");
        Console.WriteLine($"A divisão de {a} e {b} é igual a: {a / b}");
        Console.WriteLine($"A multiplicação de {a} e {b} é igual a: {a * b}");
    }

void Exercise2()
    {
        bandas.Add("Charlie Brown Jr");
        bandas.Add("Eminem");
        bandas.Add("System of a Down");

        // Console.WriteLine(JsonSerializer.Serialize(bandas));
        // Console.WriteLine("[" + String.Join(", ", bandas) + "]");
    }

void Exercise3()
    {
        Exercise2();

        Console.WriteLine("Lista de bandas favoritas:");
        for(int i = 0; i < bandas.Count; i++)
            {
                Console.WriteLine($"Banda: {bandas[i]}");
            }
    }

void Exercise4()
    {
        List<int> numbers = new List<int>{1,2,3,4,5};
        int result = numbers.Sum();

        Console.WriteLine($"A soma dos números {JsonSerializer.Serialize(numbers)} é igual a: {result}");
    }

Exercise4();