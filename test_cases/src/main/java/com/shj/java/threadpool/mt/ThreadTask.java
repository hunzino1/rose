package com.shj.java.threadpool.mt;

/**
 * @description: 真正的业务处理线程
 *  之前把for (int i = 0; i < 10000000; i++) 写在外部了，那就是串行执行啊， 见App.java
 *  真正的使用方法是，可以传递参数进来，run中包含是并发执行的部分，即密集型操作
 *  而for写在外面，执行起来没任何意义了
 * @author: sunhaojie
 * @create: 2019/08/27 15:17
 */
public class ThreadTask implements Runnable {

    // 传递变量
    private int taskNum;
    private String taskText;

    public ThreadTask(int taskNum, String taskText) {
        this.taskNum = taskNum;
        this.taskText = taskText;
    }

    @Override
    public void run() {
        /** 当前线程 */
        String curThreadName = Thread.currentThread().getName();
        for (int i = 0; i < 10000000; i++) {
            runTask(curThreadName, i, taskText + i);

        }
    }

    private void runTask(String threadName, int taskNum, String taskText) {
        System.out.println("当前线程名字： " + threadName + ", 任务序号为： " + taskNum + ", 任务内容为： " + taskText);
    }

}
