package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.dgit.model.User;

public interface UserDao {
	public User SelectById(String id);
	public int insertUser(User user);
	public User searchById(User user);
	public User searchByPassword(User user);
	public void updateUserPassword(User user);
	public int updateUser(User user);
	public List<User> selectAllUser();
	public List<User> selectAllUserLimit(RowBounds rowbounds);
}
