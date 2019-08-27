package com.shj.maven.list.same_ele;

import java.util.ArrayList;
import java.util.List;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        List<Person> personList = new ArrayList<>();
        for (int i = 0; i < 1000; i++) {
            Person person = new Person(i, "test", 0);
            personList.add(person);
        }

        boolean same = ListTest.isSameElement(personList);
        System.out.println("res is: " + same);

        same = ListTest.isSameElement2(personList);
        System.out.println("res is: " + same);

        for (int i = 0; i < 100; i++) {
            Person person = new Person(i, "test1", 0);
            personList.add(person);
        }

        same = ListTest.isSameElement2(personList);
        System.out.println("res is: " + same);
    }
}
