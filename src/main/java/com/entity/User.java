package com.entity;

import lombok.Data;

@Data
public class User {
	private int id;
	private String name;
	private String pwd;
	private String gender;
	private String phoneNum;
	private String carType;
	private String buyYear;
	private String odometer;
	private String address;
	private String registTime;
}
