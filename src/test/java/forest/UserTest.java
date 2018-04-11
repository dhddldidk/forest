package forest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.UserDao;
import com.dgit.util.MySqlSessionFactory;

public class UserTest {
	
	@Test
	public void testSelectAllId(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		
		/*	List<String> list = dao.SelectAllId();
			
			System.out.println(list);*/
			
		} finally {
			session.close();
		}
	}
}
