package forest;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.QuestionDao;
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
			RowBounds rw = new RowBounds(0,6);
			List<Question> q = dao.selectAllQuestionLimit(rw);
			for(Question qq:q){
				System.out.println(qq);
			}
			
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
}
