package com.sds.finalpj.vo;

public class Users {

	String userid;
	String userpwd;
	int userage;
	String usergender;
	String userphone;
	String useremail;
	String useraddr;
	String useragree;
	int adcategoryno;

	public Users() {
		super();
	}

	public Users(String userid, String userpwd, int userage, String usergender, String userphone, String useremail,
			String useraddr, String useragree, int adcategoryno) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.userage = userage;
		this.usergender = usergender;
		this.userphone = userphone;
		this.useremail = useremail;
		this.useraddr = useraddr;
		this.useragree = useragree;
		this.adcategoryno = adcategoryno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public int getUserage() {
		return userage;
	}

	public void setUserage(int userage) {
		this.userage = userage;
	}

	public String getUsergender() {
		return usergender;
	}

	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUseraddr() {
		return useraddr;
	}

	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}

	public String getUseragree() {
		return useragree;
	}

	public void setUseragree(String useragree) {
		this.useragree = useragree;
	}

	public int getAdcategoryno() {
		return adcategoryno;
	}

	public void setAdcategoryno(int adcategoryno) {
		this.adcategoryno = adcategoryno;
	}

}
