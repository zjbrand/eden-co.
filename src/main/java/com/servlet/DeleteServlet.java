package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String id = req.getParameter("id");
		int userId = Integer.parseInt(id);

		UserDao ud = new UserDaoImpl();
		if (ud.delete(userId)) {
			req.setAttribute("messageSuccess", "削除されました");
			req.getRequestDispatcher("/Searchall").forward(req, resp);
		} else {
			resp.sendRedirect("index.jsp");
		}
	}
}