package com.shj.java.threadpool.mt;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @description:
 * @author: sunhaojie
 * @create: 2019/08/27 15:34
 */
public class App {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
        TaskClient client = (TaskClient) context.getBean("taskClient");

        long start = System.currentTimeMillis();
        client.clientTask(0, "task");
        long time = System.currentTimeMillis() - start;
        System.out.println("耗时： " + time);

        /**
         * 这样仍是串行执行，对java多线程的理解要准确
         * 尽管内部使用了线程池和多线程，但是外部是串行执行啊
         */
//        for (int i = 0; i < 10000000; i++) {
//            client.clientTask(0, "task");
//        }
    }
}
