package com.sds.finalpj.vo;

public class Billboard {

	int billboardno;
	double latitude;
	double longitude;

	public Billboard() {
		super();
	}

	public Billboard(int billboardno, double latitude, double longitude) {
		super();
		this.billboardno = billboardno;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public int getBillboardno() {
		return billboardno;
	}

	public void setBillboardno(int billboardno) {
		this.billboardno = billboardno;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

}
