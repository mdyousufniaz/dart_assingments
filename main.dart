import 'dart:math' show Random;

double findMax(final List<double> marks) {
  double max = marks.first;

  for (int index = 1; index < marks.length; ++index) {
    double mark = marks[index];
    if (mark > max) max = mark;
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
  print("Largest Mark: ${findMax(marks)}");
}