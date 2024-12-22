Exercicio 1:
class Conta
{
    public int NumeroIndicador  { get; set; }
    public string Titular { get; set; }
    public double Saldo { get; set; }
    public string Senha { get; set; }
}

using System.Globalization;

Conta conta = new Conta();
conta.Titular = "Jorginho das dores";
conta.Saldo = 0.75;

Console.WriteLine($"Essa conta é de {conta.Titular} com saldo de {conta.Saldo.ToString("C", CultureInfo.GetCultureInfo("pt-BR"))}, ele está em uma pobreza lascada");

Exercicio 2:
class Carro
{
    public string Marca { get; set; }
    public string Nome { get; set; }
    public int Portas { get; set; }
    public int Rodas { get; set; }
    public string Cor { get; set; }
    private int ano;
    public int Ano {
        get => ano;
        set {
            if(value > 1960 && value < 2023)
            {
                ano = value;
                return;
            }
            
            Console.WriteLine("Ano inválido deve entre 1960 e 2023");
        }
    }
    public double Km { get; set; }
    public string Combustivel { get; set; }
    public string Cambio { get; set; }
    public string Carroceria { get; set; }
    public string DescricaoDetalhada => $"Fabricante: {Marca}, Modelo {Nome} e Ano: {Ano}";
    
    public void Acelerar()
    {
        Console.WriteLine("Acelera");
    }

    public void Frear()
    {
        Console.WriteLine("Frea");
    }
    
    public void Buzinar()
    {
        Console.WriteLine("Buzina");
    }
}

Carro carro = new Carro();
carro.Marca = "Jac";
carro.Nome = "j3";
carro.Portas = 5;
carro.Rodas = 4;
carro.Cor = "Preta";
carro.Ano = 2020;
carro.Km = 100.101;
carro.Combustivel = "Gasolina";
carro.Cambio = "Manual";
carro.Carroceria = "Hatchback";

Console.WriteLine(carro.DescricaoDetalhada);

exercicio 4:
using System.Globalization;

class Produto
{
    public string Nome { get; set; }
    public string Marca { get; set; }
    private int preco;
    public int Preco {
        get => preco;
        set
        {
            if(IsPositiveNumber(value))
            {
                preco = value;
            }
        }
    }
    private int estoque;
    public int Estoque {
        get => estoque;
        set
        {
            if(IsPositiveNumber(value))
            {
                estoque = value;
            }
        }
    }

    public string informacoes {
        get {
            if(preco > 0 && estoque > 0)
            {
                return $"O produto {Nome} da marca {Marca} custa {preco.ToString("C", CultureInfo.GetCultureInfo("pt-BR"))} e tem disponível {estoque} em estoque";
            }

            return "Produto indisponível";
        }
    }

    private bool IsPositiveNumber(int number)
    {
        if(number > 0)
        {
            return true;
        }

        return false;
    }
}

Produto produto1 = new Produto();
produto1.Nome = "Creatina";
produto1.Marca = "Growth";
produto1.Preco = 59;
produto1.Estoque = 3;

Console.WriteLine(produto1.informacoes);