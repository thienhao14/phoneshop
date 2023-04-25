package com.example.phoneshop.model;

import java.sql.Date;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer id;
	@Column 
	private String username;
	@Column
	private String password;
	@Column
	private String email;
	@Column
	private String name;
	@Column(name="activeflag")
	private Integer activeFlag;
	@Column(name="createdate")
	private Date createDate;
	@Column(name="updatedate")
	private Date updateDate;
	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		init();
		
	}
	
	public ArrayList<User> init(){
		ArrayList<User> users = new ArrayList();
		users.add(new User());
		return users;
	}
	
	public User(String username, String name, String password, String email) {
		super();
		this.username = username;
		this.name = username;
		this.password = password;
		this.email = email;
	}



	public User(Integer id, String username, String password, String email, String name, Integer activeFlag,
			Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.name = name;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	
	public User() {
		super();
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(Integer activeFlag) {
		this.activeFlag = activeFlag;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdatedate() {
		return updateDate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updateDate = updatedate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email + ", name="
				+ name + ", activeFlag=" + activeFlag + ", createDate=" + createDate + ", updateDate=" + updateDate
				+ "]";
	}
	
	
}
