package forest;

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
}
