package com.dgit.dao;

import java.util.List;

import com.dgit.model.Post;

public interface PostDao {
	public List<Post> selectDoro(String post);
	public List<Post> selectOldDoro(String post);
}
