using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace Program01
{
    class Bike
    {
        //Sexaclartions
        public string? Modelo { get; set; }
        public double Bateria { get; set; }
        public double PesoCiclista { get; set; }
        public int RecargaMes {  get; set; }

        //metodos(ações)
        public double CalcularAutonomia()
        {
            double AutonomiaBase = Bateria / 15.0;
            bool Peso = PesoCiclista > 90.0;
            // se o peso do ciclista for maior que 90kg, reduz a autonomia em 15%
            return Peso ? (AutonomiaBase * 0.05) : AutonomiaBase;

        }
        public double CalcularConsumoMensal()
        {
            double cargaPorKm = Bateria / 1000.0;
            return cargaPorKm * RecargaMes;
        }
        public double CalcularCustoMensal()
        {
            const double Preco = 0.80;
            return CalcularConsumoMensal() * Preco;

        }
        public bool BikeEconomica()
        {
            return (CalcularCustoMensal() < 15.0 || (CalcularAutonomia() > 40));
        }
    }
}
