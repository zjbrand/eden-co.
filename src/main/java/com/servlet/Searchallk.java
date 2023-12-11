package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

@WebServlet("/Searchallk")
public class Searchallk extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
		UserDao ud = new UserDaoImpl();
		List<User> userAll=ud.getUserAll();
		req.setAttribute("userAll", userAll);
		req.getRequestDispatcher("/showallk.jsp").forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
		 	
	}
	
	
}