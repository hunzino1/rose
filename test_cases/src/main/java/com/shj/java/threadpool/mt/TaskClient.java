package com.shj.java.threadpool.mt;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/**
 * @description: 业务逻辑，调用线程池进行多线程处理， 支持传入参数
 * @author: sunhaojie
 * @create: 2019/08/27 15:34
 */
@Service
public class TaskClient {
    @Resource(name = "threadPoolManager")
    private ThreadPoolManager threadPoolManager;

    public void clientTask(int taskNum, String taskText) {
       threadPoolManager.dispose(taskNum, taskText);
    }
}
