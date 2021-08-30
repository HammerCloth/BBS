package com.syx.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

/**
 * @author:syx
 * @date:2021/8/30 16:21
 * @version:v1.0
 */
//spring会扫描到service注解的类，并把这些类纳入进spring容器管理，
@Service
public class SpringTest {
    @Test
    public void testSpring(){
//        ApplicationContext容器是spring中较为高级的容器，可以加载配置文件中定义的Bean
//        并将所有的bean集中在一起，当有请求的时候分配bean
        ClassPathXmlApplicationContext applicationContext =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        SpringTest springTest = (SpringTest) applicationContext.getBean("springTest");
        springTest.sayHello();
    }

    public void sayHello(){
        System.out.println("hello syx");
    }

}
