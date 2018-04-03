package com.dgit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dgit.jdbc.JdbcUtil;
import com.dgit.model.Message;
import com.dgit.model.Users;

public class UserDao {
	private static final UserDao instance = new UserDao();
	
	public static UserDao getInstance(){
		return instance;
	}

	private UserDao() {}
	
	public int insert(Connection conn, Message msg) throws SQLException{
		PreparedStatement pstmt = null;
		String sql = "insert into guestbook_message"
				+ "(guest_name, password, message) values (?,?,?)";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, msg.getGuestName());
			pstmt.setString(2, msg.getPassword());
			pstmt.setString(3, msg.getMessage());
			return pstmt.executeUpdate();
		}finally{
			JdbcUtil.close(pstmt);
		}
	}
	
	public int update(Connection conn, Message msg) throws SQLException{
		PreparedStatement pstmt = null;
		String sql = "update guestbook_message set message=?, guest_name=?, password=? where message_id=?";
				
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, msg.getMessage());
			pstmt.setString(2, msg.getGuestName());
			pstmt.setString(3, msg.getPassword());
			pstmt.setInt(4, msg.getId());
			return pstmt.executeUpdate();
		}finally{
			JdbcUtil.close(pstmt);
		}
	}
	
	public int delete(Connection conn, Message msg) throws SQLException{
		PreparedStatement pstmt = null;
		String sql = "delete from guestbook_message where password=?";
				
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, msg.getPassword());
			return pstmt.executeUpdate();
		}finally{
			JdbcUtil.close(pstmt);
		}
	}
	
	public Users selectOne(Connection conn, Users user) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			String sql = "select * from forest where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			rs = pstmt.executeQuery();
			if(rs.next()){
				Users u = new Users();
				u.setId(rs.getString("id"));
				u.setPw(rs.getString("pw"));
				u.setName(rs.getString("name"));
				return u;
			}
			return null;
		}finally{
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Message> selectList(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			String sql = "select * from guestbook_message order by message_id desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				List<Message> list = new ArrayList<>();
				do{
					Message msg = new Message();
					msg.setId(rs.getInt("message_id"));
					msg.setGuestName(rs.getString("guest_name"));
					msg.setPassword(rs.getString("password"));
					msg.setMessage(rs.getString("message"));
					list.add(msg);
				}while(rs.next());
				
				return list;
			}
		}finally{
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return null;
	}
	
}
