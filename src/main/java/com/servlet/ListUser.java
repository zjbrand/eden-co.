package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDaoPage;
import com.entity.User;

@WebServlet("/ListUser")
public class ListUser extends HttpServlet {

	public ListUser() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		doPost(req,resp);	
}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int pageNo=1;
		UserDaoPage userdao=new UserDaoPage();
		List<User> lists = new ArrayList<User>();
		String pageno=req.getParameter("pageNos");
		if(pageno !=null) {
			pageNo=Integer.parseInt(pageno);
		}
		lists= userdao.listUser(pageNo);
//		int recordCount=userdao.getPage();
		req.setAttribute("total", userdao.getPage());
		req.setAttribute("listss", lists);
		req.setAttribute("recordCount", pageNo);
		req.getRequestDispatcher("userlist.jsp").forward(req, resp);
	}
	
		
}
