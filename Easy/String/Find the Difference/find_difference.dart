// import "dart:math";
void main() {
  Solution s = Solution();
  String str = s.findTheDifference("abcd", "abcde");

  print(str);
}

class Solution {
  String findTheDifference(String s, String t) {
//      int maxLen = max(s.length,t.length);
//      print(maxLen);

    List<String> str = s.split('');

    for (int i = 0; i < s.length; i++) {
      if (t.contains(s[i])) {
        t.replaceAll(s[i], '');
      }
    }
    print(str);
    return "";
  }
}
