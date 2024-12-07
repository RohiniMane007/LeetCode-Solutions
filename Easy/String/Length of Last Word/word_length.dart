void main() {
//   String  str = "Hello";
  String  str = "   fly me   to   the moon  ";
  Solution s = Solution();
  int res = s.lengthOfLastWord(str);
  
  print(res);
}

class Solution {
  int lengthOfLastWord(String s) {
    List<String> strList = s.trim().split(' ');
    return strList.last.length;
  }
}
