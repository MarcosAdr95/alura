Desafio 1:
class Titular
{
    public Titular(string nome, string cpf, string Endereco)
    {
        Nome = nome;
        Cpf = cpf;
        Endereco = Endereco;
    }
    public string Nome {get;}
    public string Cpf {get;}
    public string Endereco {get;}
}

new Titular("Olavo", "123.456.789-00", "Rua Arantes nº 123");

Desafio 2:
class Titular
{
    public Titular(string nome, string cpf, string endereco)
    {
        Nome = nome;
        Cpf = cpf;
        Endereco = endereco;
    }
    public string Nome {get;}
    public string Cpf {get;}
    public string Endereco {get;}
}

class Conta
{
    public Conta(Titular titular, int agencia, int numeroDaConta, double saldo, double limite)
    {
        Titular = titular;
        Agencia = agencia;
        NumeroDaConta = numeroDaConta;
        Saldo = saldo;
        Limite = limite;
    }
    public Titular Titular {get;}
    public int Agencia {get;}
    public int NumeroDaConta {get;}
    public double Saldo {get;}
    public double Limite {get;}

    public string Informacoes => $"Conta nº {this.NumeroDaConta}, Agência {this.Agencia}, Titular: {this.Titular.Nome} - Saldo: {this.Saldo}";
}

Conta c = new Conta(
    new Titular("Olavo", "123.456.789-00", "Rua Arantes nº 123"),
    10,
    0010,
    2.34,
    100.5
);

Console.WriteLine(c.Informacoes);