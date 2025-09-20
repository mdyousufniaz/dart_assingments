void main() {
  Map<String , Object> student = {
		'name': 'Alice',
		'age': 20,
		'grade': 'A'
  };

	print("Name: ${student['name']}");
	print("age: ${student['age']}");

	student['age'] = 21;
	student['grade'] = 'A+';
	student['school'] = "Greenwood High";

	print("\nPrinting 'Student' map:");
	student.forEach((key, value) => print("$key: $value"));
}