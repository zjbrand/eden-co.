package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDao {
	public boolean login(String username,String pwd);
	  //暗証番号と名前,參數名稱沒關係；
	  public boolean register(User user);//注册
	  
	  public List<User> getUserAll();//返回用戶信息集合 getUserAll名稱自定義
	  
	  public boolean delete(int id);
	  
	  public boolean update(int id,String name,String pwd,
			  String gender,String phoneNum,String carType,
			  String buyYear,String odometer,String address,String registTime);
}
