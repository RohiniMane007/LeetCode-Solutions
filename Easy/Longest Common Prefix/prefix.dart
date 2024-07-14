void main() {
  List<String> input = ["flower", "fly", "flight"];
  Solution sl = new Solution();
  String res = sl.longestCommanPrefix(input);
  print(res);
}

class Solution {
  String longestCommanPrefix(List<String> strs) {
    strs.sort();

    String s1 = strs[0];
    String s2 = strs[strs.length - 1];
    int idx = 0;

    while (idx < s1.length && idx < s2.length) {
      if (s1[idx] == s2[idx]) {
        idx++;
      } else {
        break;
      }
    }

    return s1.substring(0, idx);
  }
}
