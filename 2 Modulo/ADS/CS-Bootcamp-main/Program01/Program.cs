using Program01;

Console.WriteLine("***** SISTEMA DA LOJA DE BIKE *****");
Console.WriteLine();

// instanciando o objeto da classe 

Bike bike = new Bike();
Console.WriteLine("Modelo Bike: ");
bike.Modelo = Console.ReadLine();

Console.WriteLine("Capacidade da Bateria: ");
bike.Bateria = double.Parse(Console.ReadLine());

Console.WriteLine("Peso do Ciclista: ");
bike.PesoCiclista = Convert.ToDouble(Console.ReadLine());

Console.WriteLine("Quantidade de recarga /mes: ");
bike.RecargaMes = int.Parse(Console.ReadLine());

//exibir resultado na tela
Console.WriteLine("\n --Relatório de desempenho da bike--");
Console.WriteLine($"Bicicreta: {bike.Modelo.ToUpper()} ");
Console.WriteLine($"Autonomia Estimada: {bike.CalcularAutonomia():F1} Por carga");
Console.WriteLine($"Consumo Mensal: {bike.CalcularConsumoMensal():F2} KWm");
Console.WriteLine($"Custo Mensal: {bike.CalcularCustoMensal():N2}");
Console.WriteLine($"A bike é Economica:{bike.BikeEconomica}");




