void main() {
  Solution s = Solution();
  String str = s.reverseVowels("IceCreAm");

  print(str);
}

class Solution {
  String reverseVowels(String s) {
    /* String vowel = "aeiouAEIOU";
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
    return olist.join('');*/

    String vowel = "aeiouAEIOU";
    List<String> olist = s.split('');
    List<String> revlist = s.split('').reversed.toList();

    for (int i = 0; i < s.length; i++) {
      if (vowel.contains(olist[i])) {
        for (int j = i; j < revlist.length; j++) {
          if (vowel.contains(revlist[j])) {
            olist[i] = revlist[j];
            break;
          }
        }
      }
    }

    return olist.join('');
  }
}
