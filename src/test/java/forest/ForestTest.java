package forest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestTest {
	/*
	 * // 전국
	 * 
	 * @Test public void TestSelectListAllForest() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListAllForest(); for (Forest f : forest)
	 * { System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * 
	 * // 서울경기
	 * 
	 * @Test public void TestSelectListSGyeonggi() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListSGyeonggi(); for (Forest f : forest)
	 * { System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 강원
	 * 
	 * @Test public void TestSelectListGangwon() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListGangwon(); for (Forest f : forest) {
	 * System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 충북
	 * 
	 * @Test public void TestSelectListChungbuk() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListChungbuk(); for (Forest f : forest) {
	 * System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 충남
	 * 
	 * @Test public void TestSelectListChungnam() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListChungnam(); for (Forest f : forest) {
	 * System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 전북
	 * 
	 * @Test public void TestSelectListJeonbuk() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListJeonbuk(); for (Forest f : forest) {
	 * System.out.println("전북"+f); } } catch (Exception e) {
	 * e.printStackTrace(); } finally { session.close(); } }
	 * 
	 * // 전남
	 * 
	 * @Test public void TestSelectListJeonnam() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListJeonnam(); for (Forest f : forest) {
	 * System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 경북
	 * 
	 * @Test public void TestSelectListGyeongbuk() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListGyeongbuk(); for (Forest f : forest)
	 * { System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 * 
	 * // 경남
	 * 
	 * @Test public void TestSelectListGyeongnam() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectListGyeongnam(); for (Forest f : forest)
	 * { System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 */

	/*
	 * //휴양림안내 //전국
	 * 
	 * @Test public void TestSelectIntroAllForest() { SqlSession session = null;
	 * 
	 * try { session = MySqlSessionFactory.openSession(); ForestDao dao =
	 * session.getMapper(ForestDao.class);
	 * 
	 * List<Forest> forest = dao.selectIntroAllForest(); for (Forest f : forest)
	 * { System.out.println(f); } } catch (Exception e) { e.printStackTrace(); }
	 * finally { session.close(); } }
	 */

	/*// 서울/경기
	@Test
	public void TestSelectIntroSGyeonggi() {
		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			ForestDao dao = session.getMapper(ForestDao.class);

			List<Forest> forest = dao.selectIntroSGyeonggi();
			for (Forest f : forest) {
				System.out.println(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// 강원
	@Test
	public void TestSelectIntroGangwon() {
		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			ForestDao dao = session.getMapper(ForestDao.class);

			List<Forest> forest = dao.selectIntroGangwon();
			for (Forest f : forest) {
				System.out.println(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	//충북
	@Test
	public void TestSelectIntroChungbuk() {
		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			ForestDao dao = session.getMapper(ForestDao.class);

			List<Forest> forest = dao.selectIntroChungbuk();
			for (Forest f : forest) {
				System.out.println(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	//충남
		@Test
		public void TestSelectIntroChungnam() {
			SqlSession session = null;

			try {
				session = MySqlSessionFactory.openSession();
				ForestDao dao = session.getMapper(ForestDao.class);

				List<Forest> forest = dao.selectIntroChungnam();
				for (Forest f : forest) {
					System.out.println(f);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
	//전북
			@Test
			public void TestSelectIntroJeonbuk() {
				SqlSession session = null;

				try {
					session = MySqlSessionFactory.openSession();
					ForestDao dao = session.getMapper(ForestDao.class);

					List<Forest> forest = dao.selectIntroJeonbuk();
					for (Forest f : forest) {
						System.out.println(f);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					session.close();
				}
			}
	//전남
	@Test
	public void TestSelectIntroJeonnam() {
		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			ForestDao dao = session.getMapper(ForestDao.class);

			List<Forest> forest = dao.selectIntroJeonnam();
			for (Forest f : forest) {
				System.out.println(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	//경북
		@Test
		public void TestSelectIntroGyeongbuk() {
			SqlSession session = null;

			try {
				session = MySqlSessionFactory.openSession();
				ForestDao dao = session.getMapper(ForestDao.class);

				List<Forest> forest = dao.selectIntroGyeongbuk();
				for (Forest f : forest) {
					System.out.println(f);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
		}*/
	//경남
			@Test
			public void TestSelectIntroGyeongnam() {
				SqlSession session = null;

				try {
					session = MySqlSessionFactory.openSession();
					ForestDao dao = session.getMapper(ForestDao.class);

					List<Forest> forest = dao.selectIntroGyeongnam();
					for (Forest f : forest) {
						System.out.println(f);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					session.close();
				}
			}
}
