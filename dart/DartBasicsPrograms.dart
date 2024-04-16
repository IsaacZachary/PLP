// Function to calculate the sum of two numbers
int sum(int a, int b) {
  return a + b;
}

// Program using a for loop to print numbers from 1 to 10
void printNumbers() {
  print('Printing numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Program using a switch statement to check different string values
void checkString(String value) {
  switch (value) {
    case 'dart':
      print('Dart is awesome!');
      break;
    case 'java':
      print('Java is also great!');
      break;
    default:
      print('Unknown language');
  }
}

// Program using a while loop to print numbers from 20 to 10
void printNumbersReverse() {
  print('Printing numbers from 20 to 10:');
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Program using an if-else statement to check if a number is even or odd
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Program to find the largest number in a list
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Program using a try-catch block to catch an exception
void catchException() {
  try {
    int result = 5 ~/ 0; // Division by zero
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Testing the functions
  print('Sum of 5 and 3: ${sum(5, 3)}');

  printNumbers();

  checkString('dart');
  checkString('java');
  checkString('python');

  printNumbersReverse();

  checkEvenOrOdd(7);
  checkEvenOrOdd(10);

  List<int> numbers = [14, 8, 23, 17, 5];
  print('Largest number in the list: ${findLargest(numbers)}');

  catchException();
}
