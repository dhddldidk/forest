package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.dgit.model.Question;

public interface QuestionDao {
	public List<Question> selectAllQuestion();
	
	public List<Question> selectAllQuestionLimit(RowBounds rowbounds);
}
