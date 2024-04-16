// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Class to create student and teacher objects and call methods
class School {
  void printInformation() {
    // Create student object
    Student student = Student('John', 15, '10th');
    // Create teacher object
    Teacher teacher = Teacher('Ms. Smith', 35, 'Math');

    // Call methods to print information
    student.printStudentInfo();
    print('\n');
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create School object
  School school = School();
  // Call method to print information
  school.printInformation();
}
