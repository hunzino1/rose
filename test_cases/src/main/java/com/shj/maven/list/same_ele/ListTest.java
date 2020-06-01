package com.shj.maven.list.same_ele;

import java.util.List;

/**
 * @description: 确认list 对象中的某一元素的值都是相同的；
 *                开始就觉得会有比较简洁的方案，果然是有的
 * @author: sunhaojie
 * @create: 2019/08/14 15:14
 */
public class ListTest {
    public static boolean isSameElement(final List<Person> personList) {
        long start = System.currentTimeMillis();
        final String name = personList.get(0).getName();
        boolean res = personList.stream().allMatch(person -> person.getName().equals(name));
        long time = System.currentTimeMillis() - start;
        System.out.println("耗时： " + time + "is same: " + res);
        return res;
    }

    /**
     * 效率比lambda表达式效率高多了
     * @param personList
     * @return
     */
    public static boolean isSameElement2(final List<Person> personList) {
        long start = System.currentTimeMillis();
        final String name = personList.get(0).getName();
        boolean res = personList.stream().map(Person::getName).distinct().count() == 1;
        long time = System.currentTimeMillis() - start;
        System.out.println("耗时： " + time + "is same: " + res);
        return res;
    }
}
