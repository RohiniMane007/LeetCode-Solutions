void main() {

  Solution s = Solution();
 int n = s.strStr('sadbutsad', 'sadd');
  print(n);
}
class Solution {
  int strStr(String haystack, String needle) {
    if(haystack.contains(needle)){
      return haystack.indexOf(needle);
    }
    return -1;
  }
}
