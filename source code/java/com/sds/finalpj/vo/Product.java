package com.sds.finalpj.vo;

public class Product {

	int productno;
	String productname;
	int productprice;

	public Product() {
		super();
	}

	public Product(int productno, String productname, int productprice) {
		super();
		this.productno = productno;
		this.productname = productname;
		this.productprice = productprice;
	}

	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

}
