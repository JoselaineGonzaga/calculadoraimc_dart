import 'package:calculadora_imc/Classes/pessoa.dart' show Pessoa;
import 'package:calculadora_imc/funcoes/calculadora_imc.dart';
import 'dart:io'; // Importe esta biblioteca para obter entrada do usuário

void main() {
  try {
    print("Seja bem vindo a minha calculadora de IMC!");

    // Solicite ao usuário que insira o nome, o peso e a altura
    stdout.write("Digite o nome da pessoa: ");
    String nome =
        stdin.readLineSync()!; // ! para indicar que a entrada não é nula
    stdout.write("Digite o peso (em kg): ");
    double peso = double.parse(
        stdin.readLineSync()!); // ! para indicar que a entrada não é nula
    stdout.write("Digite a altura (em metros): ");
    double altura = double.parse(
        stdin.readLineSync()!); // ! para indicar que a entrada não é nula

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = calcularIMC(pessoa);
    String categoria = categoriaIMC(imc);

    print("Nome: ${pessoa.nome}");
    print("IMC: $imc");
    print("Categoria de IMC: $categoria");
  } catch (e) {
    print("Erro: $e");
  }
}
