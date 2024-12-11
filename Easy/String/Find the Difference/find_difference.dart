void main() {
  Solution s = Solution();
  String str = s.findTheDifference("abcd", "abcde");

  print(str);
}

class Solution {
  String findTheDifference(String s, String t) {
    List<String> sList = s.split('')..sort();
    List<String> tList = t.split('')..sort();
    for (int i = 0; i < sList.length; i++) {
      if (sList[i] != tList[i]) {
        return tList[i];
      }
    }

    return tList.last;
  }
}
