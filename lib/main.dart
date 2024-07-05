// ignore_for_file: avoid_print, unused_local_variable, unused_field
import 'package:flutter/material.dart';

/* ---- Operators in Dart ---- */
// 1. Arithmetic Operators: These operators are used to perform basic arithmetic operations.
void arithmeticOperatorsExample() {
  int a = 10;
  int b = 5;

  print('Addition: ${a + b}'); // Output: 15
  print('Subtraction: ${a - b}'); // Output: 5
  print('Multiplication: ${a * b}'); // Output: 50
  print('Division: ${a / b}'); // Output: 2.0
  print('Integer Division: ${a ~/ b}'); // Output: 2
  print('Modulus: ${a % b}'); // Output: 0
}

// 2. Relational Operators: These operators are used to compare two values.
void relationalOperatorsExample() {
  int a = 10;
  int b = 5;

  print('Equal: ${a == b}'); // Output: false
  print('Not equal: ${a != b}'); // Output: true
  print('Greater than: ${a > b}'); // Output: true
  print('Less than: ${a < b}'); // Output: false
  print('Greater than or equal to: ${a >= b}'); // Output: true
  print('Less than or equal to: ${a <= b}'); // Output: false
}

// 3. Logical Operators: These operators are used to combine multiple boolean expressions.
void logicalOperatorsExample() {
  bool x = true;
  bool y = false;

  print('AND: ${x && y}'); // Output: false
  print('OR: ${x || y}'); // Output: true
  print('NOT: ${!x}'); // Output: false
}

// 4. Bitwise Operators: These operators are used to perform bit-level operations.
void bitwiseOperatorsExample() {
  int a = 5; // 0101 in binary
  int b = 3; // 0011 in binary

  print('Bitwise AND: ${a & b}'); // Output: 1 (0001 in binary)
  print('Bitwise OR: ${a | b}'); // Output: 7 (0111 in binary)
  print('Bitwise XOR: ${a ^ b}'); // Output: 6 (0110 in binary)
  print('Bitwise NOT: ${~a}'); // Output: -6 (invert all bits)
  print('Left shift: ${a << 1}'); // Output: 10 (1010 in binary)
  print('Right shift: ${a >> 1}'); // Output: 2 (0010 in binary)
}

// 5. Assignment Operators: These operators are used to assign values to variables.
void assignmentOperatorsExample() {
  int a = 10;
  int b = 5;

  a += b; // a = a + b
  print('Addition assignment: $a'); // Output: 15

  a -= b; // a = a - b
  print('Subtraction assignment: $a'); // Output: 10

  a *= b; // a = a * b
  print('Multiplication assignment: $a'); // Output: 50

  a ~/= b; // a = a ~/ b
  print('Integer division assignment: $a'); // Output: 10

  a %= b; // a = a % b
  print('Modulus assignment: $a'); // Output: 0
}

// 6. Conditional Operator: This operator is used to evaluate boolean expressions and return one of two values. also call as (Ternary Operator)
void conditionalOperatorExample() {
  int a = 10;
  int b = 5;

  String result = (a > b) ? 'a is greater' : 'b is greater';
  print(result); // Output: a is greater
}

// 7. Null-Aware Operators: These operators are used to work with nullable values.
void nullAwareOperatorsExample() {
  int? a; // Nullable integer
  int b = 5; // Non-nullable integer

  // Null-coalescing operator (??): Returns the value on the left if it's not null; otherwise, returns the value on the right.
  int result = a ?? b;
  print(result); // Output: 5

  // Null-coalescing assignment operator (??=): Assigns a value to a variable only if that variable is null.
  a ??= b;
  print(a); // Output: 5

  // Null-aware access operator (?.): Allows you to call methods or access properties on an object only if that object is not null.
  List<int>? numbers; // Nullable list of integers
  print(numbers?.length); // Output: null (because numbers is null)
  numbers = [1, 2, 3]; // Assigning a non-null value to numbers
  print(numbers?.length); // Output: 3

  // Null-aware cascade operator (..): Allows you to perform a series of operations on an object only if that object is not null.
  List<int>? numbersList; // Nullable list of integers
  // Add elements to the list only if it is not null
  numbersList
    ?..add(1)
    ..add(2); // No effect because numbersList is null

  print(numbersList); // Output: null

  numbersList = []; // Assigning a non-null value to numbersList
  numbersList
    ?..add(1)
    ..add(2);

  print(numbersList); // Output: [1, 2]
}

// 8. Type Test Operators: These operators are used to check the type of an object at runtime.
void typeTestOperatorsExample() {
  var a = 10;
  var b = 'Hello';

  print(a is int); // Output: true
  print(b is! int); // Output: true
}

// 9. Custom Operators: Custom operators in Dart allow you to define how an operator (such as +, -, *, /) behaves when used with instances of your class.
class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  // Custom '==' operator to compare two Person instances
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Person) return false;
    return name == other.name && age == other.age;
  }

  // Overriding hashCode is necessary when overriding '=='
  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() => 'Person(name: $name, age: $age)';
}

void customOperatorsExample() {
  var person1 = Person('Alice', 30);
  var person2 = Person('Alice', 30);
  var person3 = Person('Bob', 25);

  print(person1 == person2); // Output: true
  print(person1 == person3); // Output: false
}

/* ---- Variable and Constant Declarations  ---- */
// 1. const: Used to declare a constant value that is determined at compile time.
const age = 27;
const twiceAge = age * 2;

// 2. var: Used to declare a variable when you don't want to specify the type. The type is inferred from the value assigned to it.
var name = 'Alice';

/* ---- Final Variable Declaration ---- */
// 1. final: Used to declare a variable that can only be set once. The value is determined at runtime.
String finalExample() {
  final String nickname;
  nickname = 'Bobby'; // Once assigned, 'nickname' cannot be changed.
  return nickname;
}

/* ---- Late Variable Initialization ---- */
// 1. late: Used to indicate that a variable will be initialized at a later point before it's accessed.
late int value;
void initValue() {
  value = 10;
}

/* ---- Static Variables and Methods ---- */
// 1. static: Used to declare class-level variables and methods that can be accessed without creating an instance of the class.
class Circle {
  static const double pi = 3.14;

  static double calculateArea(double radius) {
    return pi * radius * radius;
  }
}

void staticExample() {
  Circle.pi == 16.0;
  Circle.calculateArea(16.0);
}

/* ---- Dynamic Type Declaration ---- */
// 1. dynamic: Represents a dynamic type that can hold any Dart object.
void dynamicExample() {
  dynamic valueDy = 'Hello';
  valueDy = 10;
}

/* ---- Boolean Literals ---- */
// 1. true: Boolean literal representing the true value.
void trueExample() {
  bool isActive = true;
}

// 2. false: Boolean literal representing the false value.
void falseExample() {
  bool isActive = false;
}

/* ---- Null Safety ---- */
// 1. null: Null safety is a feature in Dart that helps us distinguish between nullable variables and non-nullable variables.
void nullExample() {
  List<String?>? names = ['Foo', 'Bar', null];
  names = null;
}

/* ---- Dart Collections  ---- */
// 1. lists: A list in Dart is an ordered collection of items. Lists are similar to arrays in other programming languages.
void listExample() {
  // Creating a list of integers
  List<String> fruits = ['apple', 'banana'];

  // Adding a single item
  fruits.add('orange');

  // Adding multiple items
  fruits.addAll(['grape', 'pineapple']);

  // Accessing items
  print(fruits[0]); // Output: apple

  // Modifying items
  fruits[1] = 'blueberry';

  // Removing a single item by value
  fruits.remove('banana');

  // Removing a single item by index
  fruits.removeAt(0);

  // Removing all items
  fruits.clear();
}

// 2. sets: A set in Dart is an unordered collection of unique items. Sets are useful when you want to store unique values and don't care about the order.
void setsExample() {
  Set<String> fruits = {'apple', 'banana'};

  // Adding a single item
  fruits.add('orange');

  // Adding multiple items
  fruits.addAll({'grape', 'pineapple'});

  // Trying to add a duplicate item (it will be ignored)
  fruits.add('apple');

  // Removing a single item
  fruits.remove('banana');

  // Clearing all items
  fruits.clear();
}

// 3. maps: A map in Dart is an unordered collection of key-value pairs, where each key is unique. Maps are useful when you need to associate values with keys, such as storing user information where keys can be user IDs and values can be user details.
void mapsExample() {
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};

  // Adding a new entry
  ages['Charlie'] = 35;

  // Modifying an existing entry
  ages['Alice'] = 26;

  // Accessing values using keys
  print(ages['Alice']); // Output: 25

  // Trying to access a non-existing key returns null
  print(ages['David']); // Output: null

  // Removing an entry using a key
  ages.remove('Bob');

  // Clearing all entries
  ages.clear();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
