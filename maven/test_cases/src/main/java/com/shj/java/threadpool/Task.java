package com.shj.java.threadpool;

/**
 * @description:
 * @author: sunhaojie
 * @create: 2019/08/27 10:38
 */
public class Task implements Runnable {
    private int taskNum;

    public Task(int taskNum) {
        this.taskNum = taskNum;
    }

    @Override
    public void run() {
        System.out.println("正在执行task： " + taskNum);
        try {
            System.out.println(Thread.currentThread().getName());
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("task: " + taskNum + "执行完毕");

    }
}
