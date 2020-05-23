package com.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.auth.dao.AuthDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");

		//if (username.equals("raghav") && pwd.equals("Test@123")) {
	
		AuthDao dao = new AuthDao();
				
		try {
						
			if(dao.Validate(username, pwd)) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("welcome.jsp");
			} else {
				response.sendRedirect("login.jsp");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
