package com.shj.java.string;

/**
 * description:
 * <p>
 * author: sunhaojie
 * create: 2019/12/02 17:19
 */
public class StringTest {
    public static void main(String[] args) {
        String s = "111";
        System.out.println(s.equals(null));

        int a = 3;
        Integer b = null;
        System.out.println(s + a); // 1113
        System.out.println(s + b); // 111null
        System.out.println(b.toString()); // 异常
    }
}
