package com.shj.java.hashSet;

import java.util.HashSet;
import java.util.Set;

/**
 * description:
 * <p>
 * author: sunhaojie
 * create: 2019/11/05 10:51
 */
public class Test {
    public static void main(String[] args) {
        Set<Integer> set = new HashSet<Integer>();
        set.add(5);
        Integer a = 5;
        System.out.println(set.contains(a));
    }
}
