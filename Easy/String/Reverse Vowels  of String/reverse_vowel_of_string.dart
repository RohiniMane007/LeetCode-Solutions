void main() {
  Solution s = Solution();
  String str = s.reverseVowels("IceCreAm");

  print(str);
}

class Solution {
  String reverseVowels(String s) {
    String vowel = "aeiouAEIOU";
    List<String> olist = s.split('');
    List<String> revlist =
        s.split('').reversed.where((e) => vowel.contains(e)).toList();

    int y = 0;
    for (int i = 0; i < s.length; i++) {
      if (vowel.contains(olist[i])) {
        olist[i] = revlist[y];
        y++;
      }
    }
    return olist.join('');

    // List<String> slist = s.split('');
    // int i = 0;
    // return "";
  }
}
