package controller.board;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.vo.BoardVo;
import member.vo.Member;

@WebServlet("/boardDelete")
public class BoardDelete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getSession() != null && req.getSession().getAttribute("member") != null) {
			int boardIdx = Integer.parseInt(req.getParameter("idx"));

			BoardDao.getinstance().delete(boardIdx);
		}
		resp.sendRedirect("boardList");
	}

}
