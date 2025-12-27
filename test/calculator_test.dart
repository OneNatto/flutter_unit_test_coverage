import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_coverage/calculator.dart';

void main() {
  // Group of unit tests for the Calculator class
  group('Calculator Tests', () {
    // Create a Calculator instance to be used in all tests
    final calculator = Calculator();

    // Test cases for the add method
    test('add method should return the sum of two numbers', () {
      expect(calculator.add(2, 3), 5);
      expect(calculator.add(-1, 1), 0);
    });

    // Test cases for the subtract method
    test('subtract method should return the difference of two numbers', () {
      expect(calculator.subtract(5, 3), 2);
      expect(calculator.subtract(0, 4), -4);
    });

    // Note:
    // Multiplication tests are intentionally omitted in this example.
    // The purpose of these tests is to demonstrate basic unit testing
    // rather than to provide full coverage of all calculator operations.
  });
}

