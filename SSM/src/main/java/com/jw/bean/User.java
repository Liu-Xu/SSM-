package com.jw.bean;

import java.io.Serializable;

import com.jw.common.Pager;

public class User extends Pager implements Serializable {
	private static final long serialVersionUID = 4083196551464776912L;

	private String id;
	private String name;
	private Integer age;
	private String sex;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
