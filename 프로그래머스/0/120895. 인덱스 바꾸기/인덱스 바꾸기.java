class Solution {
    public String solution(String my_string, int num1, int num2) {
    char [] answer = my_string.toCharArray();
    char tmp = answer[num1];
    answer[num1] = answer[num2];
    answer[num2] = tmp;

    String answer2 = "";

    for (char i : answer){
        answer2 += String.valueOf(i);
    }
    return answer2;
}

}