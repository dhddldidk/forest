package forest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class UserTest {
	
	//@Test
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
	//@Test
	public void testInsertUser(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		
			
			User user = new User();
			
			user.setuId("ddddaa");
			user.setuPassword("dddd");
			user.setuName("매미미");
			user.setuAddress("대구에대구");
			Date date = new Date();
			user.setuDate(date);
			String phone ="0101112222";
			String toStronghpone="";
			int le = phone.length()-4;
			toStronghpone += phone.substring(0, 3)+"-";
			toStronghpone +=phone.substring(3,le)+"-";
			toStronghpone += phone.substring(le,phone.length());
			
			user.setuPhone(toStronghpone);
			int tf = dao.insertUser(user);
			session.commit();
			System.out.println(tf);
			
		} finally {
			session.close();
		}
	}
	//@Test
	public void testSearchById(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		
			User user = new User();
			user.setuName("매미");
			user.setuEmail("ddddd@naver.com");
			
			User userRe = dao.searchById(user);
			System.out.println(userRe);
			
			
		} finally {
			session.close();
		}
	}
	//@Test
	public void testSelectAllUser(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		
			List<User> user = dao.selectAllUser();
			for(User u :user){
				System.out.println(u);
			}
			
		} finally {
			session.close();
		}
	}
	@Test
	public void testChooseUser(){
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
}
