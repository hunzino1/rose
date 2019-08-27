package com.shj.java.compare;

import com.shj.maven.list.same_ele.Person;

/**
 * @description: Integer compareTo 比较相等会返回0
 * @author: sunhaojie
 * @create: 2019/08/15 10:37
 */
public class App {
    public static void main(String[] args) {
        Person person1 = new Person(12, "shj", 1);
        Person person2 = new Person(12, "shj", 0);
        System.out.println(Integer.valueOf(person1.getAge()).compareTo(person2.getAge()));
    }
}
