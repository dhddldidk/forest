package forest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.AnswerDao;
import com.dgit.dao.QuestionDao;
import com.dgit.dao.UserDao;
import com.dgit.model.Question;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class QuestionTest {
	//@Test
	public void testSelectAllQ(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			QuestionDao dao = session.getMapper(QuestionDao.class);		
			
			
			
			
		} finally {
			session.close();
		}
	}
	//@Test
	public void testinsertAllQ(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			QuestionDao dao = session.getMapper(QuestionDao.class);		
			Date date = new Date();
			
			
			
			Question question = new Question(0, "dd", "<pre></pre>", "ddddd", 0, 0, date, new User("test11"));
			int i = dao.insertQuestion(question);
			System.out.println(i);
			
		} finally {
			session.close();
		}
	}
	//@Test
	public void testChooseQ(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		
			Map<String,Object> map = new HashMap<>();
			map.put("searchBy", "uId");
			map.put("uId", "a");
			List<User> user = dao.selectChooseUser(map);
			for(User u:user){
				System.out.println(u);
			}
			
		} finally {
			session.close();
		}
	
	}
	//@Test
	public void testselectAllAn(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			AnswerDao dao = session.getMapper(AnswerDao.class);		
			List<String> st = dao.selectAnswer();
			for(String s:st){
				System.out.println(s);
			}
			
		} finally {
			session.close();
		}
	
	}
	@Test
	public void testselectQState(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			QuestionDao dao = session.getMapper(QuestionDao.class);		
			List<Question> q = dao.selectQuestionState(0);
			for(Question s:q){
				System.out.println(s);
			}
			
		} finally {
			session.close();
		}
	
	}
}
