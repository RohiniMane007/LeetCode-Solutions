public class ReverseNumTwoTime {
   public ReverseNumTwoTime() {
   }

   public static void main(String[] var0) {
      boolean var1 = isSameAfterReversals(120);
      System.out.println(var1);
   }

   public static boolean isSameAfterReversals(int var0) {
      int var1 = var0;
      int var2 = 0;

      int var3;
      int var4;
      for(var3 = 0; var1 != 0; var2 = var2 * 10 + var4) {
         var4 = var1 % 10;
         var1 /= 10;
      }

      while(var2 != 0) {
         var4 = var2 % 10;
         var2 /= 10;
         var3 = var3 * 10 + var4;
      }

      return var3 == var0;
   }
}
