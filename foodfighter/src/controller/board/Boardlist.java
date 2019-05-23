package controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.service.BoardServiceImpl;
import board.vo.BoardVo;

@WebServlet("/boardList")
public class Boardlist extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<BoardVo> list = BoardServiceImpl.getinstance().select();
		req.setAttribute("list", list);
		req.getRequestDispatcher("source/board/Board.jsp").forward(req, resp);
	}
}
