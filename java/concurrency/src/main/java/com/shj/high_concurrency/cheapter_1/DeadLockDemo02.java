package com.shj.high_concurrency.cheapter_1;

import java.util.concurrent.locks.Lock;

/**
 * 很简单的原理，不要执行
 */
public class DeadLockDemo02 {
    private static String A = "A";
    private static String B = "B";

    public static void main(String[] args) {
        new DeadLockDemo02().deadLock();
    }
    private void deadLock() {
        Thread t1 = new Thread(new Runnable() {
            @Override
            public void run() {
                synchronized (A) {
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    /**
                     * 线程A等待获取线程B的锁
                     */
                    synchronized (B) {
                        System.out.println("1");
                    }
                }
            }
        });
        Thread t2 = new Thread(new Runnable() {
            @Override
            public void run() {
                synchronized (B) {
                    /**
                     * 线程B等待获取线程A的锁
                     */
                    synchronized (A) {
                        System.out.println("2");
                    }
                }
            }
        });
        t1.start();
        t2.start();
    }
}
