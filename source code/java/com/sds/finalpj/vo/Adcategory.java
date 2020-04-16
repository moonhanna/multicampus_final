package com.sds.finalpj.vo;

public class Adcategory {

	int adcategoryno;
	String living;
	String food;
	String fashion;
	String culture;
	String beauty;
	String pet;
	String sport;
	String publicad;
	String economy;

	public Adcategory() {
		super();
	}

	public Adcategory(int adcategoryno, String living, String food, String fashion, String culture, String beauty,
			String pet, String sport, String publicad, String economy) {
		super();
		this.adcategoryno = adcategoryno;
		this.living = living;
		this.food = food;
		this.fashion = fashion;
		this.culture = culture;
		this.beauty = beauty;
		this.pet = pet;
		this.sport = sport;
		this.publicad = publicad;
		this.economy = economy;
	}

	public int getAdcategoryno() {
		return adcategoryno;
	}

	public void setAdcategoryno(int adcategoryno) {
		this.adcategoryno = adcategoryno;
	}

	public String getLiving() {
		return living;
	}

	public void setLiving(String living) {
		this.living = living;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getFashion() {
		return fashion;
	}

	public void setFashion(String fashion) {
		this.fashion = fashion;
	}

	public String getCulture() {
		return culture;
	}

	public void setCulture(String culture) {
		this.culture = culture;
	}

	public String getBeauty() {
		return beauty;
	}

	public void setBeauty(String beauty) {
		this.beauty = beauty;
	}

	public String getPet() {
		return pet;
	}

	public void setPet(String pet) {
		this.pet = pet;
	}

	public String getSport() {
		return sport;
	}

	public void setSport(String sport) {
		this.sport = sport;
	}

	public String getPublicad() {
		return publicad;
	}

	public void setPublicad(String publicad) {
		this.publicad = publicad;
	}

	public String getEconomy() {
		return economy;
	}

	public void setEconomy(String economy) {
		this.economy = economy;
	}

}
