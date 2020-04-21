package com.sds.finalpj.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sds.finalpj.vo.Billboard;

@Repository
public class BillboardDao implements InterfaceDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public BillboardDao(ComboPooledDataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public ArrayList<Billboard> BillboardSelectAll() {
		
		ArrayList<Billboard> list = null;
		final String sql = "SELECT * FROM billboard";

		list = (ArrayList<Billboard>) template.query(sql,new BeanPropertyRowMapper<Billboard>(Billboard.class));

		return list;
		
	}

}
