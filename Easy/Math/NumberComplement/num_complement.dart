void main() {
//   int num= 10;
//   String temp='';
//   String input = num.toRadixString(2);

//   print(num.toRadixString(2));

//   List<String> str = [];

//   for(int i= 0; i<input.length; i++){
//     str.add(input[i]=='0'?'1':'0');
//     temp+=input[i]=='0'?'1':'0';
//   }
//   print(str);
//   print(temp);

//   print(int.parse(temp,radix:2).toRadixString(10));

  Solution s = Solution();
  int result = s.findComplement(5);

  print(result);
}

class Solution {
  int findComplement(int num) {
    String temp = '';
    String binaryNum = num.toRadixString(2);

    for (int i = 0; i < binaryNum.length; i++) {
      temp += binaryNum[i] == '0' ? '1' : '0';
    }

    String n = int.parse(temp, radix: 2).toRadixString(10);
    return int.parse(n);
  }
}
