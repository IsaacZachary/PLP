import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Parent class
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Child class implementing an interface
class Dog extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }

  // Method overriding
  @override
  void breathe() {
    super.breathe();
    print('Dog is breathing...');
  }
}

// Class with method to initialize data from a file
class FileData {
  void readFromFile() {
    try {
      File file = File('data.txt');
      String contents = file.readAsStringSync();
      print('Data from file: $contents');
    } catch (e) {
      print('Error reading file: $e');
    }
  }
}

void main() {
  // Instantiate Dog class
  Dog myDog = Dog();
  myDog.makeSound();
  myDog.breathe();

  // Instantiate class with file data
  FileData fileData = FileData();
  fileData.readFromFile();

  // Method demonstrating the use of a loop
  loopExample();
}

void loopExample() {
  print('Loop demonstration:');
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }
}
