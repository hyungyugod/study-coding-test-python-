class Solution {
    public int solution(int[] num_list) {
        String even = "";
        String odd = "";
        for (int i:num_list){
            if (i % 2 == 0){
                even += Integer.toString(i);
            }

            else {
                odd += Integer.toString(i);
            }
        }
        
        return Integer.parseInt(odd) + Integer.parseInt(even);
    }
}