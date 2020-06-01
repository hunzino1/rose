package com.shj.java.stream;

import java.util.ArrayList;
import java.util.List;

/**
 * @description:
 * @author: sunhaojie
 * @create: 2019/08/21 15:32
 */
public class App111 {
    private int aaa;

    public static void main(String[] args) {
//        List<String> strings = Arrays.asList("abc", "", "bc", "efg", "abcd","", "jkl");
//        // 获取空字符串的数量
//        System.out.println(strings.stream().getClass().getName());
//
//        Random random = new Random();
//        random.ints().limit(10).forEach(System.out::println);

        List<Person> personList = new ArrayList<>();
        Person person1 = new Person(1, "111", 1);
        Person person2 = new Person(2, "111", 1);
        Person person3 = new Person(3, "111", 1);
        Person person4 = new Person(4, "111", 1);
        Person person5 = new Person(5, "111", 1);
        personList.add(person1);
        personList.add(person2);
        personList.add(person3);
        personList.add(person4);
        personList.add(person5);

        List temp = new ArrayList();
        temp.add("1111");

        System.out.println(personList.contains(null));

        System.out.println(personList.stream().map(Person::getAge).filter(age -> age != null).findFirst().orElse(0)); ;
        System.out.println(personList.stream().map(Person::getSex).filter(age -> age != null).findAny().orElse(null));

       String[] a = {"1020000308", "1020100309", "1020400402", "1020400502", "1020400702", "1020500413", "1020600404", "1020600414", "1020700305", "1020700405", "1020800416", "1020900417", "11000004302701", "11000004862125", "11000004862133", "11000010768542", "11000010768563", "11000010768584", "11000012510969", "11000017039791", "11000017042467", "11000017042481", "11000017046099", "11000018647301", "11000018810756", "11000019143656", "11000004552298", "11000005117120", "11000009085185", "11000014757831", "11000015891925", "11000019631526", "11000020250558", "1020300031", "1020400002", "1020800206", "11000003433724", "11000003568986", "11000005630390", "11000006257886", "11000009224157", "11000009227247", "11000009267185", "11000009404668", "11000009405604", "11000009414436", "11000012281206", "11000013982740", "11000014113186", "11000016319444", "11000016845479", "11000018677242", "1020300001", "1020300701", "11000016122588"};
       a.toString();
    }

    public int getAaa() {
        return aaa;
    }

    public void setAaa(int aaa) {
        this.aaa = aaa;
    }
}
