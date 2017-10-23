package com.aish.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.ProductDao;
import com.model.Product;

public class ProductTest {

static ProductDao productDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.*");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		productDao=(ProductDao)configApplnContext.getBean("productDao");
	}
	

	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(1002);
		product.setProductName("Samsung J5");
		product.setProductDesc("Mobile with NFC and 4G");
		product.setStock(10);
		product.setPrice(7000);
		product.setCatId(1001);
		product.setSupplierId(1001);
		
		assertTrue("Problem in Insertion",productDao.addProduct(product));
		
	}
	
	

}
