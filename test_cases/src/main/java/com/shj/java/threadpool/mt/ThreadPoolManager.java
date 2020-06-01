package com.shj.java.threadpool.mt;

import com.google.common.util.concurrent.ThreadFactoryBuilder;

import java.util.concurrent.*;

/**
 * @description: 线程池管理类，是根据xml文件来执行start -- dispose -- shutdown
 *  dispose是任务逻辑处理函数，不断向线程池中添加线程。
 * @author: sunhaojie
 * @create: 2019/08/27 15:13
 */
public class ThreadPoolManager {
    /** 线程变量设置 */
    private ThreadPoolExecutor threadPoolExecutor;
    private ExecutorService executorService;

    private int coreSize;
    private int maxSize;

    public void start() {
        ThreadFactory nameThreadFactory = new ThreadFactoryBuilder().setNameFormat("demo-pool-%d").build();
        threadPoolExecutor = new ThreadPoolExecutor(
                coreSize,
                maxSize,
                60L,
                TimeUnit.SECONDS,
                new ArrayBlockingQueue<>(400),
                nameThreadFactory
        );
        //提前建好线程
        threadPoolExecutor.prestartAllCoreThreads();
        // ExecutorService其实是threadPoolExecutor的实现类
        executorService = threadPoolExecutor;

        System.out.println("+++++====================++++");
        System.out.println("步骤一： 线程池初始化完成， 详情如下：");
        System.out.println("线程池中线程数目： " + threadPoolExecutor.getPoolSize());
        System.out.println("队列中等待执行的任务数目： " + threadPoolExecutor.getQueue().size());
        System.out.println("已执行完的任务数目： " + threadPoolExecutor.getCompletedTaskCount());
        System.out.println("+++++====================++++");
    }

    public void dispose(int taskNum, String taskText){
        executorService.submit(new ThreadTask(taskNum, taskText));
        System.out.println("+++++====================++++");
        System.out.println("步骤二： client 调用， 线程池会并发执行；");
        System.out.println("+++++====================++++");
    }

    public void shutdown() {
        executorService.shutdown();
        try {
            executorService.awaitTermination(10L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }

        System.out.println("+++++====================++++");
        System.out.println("步骤三： client 调用完成， 线程池释放资源");
        System.out.println("+++++====================++++");
    }

    public int getCoreSize() {
        return coreSize;
    }

    public void setCoreSize(int coreSize) {
        this.coreSize = coreSize;
    }

    public int getMaxSize() {
        return maxSize;
    }

    public void setMaxSize(int maxSize) {
        this.maxSize = maxSize;
    }
}
