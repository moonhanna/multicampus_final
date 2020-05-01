package com.sds.finalpj.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sds.finalpj.vo.Product;

@Repository
public class ProductDao implements InterfaceDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public ProductDao(ComboPooledDataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public Product ProductSelect(int productno) {
		
		Product product = null;
		final String sql = "SELECT * FROM product WHERE productno = ?";
		
		product = template.queryForObject(sql, new Object[] {productno}, new BeanPropertyRowMapper<Product>(Product.class));

		return product;
	}
	
	@Override
	public Product ProductSelectName(String productname) {
		
		Product product = null;
		final String sql = "SELECT * FROM product WHERE productname = ?";
		
		product = template.queryForObject(sql, new Object[] {productname}, new BeanPropertyRowMapper<Product>(Product.class));

		return product;
	}
	
	@Override
	public ArrayList<Product> ProductSelectAll() {
		ArrayList<Product> list = null;

		final String sql = "SELECT * FROM product";
		
		list = (ArrayList<Product>) template.query(sql,new BeanPropertyRowMapper<Product>(Product.class));

		return list;
	}

}
