while (true)
{
    Console.WriteLine("Quer iniciar o sistema? Y/N");
    string sistema = Console.ReadLine();

    if (sistema == "Y")
    {
        InciarSistema();

    }
    else if (sistema == "N") {
        Console.WriteLine("\nSistema desligado!");
        break;
    }

}
void AbrirMenu()
    {
    ProducaoDoces Pessoa = new ProducaoDoces();
    Console.WriteLine(
        "Opção 1 - CalcularKgFaltantes\n" +
        "Opção 2 - CalcularTempoRestanteHoras\n" +
        "Opção 3 - CalcularValorFaltante\n" +
        "Opção 4 - EhProducaoExpressa\n" 
        );
    Console.WriteLine("\nEscolha uma opção: ");
    string opcao = Console.ReadLine();
    if (opcao == "1")
    {
        Console.WriteLine("\nCALCULADORA DE KG FALTANTES\nDIGITE A PORCENTAGEM PRONTA:\n ");
        string Porcentagem = Console.ReadLine();
        Pessoa.PorcentagemPronta = Convert.ToDouble(Porcentagem);
        Console.WriteLine($"\nResultado: {Pessoa.CalcularKgFaltantes()}");
    }
} 

void InciarSistema()
{
    AbrirMenu();
}
