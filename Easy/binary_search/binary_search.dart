void main() {
   Solution ob = Solution();
        List<int> arr = [ 2, 3, 4, 10, 40 ];
        int n = arr.length;
        int x = 10;
        int result = ob.binarySearch(arr, 0, n - 1, x);
        if (result == -1){
           print(
                "Element is not present in array");}
        else{
          print(
                "Element is present at index " + result.toString());
        }
            
    }



class Solution {
//   int searchInsert(List<int> nums, int target) {
    
//   }
  
   int binarySearch(List<int> arr, int low, int high, int x)
    {
        if (high >= low) {
            int mid = low + (high - low) ~/ 2;

            // If the element is present at the
            // middle itself
            if (arr[mid] == x){
                return mid;}

         
            if (arr[mid] > x){
                return binarySearch(arr, low, mid - 1, x);}

            // Else the element can only be present
            // in right subarray
            return binarySearch(arr, mid + 1, high, x);
        }

        // We reach here when element is not present
        // in array
        return -1;
    }
}
