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

/* ---- Functions and Methods ---- */
// 1. Function with return type: Used when you need to perform some computation and return a result.
String getFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

// 2. Arrow function: Convenient for short and concise operations where the computation and return can be expressed in a single line.
void getTwiceAge(int age) => age * 2;

// 3. Void: Indicates that a function does not return a value.
void greet() {
  print('Hello');
}

// 4. Return: Exits a function and optionally returns a value.
int add(int a, int b) {
  return a + b;
}

// 5. Function with optional parameters: Allows parameters to be optional with default values.
void sayMessage(String message, [String? name]) {
  if (name != null) {
    print('$message, $name!');
  } else {
    print(message);
  }
}

// 6. Named parameters: Allows parameters to be passed by name, improving readability and flexibility.
void greetUser({required String name, int age = 30}) {
  print('Hello, $name! You are $age years old.');
}

// 7. Recursive function: A function that calls itself to solve problems in which the solution depends on solutions to smaller instances of the same problem.
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// 8. Function as a parameter: Passes a function as an argument to another function for flexibility and reusability.
void processOperation(int a, int b, int Function(int, int) operation) {
  print('Result of operation: ${operation(a, b)}');
}

void functionExample() {
  // Example usage of functions
  String fullName = getFullName('John', 'Doe');
  print('Full Name: $fullName');

  int sum = add(3, 5);
  print('Sum: $sum');

  greet();

  sayMessage('Welcome');
  sayMessage('Hello', 'Alice');

  greetUser(name: 'Bob');
  greetUser(name: 'Carol', age: 25);

  int fact = factorial(5);
  print('Factorial of 5: $fact');

  processOperation(10, 5, (a, b) => a - b);
}

/* ---- Control Flow Statements  ---- */
// 1. if / else: Used for executing code conditionally based on whether a condition is true or false.
void checkAge(int age) {
  // Check if age is greater than 18
  if (age > 18) {
    print('Adult'); // Executes if age is greater than 18
  }
  // Check if age is greater than 12 but less than or equal to 18
  else if (age > 12) {
    print(
        'Teenager'); // Executes if age is greater than 12 but less than or equal to 18
  }
  // Executes if none of the above conditions are true (age is 12 or less)
  else {
    print('Child');
  }
}

// 2. for: Used to create a for loop that iterates over a range of values.
void forLoopExample() {
  // for loop that starts with i = 0 and runs while i < 5, incrementing i by 1 each iteration
  for (var i = 0; i < 5; i++) {
    print(i); // Prints the current value of i in each iteration
  }

  // The in keyword is used in for loops to iterate over collections.
  var numbers = [1, 2, 3, 4, 5];
  for (var number in numbers) {
    print(number); // Output: [1, 2, 3, 4, 5]
  }
}

// 3. while: Used to create a while loop that runs as long as a condition is true.
void whileLoopExample() {
  var count = 0;
  while (count < 5) {
    print('Running $count'); // Prints the current count
    count++; // Increments count by 1
  }
}

// 4. do / while: Used to create a do-while loop that runs at least once and then continues as long as a condition is true.
void doWhileLoopExample() {
  var count = 0;
  do {
    print('Running $count'); // Prints the current count
    count++; // Increments count by 1
  } while (count < 5);
}

// 5. switch / case: Used for multiple conditional branches.
void switchExample() {
  const color = 'green';
  const execute = true;

  // when: To set an optional guard clause after a case clause, use the keyword when. A guard clause can follow if case, and both switch statements and expressions.
  switch (color) {
    case 'red' when execute:
      print('Red'); // Executes if color is 'red'
      break;
    case 'green':
      print('Green'); // Executes if color is 'green'
      break;
    case 'blue':
      print('Blue'); // Executes if color is 'blue'
      break;
    default:
      print('Unknown color'); // Executes if none of the above cases match
  }
}

// 6. break: Exits a loop or a switch statement.
void breakExample() {
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Exits the loop when i is 5
    }
    print(i); // Prints the current value of i
  }
  // Output: 0 1 2 3 4
}

// 7. continue: Skips the current iteration of a loop and continues with the next iteration.
void continueExample() {
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Skips the current iteration if i is even
    }
    print(i); // Prints the current value of i
  }
  // Output: 1 3 5 7 9
}

/* ---- Object-Oriented Programming ---- */
// 1. class: Defines a blueprint for creating objects.
class Student {
  String name;
  int age;

  Student(
      this.name, this.age); // Constructor for initializing 'name' and 'age'.
}

// 2. abstract: Used to declare abstract classes, which cannot be instantiated directly but can have abstract methods that subclasses must implement.
abstract class Animal {
  void makeSound(); // Abstract method
}

// 3. interface: the 'blueprint' for a class, outlining the methods and properties that a class should have.
interface class Shape {
  void draw() {
    // ...
  }
}

// 4. mixin: The mixin keyword is used to create a mixin class that can be reused in multiple classes.
class Animals {
  void breathe() {
    print('Breathing');
  }
}

// The on keyword in the mixin specifies that CanFly can only be used with classes that extend Animal.
mixin CanFly on Animals {
  void fly() {
    print('Flying');
  }
}

// The with keyword is used to include the capabilities of a mixin in a class.
class Bird extends Animals with CanFly {}

void mixinExample() {
  var bird = Bird();
  bird.breathe(); // Output: Breathing
  bird.fly(); // Output: Flying
}

// 5. extends: Used to create a subclass that inherits properties and methods from another class (superclass).
class Dog extends Animal {
  void makeSound() {
    print('Woof!');
  }
}

// 6. implements: used to declare that a class implements a specified interface, meaning it must provide implementations for all methods of that interface.
class Rectangle implements Shape {
  @override
  void draw() {
    // Draw rectangle implementation
  }
}

// 7. enum: Used to declare a group of named constants.
enum Color {
  red,
  green,
  blue,
}

var selectedColor = Color.red;

// 8. factory: factory constructor is a way to create an instance of a class. Unlike regular constructors, factory constructors can return instances of a subclass or an existing instance of the class.
class Car {
  final String model;

  // Private constructor
  Car._(this.model);

  // Factory constructor
  factory Car(String type) {
    if (type == 'sedan') {
      return Car._('Sedan');
    } else if (type == 'suv') {
      return Car._('SUV');
    } else {
      return Car._('Unknown Car');
    }
  }

  @override
  String toString() => 'Car model: $model';
}

void factoryExample() {
  var sedan = Car('sedan');
  var suv = Car('suv');
  var truck = Car('truck');

  print(sedan); // Output: Car model: Sedan
  print(suv); // Output: Car model: SUV
  print(truck); // Output: Car model: Unknown Car
}

// 9. extension: allow you to add new functionality to existing libraries, types, or classes without modifying them. This allows you to add methods, getters, or setters to a class without modifying the original class.
class Rabbit {
  final String name;
  Rabbit(this.name);
}

extension Run on Rabbit {
  void run() {
    print('Rabbot $name is running');
  }
}

void extensionExample() {
  final rabbit = Rabbit('rabbit');
  rabbit.run();
}

// 10. set: The set keyword is used to define a setter method.
class SetExample {
  double _width = 0;

  double get width => _width;

  set width(double value) {
    if (value > 0) {
      _width = value;
    }
  }
}

// 11. get: The get keyword is used to define a getter method.
class GetExample {
  final double radius;

  GetExample(this.radius);

  double get area => 3.14 * radius * radius;
}

// 12. required: The required keyword is used to indicate that a named parameter is mandatory.
class RequiredExample {
  final String name;
  final int age;

  RequiredExample({required this.name, required this.age});
}

// 13. new: Used to create a new instance of a class. In modern Dart, you can omit it.
var person = Person('Alice', 30); // or new Person('Alice', 30);

// 14. this: Refers to the current instance of a class.
class NewPerson {
  String name;

  NewPerson(this.name);

  void printName() {
    print(this.name); // Outputs the current instance's 'name'.
  }
}

// 15. super: The super keyword is used to refer to the superclass's members.
class Parent {
  void sayHello() {
    print('Hello from parent');
  }
}

class Child extends Parent {
  @override
  void sayHello() {
    super.sayHello();
    print('Hello from child');
  }
}

void superExample() {
  var child = Child();
  child.sayHello();
  // Output:
  // Hello from parent
  // Hello from child
}

// 16. sealed: The sealed keyword indicates that a class cannot be extended outside of its library.
sealed class SealedClass {
  void display() {
    print('Sealed class method');
  }
}

// 17. final (class): Declares a class that cannot be subclassed.
final class Utility {
  // Utility methods
}

// 18. base: The base keyword is used to indicate that a class can be extended but cannot be implemented by other classes.
base class BaseClass {
  void display() {
    print('Base class method');
  }
}

base class DerivedClass extends BaseClass {
  void show() {
    print('Derived class method');
  }
}

/* ---- Error Handling  ---- */
// 1. try / catch / finally: Used for handling exceptions.
void tryCatchFinally() {
  try {
    // try: Encloses code that may throw exceptions.
    var result = 10 ~/ 0; // Attempting division by zero
  } catch (e) {
    // catch: Catches and handles exceptions that occur within the try block.
    print('Error: $e'); // Handle the exception if division by zero occurs
    // rethrow: The rethrow keyword is used to rethrow a caught exception.
    rethrow; // Rethrow the caught exception
  } finally {
    // finally: Executes cleanup code that should always run, whether an exception was thrown or not.
    print(
        'This always runs'); // This block always executes, regardless of exceptions
  }
}

// 2. throw: Used to explicitly throw an exception with a specified error message or object.
void throwExample() {
  throw Exception(
      'Something went wrong'); // Throws an exception with a specific error message
}

/* ---- Asynchronous and Synchronous Programming  ---- */
// 1. async: Marks a function as asynchronous.
Future<void> fetchData() async {
  // Fetch data asynchronously
}

// 2. await: Pauses the execution of an async function until a Future completes.
void fetchDataAndProcess() async {
  var data = await fetchData(); // Pauses here until fetchData() completes
  // Process the fetched data
}

// 3. yield: The yield keyword is used in generator functions to produce a value.
Stream<int> numbersAsync() async* {
  yield 1;
  yield 2;
  yield 3;
}

void yieldExample() async {
  await for (var number in numbersAsync()) {
    print(number); // Output: 1, 2, 3
  }
}

// 4. sync: The sync keyword is used with generator functions that return an iterable.
Iterable<int> numbersSync() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void syncExample() {
  for (var number in numbersSync()) {
    print(number); // Output: 1, 2, 3
  }
}

/* ---- Type and Generics  ---- */
// 1. type: The type keyword is used to refer to a type in Dart's generic programming.
void printType<T>() {
  print(T);
}

void typeExample() {
  printType<int>(); // Output: int
  printType<String>(); // Output: String
}

// 2. typedef: The typedef keyword is used to define a function type alias.
typedef IntOperation = int Function(int a, int b);

int addition(int a, int b) => a + b;
int subtraction(int a, int b) => a - b;

void typedefExample() {
  IntOperation operation;

  operation = addition;
  print(operation(2, 3)); // Output: 5

  operation = subtraction;
  print(operation(5, 3)); // Output: 2
}

/* ---- Type Checking and Casting ---- */
// 1. is: Checks if an object is of a specific type.
void isExample(Object name) {
  if (name is String) {
    print('Name is a string'); // Checks if 'name' variable is of type String
  }
}

// 2. as: Performs a typecast.
void asExample(Object person) {
  var employee = person
      as Employee; // Casts 'person' to type Employee and assigns it to 'employee'
}

/* ---- Access Modifiers  ---- */
// public: Dart does not have a public keyword; all members are public by default.
// private: Dart uses an underscore (_) to make a member private to its library.
class Employee {
  late String _name; // private member
}

/* ---- Dart Library Directives ---- */
// 1. import: Includes external libraries.
void importExample() {
  // import 'package:flutter/material.dart';
}

// 2. export: Exports libraries so they can be used by other libraries.
void exportExample() {
  // export 'src/my_library.dart';
}

// 3. library: Specifies the name of a library.
void libraryExample() {
  // library my_library;
}

// 4. part: Includes part files in a library.
void partExample() {
  // part 'my_library_part.dart';
}

// 5. part of: Declares a part file in a library.
void partOfExample() {
  // part of my_library;
}

// 6. deferred: The deferred keyword is used for lazy loading of libraries.
void deferredExample() {
  // import 'lib.dart' deferred as lib;
}

/* ---- Dart Import Directives ---- */
// 1. The show keyword is used to import only specific parts of a library.
void showExample() {
  // import 'dart:math' show pi;
}

// 2. The hide keyword is used to hide specific parts of a library when importing it.
void hideExample() {
  // import 'dart:math' hide pi;
}

/* ---- Dart Miscellaneous Keywords ---- */
// 1. assert: Checks a condition and throws an error if the condition is false.
void assertExample() {
  // assert(age > 0);
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

/* ---- Advance Dart ---- */
// 1. covariant: used to relax type constraints in method parameters, allowing for more flexible typing. It indicates that a parameter can accept subtypes of the declared type. This is particularly useful in situations where you want to override a method in a subclass and change the type of one of its parameters to a more specific type.
class LivingThings {
  void makeSound(covariant LivingThings animal) {
    print('Living things makes a sound.');
  }
}

class Tiger extends LivingThings {
  @override
  void makeSound(Tiger animal) {
    print('Tiger roaring.');
  }
}

class Cat extends LivingThings {
  @override
  void makeSound(Cat animal) {
    print('Cat meows.');
  }
}

void covariantExample() {
  LivingThings genericAnimal = LivingThings();
  Tiger tiger = Tiger();
  Cat cat = Cat();

  genericAnimal
      .makeSound(genericAnimal); // Output: Living things makes a sound.
  tiger.makeSound(tiger); // Output: Tiger roaring.
  cat.makeSound(cat); // Output: Cat meows.
}

// 2. external: used to indicate that a method, getter, or setter is implemented outside of Dart. This is often used when interfacing with native code.
class ExternalExample {
  external void externalMethod();

  void normalMethod() {
    print("This is a normal method.");
  }
}

void externalExample() {
  var example = ExternalExample();

  example.normalMethod();
  // example.externalMethod(); // This will throw an error if called without actual implementation.
}

// 3. future: value that will be available at some point in the future. This is particularly useful for operations that take time to complete, such as network requests, file I/O, or any asynchronous computation.
Future<int> fetchUserData() {
  return Future.delayed(const Duration(seconds: 2), () {
    // Simulate fetching data asynchronously
    return 42; // Return some data after 2 seconds
  });
}

void futureExample() async {
  final result = await fetchUserData();
  print(result);
}

// 4. stream: used to handle a sequence of asynchronous events. While Future represents a single value or error that will be available at some point in the future, Stream represents a sequence of values or errors that are delivered asynchronously over time.
Stream<int> getValue() {
  return Stream.fromIterable([1, 2, 3, 4, 5])
      .where((value) => value % 2 == 0) // Filter even numbers
      .map((value) => value * 2) // Double the values
      .distinct(); // Remove consecutive duplicates
}

Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  });
}

void streamExample() async {
  await for (final value in getValue()) {
    print('Processed value: $value');
  }

  await for (final value in getName()) {
    print('Name is: $value');
  }
}

// 5. generator: special functions that allow you to produce a sequence of values lazily, meaning they generate values on-demand. There are two types of generators: synchronous generators and asynchronous generators.
Iterable<int> syncGenerator(int n) sync* {
  for (int i = 0; i < n; i++) {
    yield i;
  }
}

void syncGeneratorExample() {
  // Using the synchronous generator
  var numbers = syncGenerator(5);
  for (var number in numbers) {
    print(number); // Output: 0, 1, 2, 3, 4
  }
}

Stream<int> asyncGenerator(int n) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(const Duration(seconds: 1)); // Simulate async work
    yield i;
  }
}

void asyncGeneratorExample() async {
  // Using the asynchronous generator
  await for (var number in asyncGenerator(5)) {
    print(number); // Output: 0, 1, 2, 3, 4 (with 1-second intervals)
    if (value == 2) {
      print("Reached value 2, stopping the stream.");
      break;
    }
  }
}

// 6. generics: used to create classes, methods, and collections that operate on a specified type or a set of types. Generics help in writing reusable and type-safe code. They enable you to define a component that can work with different data types while ensuring type safety.
class Storage<T> {
  // Generic collection: List to store items
  List<T> items = [];

  // Method to add an item to the storage
  void addItem(T item) {
    items.add(item);
  }

  // Generic method to find an item in the storage
  bool findItem(T item) {
    return items.contains(item);
  }
}

void genericsExample() {
  // Creating a storage for integers
  Storage<int> intStorage = Storage<int>();
  intStorage.addItem(10);
  intStorage.addItem(20);
  intStorage.addItem(30);

  print('Integer Storage: ${intStorage.items}');
  print('Finding 20 in Integer Storage: ${intStorage.findItem(20)}');
  print('Finding 40 in Integer Storage: ${intStorage.findItem(40)}');

  // Creating a storage for strings
  Storage<String> stringStorage = Storage<String>();
  stringStorage.addItem('Dart');
  stringStorage.addItem('Flutter');
  stringStorage.addItem('Programming');

  print('String Storage: ${stringStorage.items}');
  print(
      'Finding "Flutter" in String Storage: ${stringStorage.findItem('Flutter')}');
  print('Finding "Java" in String Storage: ${stringStorage.findItem('Java')}');
}

// 7. of: ommonly used naming convention in methods, especially within the Flutter framework. These methods typically serve as static or factory methods to construct instances or provide access to instances of a particular class, often used to fetch a specific instance from a context or to create new instances.
void ofExample() {
  // ThemeData theme = Theme.of(context); // Retrieves the ThemeData from the context
  // var mediaQueryData = MediaQuery.of(context); // Retrieves the MediaQueryData from the context
}
