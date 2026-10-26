class ProducaoDoces
{
    public string Confeiteiro { get; set; }
    public double CapacidadeKg { get; set; }
    public double PorcentagemPronta { get; set; }
    public double TaxaProducaoPorHora { get; set; }

    public double CalcularKgFaltantes()
    {
        double PorcentagemN = (100.0 - PorcentagemPronta) / 100.0;
        return PorcentagemN;
    }

    public double CalcularTempoRestanteHoras()
    {
        return CalcularKgFaltantes() / TaxaProducaoPorHora;
    }

    public double CalcularValorFaltante()
    {
        const double preco = 45.50;
        return CalcularKgFaltantes() * preco;
    }
    public bool EhProducaoExpressa()
    {
        return (TaxaProducaoPorHora >= 20) && (CalcularTempoRestanteHoras() < 1);
    }
}
