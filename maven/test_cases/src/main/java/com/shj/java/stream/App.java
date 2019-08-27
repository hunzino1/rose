package com.shj.java.stream;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 * @description:
 * @author: sunhaojie
 * @create: 2019/08/21 15:32
 */
public class App {
    public static void main(String[] args) {
        List<String> strings = Arrays.asList("abc", "", "bc", "efg", "abcd","", "jkl");
        // 获取空字符串的数量
        System.out.println(strings.stream().getClass().getName());

        Random random = new Random();
        random.ints().limit(10).forEach(System.out::println);
    }
}
