class Solution {
    public int solution(int n) {
        for (int i = 0; i < n /2 + 1; i++){
            if (i * i == n){
                return 1;
            }

        }  
        return 2;
    }
}