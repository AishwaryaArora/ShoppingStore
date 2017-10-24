package com.aish.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.UserDao;
import com.model.User;

public class UserTest {

static UserDao userDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.*");
		configApplnContext.refresh();		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");		
		userDao=(UserDao)configApplnContext.getBean("userDao");
	}
	
	//@Ignore
	@Test
	public void insertUserTest()
	{
		User user=new User();
		user.setName("aish");
		user.setPassword("12345");
		user.setEmail("aish@gmail.com");	
		assertTrue(userDao.insertUser(user));
	}

}
