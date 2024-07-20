void main() {
  String s = "(){}[]";
  Solution sol = Solution();
  bool result = sol.isValid(s);
  print(result);
}

class Solution {
  List str = [];
  Map<String, String> mapValue = {")": "(", "}": "{", "]": "["};

  bool isValid(String s) {
    while (true) {
      if (s.contains("()")) {
        s = s.replaceAll("()", "");
      } else if (s.contains("{}")) {
        s = s.replaceAll("{}", "");
      } else if (s.contains("[]")) {
        s = s.replaceAll("[]", "");
      } else {
        return s.isEmpty;
      }
    }
    /*
    for(int i=0;i<s.length;i++){
        if(mapValue.containsValue(s[i])){
            str.add(s[i]);
        }else if(mapValue.containsKey(s[i]) && str.isNotEmpty){
            if(mapValue[s[i]] == str.last){
                // str.remove(str.indexOf(str.last));
                str.removeLast();
            }else{
                return false;
            }
        }else{
            return false;
        }
        
    }
    
    if(str.isEmpty){
        return true;
    }else{
        return false;
    }*/
  }
}
