package com.dgit.dao;

import com.dgit.model.User;

public interface UserDao {
	public User SelectById(String id);
}
