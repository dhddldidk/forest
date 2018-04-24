package com.dgit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.dgit.model.User;

public interface UserDao {
	public User SelectById(String id);
	public User SelectByIdWhere(User user);
	public int insertUser(User user);
	public User searchById(User user);
	public User searchByPassword(User user);
	public void updateUserPassword(User user);
	public int updateUser(User user);
	public List<User> selectAllUser();
	public List<User> selectAllUserLimit(RowBounds rowbounds);
	
	public List<User> selectChooseUser(Map<String,Object> map);
	
	public void deleteUser(User user);
}
