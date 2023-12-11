package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		doPost(req,resp);	
}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8"); //ToDo.....
		
		String id=req.getParameter("id");
		int userId=Integer.parseInt(id);//把id變爲Integer型
		
		 String name = req.getParameter("name");
		 String pwd = req.getParameter("pwd");
		 String gender = req.getParameter("gender");
		 String phoneNum = req.getParameter("phoneNum");
		 String carType = req.getParameter("carType");
		 String buyYear = req.getParameter("buyYear");
		 String odometer = req.getParameter("odometer");
		 String address = req.getParameter("address");
		 String registTime = req.getParameter("registTime");
		 
		 UserDao ud= new UserDaoImpl();
		 if(ud.update(userId, name, pwd, gender, phoneNum, carType, buyYear, odometer, address,registTime)) {
			 req.setAttribute("messageSuccess", "更新成功しました");
			 req.getRequestDispatcher("/Searchall").forward(req, resp);
		 }else {
			 resp.sendRedirect("index.jsp");
		 }
		 
	}
}