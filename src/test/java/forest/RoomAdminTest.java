package forest;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.RoomAdminDao;
import com.dgit.model.RoomAdmin;
import com.dgit.util.MySqlSessionFactory;

public class RoomAdminTest {

	@Test
	public void TestSelectListAllForest() {
		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			RoomAdminDao dao = session.getMapper(RoomAdminDao.class);

			List<RoomAdmin> roomAdmin = dao.selectRoomAllListAdmin();
			for (RoomAdmin ra : roomAdmin) {
				System.out.println(ra);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	@Test
	public void testInsertForestIntro() throws SQLException{
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			RoomAdminDao dao = session.getMapper(RoomAdminDao.class);
			RoomAdmin roomAdmin = new RoomAdmin("토끼3층", 6, 50000,"rabbit.jpg",
								"투룸식(화장실 2개)","054-774-8133",1,4);
		
			dao.insertRoomsAdmin(roomAdmin);
			
			session.commit();
		} finally {
			session.close();
		}
	}
}
