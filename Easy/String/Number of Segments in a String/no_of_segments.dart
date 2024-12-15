class Solution {
  int countSegments(String s) {
    List<String> str = s.trim().split(' ');
    int count = 0;

    if (s.isEmpty) {
      return 0;
    }

    int i = 0;
    while (i < str.length) {
      if (str[i].isNotEmpty) {
        count++;
      }
      i++;
    }
    return count;
  }
}
