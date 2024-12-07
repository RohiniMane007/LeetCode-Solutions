void main() {
  Solution s = Solution();
  bool val = s.isPalindrome("A man, a plan, a canal: Panama");
  print(val);
}

class Solution {
  bool isPalindrome(String s) {
    String cleaned = removeNonAlphanumeric(s).toLowerCase();

    String revStr = cleaned
        .split('')
        .reversed
        .join(''); //reverseString(cleaned.toLowerCase());

    if (cleaned == revStr) {
      return true;
    } else {
      return false;
    }
  }

  String removeNonAlphanumeric(String input) {
    return input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  }
}
