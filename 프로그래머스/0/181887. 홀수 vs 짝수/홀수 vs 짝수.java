
class Solution {
    public int solution(int[] num_list) {
        int j = 0;
        int h = 0;
        int answer = 0;
        for (int i = 0; i < num_list.length; i++){
            if (i % 2 == 0){
                j += num_list[i];
            }
            else{
                h += num_list[i];
            }
        
        }
        if (j != h){
            answer = Math.max(j,h);
        }
        else{
            answer = j;
        }
        return answer;
    }
}