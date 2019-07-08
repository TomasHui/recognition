package com.zhouwj.recognition.demo;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.ResourceLoader;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MyBatisGenerator {
    ResourceLoader resourceLoader = new DefaultResourceLoader();

    ClassLoader classLoader = Thread.currentThread().getContextClassLoader();

    InputStream inputStream = classLoader.getResourceAsStream("mybatis/mybatis-config.xml");

    Reader reader = new InputStreamReader(inputStream,"UTF-8");

    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();

    SqlSessionFactory sqlSessionFactory = builder.build(reader,"dev",new Properties());

    SqlSession sqlSession =  sqlSessionFactory.openSession();



    public MyBatisGenerator() throws UnsupportedEncodingException {
    }
}
