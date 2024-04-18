import 'dart:math';

// Interface for shapes
abstract class Shape {
  double get area; // Abstract getter for area calculation
}

// Class representing a rectangle
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height); // Constructor with parameters

  @override // Override the inherited 'area' getter
  double get area => width * height;

  // Method demonstrating loop usage (calculates perimeter)
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Class representing a circle, inheriting from Shape
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override // Override the inherited 'area' getter

  double get area => pi * radius * radius; // Use built-in pi constant
}

class PI {}

// Function to read data from a file (simulated)
List<double> readDataFromFile(String filename) {
  // Replace this with actual file reading logic (e.g., using dart:io)
  return [5.0, 3.0]; // Sample data (width and height)
}

void main() {
  // Read data from a file (simulated)
  List<double> data = readDataFromFile("data.txt");

  // Create a rectangle instance using data from the file
  Rectangle rectangle = Rectangle(data[0], data[1]);

  // Print the rectangle's area and perimeter
  print("Rectangle area: ${rectangle.area}");
  print("Rectangle perimeter: ${rectangle.calculatePerimeter()}");

  // Create a circle instance
  Circle circle = Circle(4.0);

  // Print the circle's area
  print("Circle area: ${circle.area}");
}
