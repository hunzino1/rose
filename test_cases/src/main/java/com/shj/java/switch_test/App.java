package com.shj.java.switch_test;

/**
 * @description: switch不支持null或者空， 初衷是为了防止这块代码永远执行不到
 *                  其实感觉不是太方便
 * @author: sunhaojie
 * @create: 2019/08/15 10:37
 */
public class App {
    public static void main(String[] args) {
        String test = null;
        switch (test) {
            case "1":
                System.out.println("1");
                break;
            default:
                System.out.println("null");
        }
    }
}
