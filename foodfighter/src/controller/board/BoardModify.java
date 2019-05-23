package controller.board;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RespectBinding;

import board.dao.BoardDao;
import board.service.BoardServiceImpl;
import board.vo.BoardVo;
import member.vo.Member;

@WebServlet("/boardModify")
public class BoardModify extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int boardIdx = Integer.parseInt(req.getParameter("idx"));
		BoardVo board = BoardServiceImpl.getinstance().get(boardIdx);
		req.setAttribute("vo", board);

		req.getRequestDispatcher("source/board/write.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int boardIdx = Integer.parseInt(req.getParameter("idx"));
		if (req.getSession() != null && req.getSession().getAttribute("member") != null) {
			String title = req.getParameter("title");
			String cont = req.getParameter("cont");

			BoardVo vo = new BoardVo();
			vo.setTitle(title);
			vo.setCont(cont);
			vo.setBoardidx(boardIdx);
			new BoardDao().modify(vo);
		}
		resp.sendRedirect("boardView?idx=" + boardIdx);
	}
}