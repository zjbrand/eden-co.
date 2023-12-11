package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

@WebServlet("/ZhuceServlet")
public class ZhuceServlet extends HttpServlet {
/*从HttpServlet類中繼承能夠讀取Http網頁的doPost方法，與doGet方法比可以隱藏數字
	發出對請求，調用對象為req,接受服務器應答；如果出現異常抛出服務器及輸入輸出
	錯誤
*/
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		doPost(req,resp);	
}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			 throws ServletException, IOException {
		
		 req.setCharacterEncoding("utf-8");
		 
		 String name = req.getParameter("name");
		 String pwd = req.getParameter("pwd");
		 String gender = req.getParameter("gender");
		 String phoneNum = req.getParameter("phoneNum");
		 String carType = req.getParameter("carType");
		 String buyYear = req.getParameter("buyYear");
		 String odometer = req.getParameter("odometer");
		 String address = req.getParameter("address");
				 
		 Date date=new Date();
			SimpleDateFormat format=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String registTime=format.format(date);
		 
		 User user=new User();
		 //將網頁收集的參數傳給User
		 user.setName(name);
		 user.setPwd(pwd);
		 user.setGender(gender);
		 user.setPhoneNum(phoneNum);
		 user.setCarType(carType);
		 user.setBuyYear(buyYear);
		 user.setOdometer(odometer);
		 user.setAddress(address);
		 user.setRegistTime(registTime);
		 	 
		 
		 UserDao ud=new UserDaoImpl();
		 
		 if(ud.register(user)) {
			 req.setAttribute("username",name);
			 req.getRequestDispatcher("loginPage.jsp").forward(req, resp);
		 }else {
			 resp.sendRedirect("index.jsp");
		 }
	 }
	 
}

