class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura}) {
    if (peso <= 0 || altura <= 0) {
      throw Exception("Peso e altura devem ser valores positivos.");
    }
  }
}
