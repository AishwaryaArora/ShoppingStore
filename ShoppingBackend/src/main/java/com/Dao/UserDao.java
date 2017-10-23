package com.Dao;

import java.util.List;

import com.model.User;

public interface UserDao {
	
	public boolean insertUser(User user);
	public List<User> retrieveUser();
	public boolean deleteUser(User user);
	public User getUser(int catId);
	public boolean updateUser(User user);

}
