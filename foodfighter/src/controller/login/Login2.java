package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MemberServiceImpl;
import member.vo.Member;

@WebServlet("/login2")
public class Login2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/source/Login2.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String tel=req.getParameter("tel");
		String address= req.getParameter("address");
		Member vo = new Member();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setName(name);
		vo.setTel(tel);
		vo.setAddress(address);
		
		MemberServiceImpl.getinstance().memberinsert(vo);
		
		resp.sendRedirect("main");
		
	}
}
