package com.dgit.dao;

import com.dgit.model.User;

public interface UserDao {
	public User SelectById(String id);
	public int insertUser(User user);
	public User searchById(User user);
	public User searchByPassword(User user);
	public void updateUserPassword(User user);
	public int updateUser(User user);
}
