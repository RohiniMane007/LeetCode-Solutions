void main() {
  Solution s = Solution();
  bool str = s.wordPattern("abba", "dog cat cat fish");

  print(str);
}

class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> strList = s.split(' ');
    Map<String, String> map = {};

    if (strList.length != pattern.length) {
      return false;
    }

    for (int i = 0; i < pattern.length; i++) {
      if (map.containsKey(pattern[i])) {
        if (map[pattern[i]] != strList[i]) {
          return false;
        }
      } else {
        if (map.containsValue(strList[i])) {
          return false;
        }
        map[pattern[i]] = strList[i];
      }
    }

    return true;
  }
}
