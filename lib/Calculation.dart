import 'dart:math';

class Calculation {
  Calculation({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 24) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Run, workout or do whatever it takes,you seem overweight';
    } else if (_bmi > 18.5) {
      return 'Great Scott! You are normal body weight';
    } else {
      return 'Grab a bite! You have less than average weight';
    }
  }
}
