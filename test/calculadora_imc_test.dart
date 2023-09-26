import 'package:calculadora_imc/Classes/pessoa.dart';
import 'package:calculadora_imc/funcoes/calculadora_imc.dart';
import 'package:flutter_test/flutter_test.dart';
// Substitua 'sua_app' pelo nome do pacote do seu aplicativo

void main() {
  test('Cálculo de IMC', () {
    // Criar uma pessoa com peso 70 e altura 1.75 (IMC deve ser aproximadamente 22.86)
    Pessoa pessoa = Pessoa(nome: "Maria", peso: 70, altura: 1.75);
    var calcularIMC2 = calcularIMC(pessoa);
    double imc = calcularIMC2;

    // Verificar se o resultado é aproximadamente igual a 22.86
    expect(imc, closeTo(22.86, 0.01));
  });

  test('Categoria de IMC', () {
    // Testar a categoria de IMC para diferentes valores de IMC
    expect(categoriaIMC(15), equals("Baixo peso muito grave"));
    expect(categoriaIMC(16.5), equals("Baixo peso grave"));
    expect(categoriaIMC(18), equals("Baixo peso"));
    expect(categoriaIMC(22), equals("Peso normal"));
    expect(categoriaIMC(28), equals("Sobrepeso"));
    expect(categoriaIMC(32), equals("Obesidade grau I"));
    expect(categoriaIMC(37), equals("Obesidade grau II"));
    expect(categoriaIMC(42), equals("Obesidade grau III (obesidade mórbida)"));
  });
}
