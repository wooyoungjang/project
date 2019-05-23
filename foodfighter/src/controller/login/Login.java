package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.MemberServiceImpl;
import member.vo.Member;

@WebServlet("/login")
public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/source/Login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		Member vo = MemberServiceImpl.getinstance().login(email, pw);
		
		HttpSession session = req.getSession();
		String member = (String) session.getAttribute("email");

		req.setAttribute("merber", member);
		if (vo == null) {
			resp.sendRedirect("login?message=fail");

		} else {
			session.setAttribute("member", vo);
			resp.sendRedirect("main");

		}
	}
}
