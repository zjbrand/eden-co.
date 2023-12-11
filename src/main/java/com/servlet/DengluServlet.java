package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

@WebServlet("/DengluServlet")
public class DengluServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		doPost(req,resp);	
}
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		
		 req.setCharacterEncoding("utf-8");
		 
		 String username=req.getParameter("username");
		 String pwd=req.getParameter("pwd");
		 
		 UserDao ud =new UserDaoImpl();
		
		 if(ud.login(username, pwd)) {
			 req.setAttribute("messageSuccess", "いらっしゃいませ　"+username+"　様");
			 req.setAttribute("uname", username);
			 req.setAttribute("pwd","パスワードは厳重に管理してください："+pwd);
			 
			 req.getRequestDispatcher("Success.jsp").forward(req, resp);
			 
		 }else {
			 resp.sendRedirect("index.jsp");
		 }

		
	 }
}
