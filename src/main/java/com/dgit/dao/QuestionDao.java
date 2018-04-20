package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.dgit.model.Question;

public interface QuestionDao {
	public List<Question> selectAllQuestion(RowBounds rowbounds);
	
	public Question selectAllQuestionLimit(Question q);
	
	public int selectQCount();
	
	public int insertQuestion(Question q);
	
	public void updateQCount(Question q);
	
	public int deleteQuestion(String qNo);
	
	public int updateQuestion(Question q);
}
