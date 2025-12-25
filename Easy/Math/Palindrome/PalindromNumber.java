class PalindromNumber {
   PalindromNumber() {
   }

   public static void main(String[] var0) {
      boolean var1 = isPalindrome(122);
      System.out.println(var1);
   }

   public static boolean isPalindrome(int var0) {
      int var1 = 0;
      int var2 = var0;
      if (var0 >= 0 && (var0 % 10 != 0 || var0 == 0)) {
         while(var2 != 0) {
            int var3 = var2 % 10;
            var2 /= 10;
            var1 = var1 * 10 + var3;
         }

         return var1 == var0;
      } else {
         return false;
      }
   }
}
