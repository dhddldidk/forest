package com.dgit.dao;

import java.util.List;
import java.util.Map;

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
	
	public List<Question> selectChooseQuestion(Map<String,Object> map);
	
	public int updateAnswerQuState(Question q);
	
	public int deleteAnswerQ(int no);
	
	public List<Question> selectQuestionState(int no);
}
