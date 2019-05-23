package board.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.vo.BoardVo;
import common.DBManager;
import member.dao.MemberDao;

public class BoardDao {
	static BoardDao dao = new BoardDao();
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public static BoardDao getinstance() {
		return dao;

	}

	public List<BoardVo> select() {
		String sql = "SELECT * FROM(\r\n" + "SELECT ROWNUM RN, BOARDIDX,TITLE,CONT,\r\n" + "REGDATE,EMAIL\r\n"
				+ "FROM BOARD\r\n" + "WHERE ROWNUM <=20 \r\n" + "ORDER BY RN DESC\r\n" + ")\r\n" + "WHERE RN >0";
		BoardVo vo = null;

		List<BoardVo> list = new ArrayList<>();
		conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new BoardVo();
				vo.setBoardidx(rs.getInt("BOARDIDX"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setCont(rs.getString("CONT"));
				vo.setEmail(rs.getString("EMAIL"));
				vo.setRegdate(rs.getString("REGDATE"));
				list.add(vo);
			}
			conn.close();
			pstmt.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public BoardVo get(int boardIdx) {
		String sql = "SELECT ROWNUM RN, BOARDIDX,TITLE,CONT,\r\n" + "REGDATE,EMAIL \r\n" + "FROM BOARD\r\n"
				+ "WHERE BOARDIDX=?";
		BoardVo vo = null;
		List<BoardVo> list = new ArrayList<>();
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardIdx);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new BoardVo();
				vo.setBoardidx(rs.getInt("BOARDIDX"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setCont(rs.getString("CONT"));
				vo.setRegdate(rs.getString("REGDATE"));
				vo.setEmail(rs.getString("EMAIL"));
				list.add(vo);
			}
			conn.close();
			pstmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	public BoardVo write(BoardVo vo) {
		String sql = "INSERT INTO BOARD(BOARDIDX,TITLE,CONT,Email)VALUES(SEQ_BOARD.NEXTVAL,\r\n" + " ? , ? , ?)";
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, vo.getTitle());
			pstmt.setString(++idx, vo.getCont());
			pstmt.setString(++idx, vo.getEmail());
			pstmt.executeUpdate();
			DBManager.close(conn, pstmt);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	public void modify(BoardVo vo) {
		String sql = "UPDATE BOARD SET TITLE = ?, CONT = ? WHERE BOARDIDX = ? ";
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, vo.getTitle());
			pstmt.setString(++idx, vo.getCont());
			pstmt.setInt(++idx, vo.getBoardidx());
			pstmt.executeUpdate();
			DBManager.close(conn, pstmt);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void delete(int boardidx) {
		String sql = "DELETE BOARD WHERE BOARDIDX = ?";
		Connection conn = DBManager.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardidx);
			pstmt.executeUpdate();
			pstmt.close();
			DBManager.close(conn, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
