package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;
import com.util.DBconn;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean register(User user) {
		boolean flag = false;
		DBconn.init();

		String sql = "INSERT INTO carinfo VALUES"
				+ "(null,'" + user.getName() + "',"
				+ "'" + user.getPwd() + "',"
				+ "'" + user.getGender() + "',"
				+ "'" + user.getPhoneNum() + "',"
				+ "'" + user.getCarType() + "',"
				+ "'" + user.getBuyYear() + "',"
				+ "'" + user.getOdometer() + "',"
				+ "'" + user.getAddress() + "',"
				+ "'" + user.getRegistTime() + "')";
		/*SQL接收的字符串sql= INSERT INTO carinfo VALUES(NULL,
		'user','password','gender','phoneNum','cartype')
		*/

		int i = DBconn.addUpdDel(sql);

		if (i > 0) {
			flag = true;
		}

		//返回值確定數據庫是否讀寫成功
		return flag;
	}

	@Override
	public boolean login(String name, String pwd) {

		boolean flag = false;
		try {
			String sql = "SELECT * FROM carinfo WHERE name='" + name + "'and password='" + pwd + "'";
			DBconn.init();
			
		//	ResultSet rs = DBconn.selectSql(sql);

			ResultSet rs=DBconn.selectSql(sql);
			
			while (rs.next()) {
				if (rs.getString("name").equals(name)
						&&
						rs.getString("password").equals(pwd)) {
					flag = true;
				}
			}
			DBconn.closeConn();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;

	}

	@Override
	public List<User> getUserAll() {
		List<User> list=new ArrayList<User>();
		
		DBconn.init();
		ResultSet rs=DBconn.selectSql("SELECT * FROM carinfo");
		try {
			while(rs.next()) {
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPwd(rs.getString("password"));
				user.setGender(rs.getString("gender"));
				user.setPhoneNum(rs.getString("phoneNum"));
				user.setCarType(rs.getString("carType"));
				user.setBuyYear(rs.getString("buyYear"));
				user.setOdometer(rs.getString("odometer"));
				user.setAddress(rs.getString("address"));
				user.setRegistTime(rs.getString("registTime"));
				list.add(user);
			}
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
		
		
	}
	@Override
	public boolean update(int id, String name, String pwd,String gender, String phoneNum,
			String carType, String buyYear, String odometer, String address,String registTime) {
		boolean flag = false;
		DBconn.init();

		String sql = "update carinfo set name='"+name
				+ "',password='"+pwd
				+ "',gender='"+gender
				+ "',phoneNum='"+phoneNum
				+ "',carType='"+carType
				+ "',buyYear='"+buyYear
				+ "',odometer='"+odometer
				+ "',address='"+address
				+"',registTime='"+registTime+"' where id="+id;
		
		int i = DBconn.addUpdDel(sql);
		if(i>0) {
			flag=true;
		}
		DBconn.closeConn();
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		DBconn.init();
		String sql="delete from carinfo where id="+id;
		int i=DBconn.addUpdDel(sql);
		if(i>0) {
			flag=true;
		}
		DBconn.closeConn();
		return flag;
	}

	
}
