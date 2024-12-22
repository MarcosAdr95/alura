Exercicio 1:
class ContaBancaria
{
    public int numeroIndicador;
    public string titular;
    public double saldo;
    public string senha;
}

Exercicio 2:
class Conta
{
    public string titular;
    public double saldo;
}

using System.Globalization;

Conta conta = new Conta();
conta.titular = "Jorginho das dores";
conta.saldo = 0.75;

Console.WriteLine($"Essa conta é de {conta.titular} com saldo de {conta.saldo.ToString("C", CultureInfo.GetCultureInfo("pt-BR"))}, ele está em uma pobreza lascada");

Exercicio 3:
class Conta
{
    public string titular;
    public double? saldo = null;
    public void ExibirInformacoesDaConta()
    {
        if(!string.IsNullOrEmpty(titular) && saldo != null)
        {
            Console.WriteLine($"Essa conta é de {titular} com saldo de R$ {saldo}, ele está em uma pobreza lascada");
        }
    }
}

Conta conta = new Conta();
conta.titular = "Jorginho das dores";
conta.saldo = 0.75;
conta.ExibirInformacoesDaConta();

Exercicio 4:
class Carro
{
    public string marca;
    public string nome;
    public int portas;

    public int rodas;

    public string cor;

    public int ano;

    public double km;

    public string combustivel;

    public string cambio;

    public string carroceria;

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
carro.marca = "Jac";
carro.nome = "j3";
carro.portas = 5;
carro.rodas = 4;
carro.cor = "Preta";
carro.ano = 2013;
carro.km = 100.101;
carro.combustivel = "Gasolina";
carro.cambio = "Manual";
carro.carroceria = "Hatchback";

Console.WriteLine($"O carro dos sonhos é da\nmarca: {carro.marca}\nnome: {carro.nome}\nportas: {carro.portas}\nrodas: {carro.rodas}\ncor: {carro.cor}\nano: {carro.ano}\nkm: {carro.km}\ncombustivel: {carro.combustivel}\ncambio: {carro.cambio}\ncarroceria: {carro.carroceria}");
Console.WriteLine("\n\nEle:");
carro.Acelerar();
carro.Buzinar();
carro.Frear();