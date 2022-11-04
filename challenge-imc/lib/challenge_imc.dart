import 'package:challenge_imc/model/person.dart';
import 'package:challenge_imc/utils/console_utils.dart';

void execute() {
  var name = ConsoleUtils.readStringWithText("Person name:");
  var weight = ConsoleUtils.readDoubleWithText("Person Weight:") ?? 0;
  var height = ConsoleUtils.readDoubleWithText("Person Height:") ?? 0;

  var person = Person(name, weight, height / 100);

  person.showClassification();
}
