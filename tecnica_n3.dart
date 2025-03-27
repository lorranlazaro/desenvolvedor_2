void main() {
  
  List<double> faturamentoDiario = [
    100.0, 200.0, 300.0, 400.0, 500.0, 600.0, 900.0, 2000.0,
    2900.0, 3000.0, 3200.0, 4400.0, 5500.0, 6600.0, 7700.0, 8800.0
  ];

  double menorFaturamento = faturamentoDiario.reduce((a, b) => a < b ? a : b);
 
  double maiorFaturamento = faturamentoDiario.reduce((a, b) => a > b ? a : b);
  
  double somaFaturamento = faturamentoDiario.reduce((a, b) => a + b);

  double mediaMensal = somaFaturamento / faturamentoDiario.length;

  int diasAcimaMedia = faturamentoDiario.where((faturamento) => faturamento > mediaMensal).length;

  print("O Menor valor de faturamento foi: R\$ ${menorFaturamento}");
  print("O Maior valor de faturamento foi: R\$ ${maiorFaturamento}");
  print("O Número de dias com faturamento acima da média foi: $diasAcimaMedia");
}