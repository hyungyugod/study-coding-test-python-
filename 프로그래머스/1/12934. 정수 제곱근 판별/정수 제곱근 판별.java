class Solution {
    public long solution(long n) {
        long answer = 0;
        double x = Math.sqrt(n);
        if (x % 1 == 0) {
            return (long) ((x + 1) * (x + 1));
        }

        else {
            return -1;
        }
        
    }
}