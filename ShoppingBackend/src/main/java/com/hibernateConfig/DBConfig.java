package com.hibernateConfig;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.Dao.UserDao;
import com.DaoImpl.UserDaoImpl;
import com.model.Category;
import com.model.Product;
import com.model.User;


@Configuration
@ComponentScan("com.hibernateConfig")
@EnableTransactionManagement
public class DBConfig {	
	
	@Bean(name="dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		System.out.println("Connection Established");
		return dataSource;

	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.setProperty("hibernate.hbm2ddl.auto","update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		/*properties.put("hbm2ddl.auto", "create");
		properties.put("hbm2ddl.auto", "update");*/
		System.out.println("Hibernate Properties");
		return properties;

	}
	
	@Autowired
	@Bean(name="userDao")
	public UserDao getUserData(SessionFactory sessionFactory)
	{
		return new UserDaoImpl(sessionFactory);
	}
	
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory() //DataSource dataSource
	{
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(getDataSource());//dataSource
		sessionBuilder.addProperties(getHibernateProperties());
		//sessionBuilder.scanPackages("com.hibernateConfig");
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		//sessionBuilder.addAnnotatedClass(User.class);
		//@SuppressWarnings("deprecation")
		SessionFactory sessionFactory=sessionBuilder.buildSessionFactory();
		System.out.println("Session Factory Object Created");
		return sessionFactory;		
	}

	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) 
	{
	HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
	System.out.println("Transaction");
	return transactionManager;
	}
}
