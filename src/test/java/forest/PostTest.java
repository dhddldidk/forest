package forest;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.PostDao;
import com.dgit.model.Post;
import com.dgit.util.MySqlSessionFactory;

public class PostTest {
	
	@Test
	public void TestSelectDoro(){
		SqlSession session = null;
		try {
			session = MySqlSessionFactory.openSession();
			PostDao dao = session.getMapper(PostDao.class);		
			
			String addr = "동구신서동11-5";
			
			String st ="%";
			for(int i =1;i<addr.length();i++){
				st+=addr.substring(--i,++i)+"%";		
				/*if(i==addr.length()-1){
					st+=addr.substring(i,++i);
				}*/
			}
			st =  st.replace(" ", "");
			List<Post> list = dao.selectDoro(st);	
			List<Post> oldlist =  new ArrayList<>();dao.selectOldDoro(st);
			if(list.size()==0){
				System.out.println("없음");
				oldlist = dao.selectOldDoro(st);
				if(oldlist.size()==0){
					System.out.println("없음");
				}else{
					for(Post p : oldlist){
						System.out.println(p);
					}
				}
			}else{
				
				for(Post p : list){
					System.out.println(p);
				}
			}
			
		} finally {
			session.close();
		}
	}
}
