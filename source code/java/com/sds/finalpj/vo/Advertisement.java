package com.sds.finalpj.vo;

import java.util.Date;

public class Advertisement {

	int advertisementno;
	int productno;
	String adcategory;
	String agency;
	String adurl;
	String subscriptionlevel;
	Date registerdate;
	String totalplayingtime;
	String playingtime;
	int couponno;
	int daycount;

	public Advertisement() {
		super();
	}

	public Advertisement(int advertisementno, int productno, String adcategory, String agency, String adurl,
			String subscriptionlevel, Date registerdate, String totalplayingtime, String playingtime, int couponno,
			int daycount) {
		super();
		this.advertisementno = advertisementno;
		this.productno = productno;
		this.adcategory = adcategory;
		this.agency = agency;
		this.adurl = adurl;
		this.subscriptionlevel = subscriptionlevel;
		this.registerdate = registerdate;
		this.totalplayingtime = totalplayingtime;
		this.playingtime = playingtime;
		this.couponno = couponno;
		this.daycount = daycount;
	}

	public int getAdvertisementno() {
		return advertisementno;
	}

	public void setAdvertisementno(int advertisementno) {
		this.advertisementno = advertisementno;
	}

	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
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

	public int getCouponno() {
		return couponno;
	}

	public void setCouponno(int couponno) {
		this.couponno = couponno;
	}

	public int getDaycount() {
		return daycount;
	}

	public void setDaycount(int daycount) {
		this.daycount = daycount;
	}

}
