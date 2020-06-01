package com.shj.java.stream.constructor;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

/**
 * @description: 常见的构造stream的方法
 * @author: sunhaojie
 * @create: 2019/08/21 20:20
 */
public class Constructor {
    public static void main(String[] args) {
        // 1. Individual values
        Stream stream = Stream.of("a", "b", "c");
        System.out.println(stream.limit(1));

        // 2. Arrays
        String [] strArray = new String[] {"a", "b", "c"};
        stream = Stream.of(strArray);
        stream = Arrays.stream(strArray);
        // 3. Collections
        List<String> list = Arrays.asList(strArray);
        stream = list.stream();
    }
}
