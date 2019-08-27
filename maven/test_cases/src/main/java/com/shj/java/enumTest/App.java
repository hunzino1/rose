package com.shj.java.enumTest;

/**
 * @description:
 * PaySubSceneEnum.REFUND_LOAN 是一个实例对象，枚举的实例；
 * .name() 是一个字符串
 * @author: sunhaojie
 * @create: 2019/08/20 17:47
 */
public class App {
    public static void main(String[] args) {
        System.out.println(PaySubSceneEnum.REFUND_LOAN.equals("REFUND_LOAN"));
        System.out.println(PaySubSceneEnum.REFUND_LOAN.name().equals("REFUND_LOAN"));
        System.out.println(PaySubSceneEnum.REFUND_LOAN);
        System.out.println(PaySubSceneEnum.REFUND_LOAN.name());
        System.out.println(PaySubSceneEnum.REFUND_LOAN.name().equals(PaySubSceneEnum.REFUND_LOAN));
        System.out.println(PaySubSceneEnum.REFUND_LOAN.getClass().getName());
    }
}
