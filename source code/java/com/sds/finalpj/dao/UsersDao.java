package com.sds.finalpj.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sds.finalpj.vo.Adcategory;
import com.sds.finalpj.vo.Users;

@Repository
public class UsersDao implements InterfaceDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public UsersDao(ComboPooledDataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public Users userSelect(String userid) {
		
		Users user = null;
		final String sql = "SELECT * FROM users WHERE userid = ?";
		
		user = template.queryForObject(sql, new Object[] {userid}, new BeanPropertyRowMapper<Users>(Users.class));

		return user;
	}

	@Override
	public ArrayList<Users> userSelectAll() {
	
		ArrayList<Users> list = null;
		final String sql = "SELECT * FROM users";
		
		list = (ArrayList<Users>) template.query(sql,new BeanPropertyRowMapper<Users>(Users.class));
		
		return list;
	}

	@Override
	public Adcategory UserInterestSelect(int adcategoryno) {
		
		Adcategory userinterest = null;
		final String sql = "SELECT * FROM adcategory WHERE adcategoryno = ?";
		
		userinterest = template.queryForObject(sql, new Object[] {adcategoryno}, new BeanPropertyRowMapper<Adcategory>(Adcategory.class));
	
		return userinterest;

	}

	@Override
	public ArrayList<Adcategory> interestSelectAll() {
		
		ArrayList<Adcategory> list = null;
		final String sql = "SELECT * FROM adcategory";
		
		list = (ArrayList<Adcategory>) template.query(sql,new BeanPropertyRowMapper<Adcategory>(Adcategory.class));
		
		return list;
	}

}
