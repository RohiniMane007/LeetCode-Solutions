// import "dart:math";
void main() {
  Solution s = Solution();
  String str = s.findTheDifference("a", "aa");

  print(str);
}

class Solution {
  String findTheDifference(String s, String t) {
    for (int i = 0; i < s.length; i++) {
      // if (t.contains(s[i])) {
      //   t = t.replaceAll(s[i], '');
      // }
      if (s[i] == t[i]) {
        // t = t.replaceFirstMapped(t[i],t, i);
      }
    }
    print(t);
    return "";
  }
}
