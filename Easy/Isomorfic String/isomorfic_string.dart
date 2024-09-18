
void main() {
  Solution s =Solution();
  bool b =  s.isIsomorphic("add","bar");
  print(b);
}

class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length){ return false;}

    Map<String, String> sToT = {};
    Map<String, String> tToS = {};

    for (int i = 0; i < s.length; i++) {
        String charS = s[i];
        String charT = t[i];

        if (sToT.containsKey(charS)) {
            if (sToT[charS] != charT){ return false;}
        } else {
            sToT[charS] = charT;
        }

        if (tToS.containsKey(charT)) {
            if (tToS[charT] != charS) {return false;}
        } else {
            tToS[charT] = charS;
        }
    }

    return true;
  }
}