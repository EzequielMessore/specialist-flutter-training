import 'dart:math';

class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;

  Person(this._name, this._weight, double height) {
    _height = height / 100;
  }

  String getName() => _name;
  void setName(name) => _name = name;

  double getWeight() => _weight;
  void setWeight(double weight) => _weight = weight;

  double getHeight() => _height;
  void setHeight(double height) => _height = height / 100;

  double calculateIMC() {
    var imc = _weight / pow(_height, 2);
    return roundDouble(imc, 1);
  }

  double roundDouble(double value, int places) {
    var mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  String showClassification() {
    double imc = calculateIMC();
    var output = "";
    if (imc < 16) {
      output = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      output = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      output = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      output = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      output = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      output = "Obesidade Grau I";
    } else if (imc > 35 && imc < 40) {
      output = "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      output = "Obesidade Grau III (mórbida)";
    }
    return output;
  }
}
