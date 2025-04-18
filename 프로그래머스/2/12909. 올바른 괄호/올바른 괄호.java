import java.security.KeyStore.Entry;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.Scanner;
class Solution {
    boolean solution(String s) {
        Deque <String> left = new ArrayDeque<>();

        for (char i : s.toCharArray()){
            if (left.isEmpty() && i == ')'){
                return false;
            }

            else if (i == '('){
                left.offer(String.valueOf(i));
            }

            else if (i == ')'){
                left.poll();
            }
        }

        if (!left.isEmpty()){
            return false;
        }
        return true;
    }
}