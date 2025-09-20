import 'dart:math' show Random;

double findMax({required final List<double> numbers}) {
  double max = numbers.first;

  for (int index = 1; index < numbers.length; ++index) {
    final double number = numbers[index];
    if (number > max) max = number;
  }

  return max;
}

void main() {
  final List<double> marks = [];
  final Random rand = Random();

  for (int index = 0; index < 10; ++index) {
    final double mark = rand.nextDouble() * 99 + 1;
    final double roundedMark = double.parse(
      mark.toStringAsFixed(2)
    );
    marks.add(roundedMark);
  }

  print("Marks List: $marks");
  print("Largest Mark: ${findMax(numbers: marks)}");
}