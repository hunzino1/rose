package com.shj.maven.list.same_ele;

/**
 * @description: 测试list元素
 * @author: sunhaojie
 * @create: 2019/08/14 15:12
 */
public class Person {
    private int age;
    private String name;
    private int sex;

    public Person(int age, String name, int sex) {
        this.age = age;
        this.name = name;
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Person{" +
                "age=" + age +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                '}';
    }
}
