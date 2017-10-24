package com.DaoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.UserDao;
import com.model.Category;
import com.model.User;
@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	/*public boolean insertUser(User user)
	{
		Session session=sessionFac.openSession();
		session.beginTransaction();
		session.persist(user);
		session.getTransaction().commit();
		return true;
		
	}*/
	
	@Transactional
	public boolean insertUser(User user) 
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
		session.save(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	
	
	
	
	
	
	
	public List<User> retrieveUser() {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean deleteUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}
	public User getUser(int catId) {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Autowired
	public UserDaoImpl(SessionFactory sessionFactory)
	{
		super();
		sessionFactory=sessionFactory;
	}
	
	/*public List<User> retrieve()
	{
		Session session=sessionFac.openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> li=session.createQuery("from User").list();
		session.getTransaction().commit();
		return li;
	}*/

}