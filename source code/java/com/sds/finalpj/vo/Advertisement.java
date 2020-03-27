package com.sds.finalpj.vo;

import java.util.Date;

public class Advertisement {

	String productname;
	String adcategory;
	String agency;
	String adurl;
	String subscriptionlevel;
	Date registerdate;
	String totalplayingtime;
	String playingtime;

	public Advertisement() {
		super();
	}

	public Advertisement(String productname, String adcategory, String agency, String adurl, String subscriptionlevel,
			Date registerdate, String totalplayingtime, String playingtime) {
		super();
		this.productname = productname;
		this.adcategory = adcategory;
		this.agency = agency;
		this.adurl = adurl;
		this.subscriptionlevel = subscriptionlevel;
		this.registerdate = registerdate;
		this.totalplayingtime = totalplayingtime;
		this.playingtime = playingtime;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getAdcategory() {
		return adcategory;
	}

	public void setAdcategory(String adcategory) {
		this.adcategory = adcategory;
	}

	public String getAgency() {
		return agency;
	}

	public void setAgency(String agency) {
		this.agency = agency;
	}

	public String getAdurl() {
		return adurl;
	}

	public void setAdurl(String adurl) {
		this.adurl = adurl;
	}

	public String getSubscriptionlevel() {
		return subscriptionlevel;
	}

	public void setSubscriptionlevel(String subscriptionlevel) {
		this.subscriptionlevel = subscriptionlevel;
	}

	public Date getRegisterdate() {
		return registerdate;
	}

	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}

	public String getTotalplayingtime() {
		return totalplayingtime;
	}

	public void setTotalplayingtime(String totalplayingtime) {
		this.totalplayingtime = totalplayingtime;
	}

	public String getPlayingtime() {
		return playingtime;
	}

	public void setPlayingtime(String playingtime) {
		this.playingtime = playingtime;
	}

}
