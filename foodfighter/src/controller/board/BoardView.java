package controller.board;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import board.dao.BoardDao;
import board.service.BoardServiceImpl;
import board.vo.BoardVo;

@WebServlet("/boardView")
public class BoardView extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8"); 
		int boardIdx = Integer.parseInt(req.getParameter("idx"));
		BoardVo board  = BoardServiceImpl.getinstance().get(boardIdx);
		
		req.setAttribute("vo", board);
		req.getRequestDispatcher("source/board/view.jsp").forward(req, resp);
	}

}
