package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DBManager;
import member.vo.Member;

public class MemberDao {
	static MemberDao dao = new MemberDao();
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private MemberDao() {
	}

	public static MemberDao getinstance() {
		return dao;

	}

	public Member login(String email, String pw) {
		// TODO Auto-generated method stub
		Member vo = null;
		String sql = "SELECT EMAIL,PW,NAME,TEL,ADDRESS FROM MEMBER WHERE EMAIL=? AND PW=? ";
		conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new Member();
				int idx = 0;

				vo.setEmail(rs.getString(++idx));
				vo.setPw(rs.getString(++idx));
				vo.setName(rs.getString(++idx));
				vo.setTel(rs.getString(++idx));
				vo.setAddress(rs.getString(++idx));
			}
			DBManager.close(conn, pstmt, rs);

		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		System.out.println(vo);
		return vo;
	}

	public void memberinsert(Member vo) {
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?) ";
		conn = DBManager.getConnection();

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, vo.getEmail());
			pstmt.setString(++idx, vo.getPw());
			pstmt.setString(++idx, vo.getName());
			pstmt.setString(++idx, vo.getTel());
			pstmt.setString(++idx, vo.getAddress());
			pstmt.executeQuery();
			
			DBManager.close(conn, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void delete(String id) {
		String sql = "DELETE MEMBER WHERE ID=? ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, id);
			pstmt.executeUpdate();
			DBManager.close(conn, pstmt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void update(Member vo) {
		String sql = "UPDATE MEMBER SET PW=?,NAME=?,TEL=?,ADDRESS=? WHERE ID=? ";
		conn = DBManager.getConnection();

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, vo.getPw());
			pstmt.setString(++idx, vo.getName());
			pstmt.setString(++idx, vo.getTel());
			pstmt.setString(++idx, vo.getAddress());
			pstmt.setString(++idx, vo.getEmail());
			pstmt.executeUpdate();
			DBManager.close(conn, pstmt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
