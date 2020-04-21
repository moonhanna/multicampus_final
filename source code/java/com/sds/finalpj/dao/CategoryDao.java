/*
 package com.sds.finalpj.dao;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mchange.v2.c3p0.ComboPooledDataSource;


public class CategoryDao implements InterfaceDao {
	
	private JdbcTemplate template;
	
	@Autowired
	public CategoryDao(ComboPooledDataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public ArrayList<String> SelectCategory() {
		ArrayList<String> list = null;
		final String sql = "SELECT ADCATEGORYNAME FROM ADCATEGORY GROUPBY ADCATEGORYNAME";
		
		list = (ArrayList<String>) template.query(sql,new BeanPropertyRowMapper<String>(String.class));
		
		return list;
	}
}
*/
