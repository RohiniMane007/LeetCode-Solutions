void main() {
  String num1 = "12";
  String num2 = "12";
  print(multiplyStrings(num1, num2)); // Output: 56088
}

String multiplyStrings(String num1, String num2) {
  // If either number is "0", return "0"
  if (num1 == "0" || num2 == "0") {
    return "0";
  }

  int len1 = num1.length;
  int len2 = num2.length;

  // Create a result array with enough space to hold the maximum number of digits (growable list)
  List<int> result = List<int>.filled(len1 + len2, 0, growable: true);

  // Reverse both numbers
  num1 = num1.split('').reversed.join();
  num2 = num2.split('').reversed.join();

  // Multiply each digit of num1 by each digit of num2
  for (int i = 0; i < len1; i++) {
    for (int j = 0; j < len2; j++) {
      result[i + j] += int.parse(num1[i]) * int.parse(num2[j]);
      result[i + j + 1] += result[i + j] ~/ 10; // Carry over
      result[i + j] %= 10; // Keep only the current digit
    }
  }

  // Remove leading zeros from the result (if any)
  while (result.length > 1 && result.last == 0) {
    result.removeLast(); // Dynamically removes the last element
  }

  // Convert result to a string and reverse it to correct the order
  return result.reversed.join();
}
