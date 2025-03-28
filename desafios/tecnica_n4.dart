void main() {
  Map<String, double> faturamentoPorEstado = {
    'SP': 67836.43,
    'RJ': 36678.66,
    'MG': 29229.88,
    'ES': 27165.48,
    'Outros': 19849.53
  };

  double faturamentoTotal =
      faturamentoPorEstado.values.fold(0.0, (total, valor) => total + valor);

  faturamentoPorEstado.forEach((estado, faturamento) {
    double percentual = (faturamento / faturamentoTotal) * 100;
    print(
        "O Percentual de Representação de $estado foi: ${percentual.toStringAsFixed(2)}%.");
  });
}
