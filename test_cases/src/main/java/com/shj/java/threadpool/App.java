package com.shj.java.threadpool;

import com.google.common.util.concurrent.ThreadFactoryBuilder;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * @description:
 * @author: sunhaojie
 * @create: 2019/08/27 10:42
 */
public class App {
    public static void main(String[] args) {
        ThreadFactory nameThreadFactory = new ThreadFactoryBuilder().setNameFormat("demo-pool-%d").build();
        ThreadPoolExecutor executor = new ThreadPoolExecutor(
                5,
                10,
                200,
                TimeUnit.MILLISECONDS,
                new ArrayBlockingQueue<Runnable>(5),
                nameThreadFactory
        );
        executor.prestartAllCoreThreads();

        for (int i = 0; i < 15; i++) {
            Task task = new Task(i);
            executor.execute(task);
            System.out.println("线程池中线程数目： " + executor.getPoolSize());
            System.out.println("队列中等待执行的任务数目： " + executor.getQueue().size());
            System.out.println("已执行完的任务数目： " + executor.getCompletedTaskCount());
        }
    }
}
