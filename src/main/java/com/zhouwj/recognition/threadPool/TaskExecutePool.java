package com.zhouwj.recognition.threadPool;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

@Configuration
@EnableAsync
public class TaskExecutePool {
    @Bean
    public Executor taskAsyncPool(){
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        //设置最大线程大小
        executor.setMaxPoolSize(10);
        //设置初始线程大小
        executor.setCorePoolSize(5);
        //设置队列长度
        executor.setQueueCapacity(60);
        //设置多长时间线程回收
        executor.setKeepAliveSeconds(25);

        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());

        executor.initialize();

        return executor;
    }
}
