import 'package:challenge_imc/model/person.dart';
import 'package:test/test.dart';

void main() {
  test('calculate imc of person', () {
    var person = Person("Ezequiel", 90, 190);
    expect(person.calculateIMC(), 24.9);
  });

  test("Should be show 'Magreza grave' when IMC < 16'", () {
    var person = Person("Ezequiel", 55, 190);
    expect(person.showClassification(), "Magreza grave");
  });

  test("Should be show 'Magreza moderada' when IMC >= 16 && IMC < 17", () {
    var person = Person("Ezequiel", 60, 190);
    expect(person.showClassification(), "Magreza moderada");
  });

  test("Should be show 'Saudável' when IMC >= 18.5 && IMC < 25", () {
    var person = Person("Ezequiel", 70, 190);
    expect(person.showClassification(), "Saudável");
  });

  test("Should be show 'Sobrepeso' when IMC >= 25 && IMC < 30", () {
    var person = Person("Ezequiel", 95, 190);
    expect(person.showClassification(), "Sobrepeso");
  });

  test("Should be show 'Obesidade Grau I' when IMC >= 30 && IMC < 35", () {
    var person = Person("Ezequiel", 110, 190);
    expect(person.showClassification(), "Obesidade Grau I");
  });

  test("Should be show 'Obesidade Grau II (severa)' when IMC >= 35 && IMC < 40",
      () {
    var person = Person("Ezequiel", 130, 190);
    expect(person.showClassification(), "Obesidade Grau II (severa)");
  });
  test("Should be show 'Obesidade Grau III (mórbida)' when IMC >= 40", () {
    var person = Person("Ezequiel", 150, 190);
    expect(person.showClassification(), "Obesidade Grau III (mórbida)");
  });
}
