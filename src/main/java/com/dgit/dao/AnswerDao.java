package com.dgit.dao;

import java.util.List;

import com.dgit.model.Answer;

public interface AnswerDao {
	public int updateAnswer(Answer answer);
	public int insertAnswer(Answer answer);
	public List<String> selectAnswer();
	
	public int deleteAnswer(int no);
	

}
