package com.sds.finalpj.tmp;

import java.util.ArrayList;

import com.sds.finalpj.vo.Advertisement;

public class ClientAd {

	 static ArrayList<Advertisement> alladlist = new ArrayList<Advertisement>();
	 static ArrayList<Integer> livinglist = new ArrayList<Integer>();
	 static ArrayList<Integer> foodlist = new ArrayList<Integer>();
	 static ArrayList<Integer> fashionlist = new ArrayList<Integer>();
	 static ArrayList<Integer> culturelist = new ArrayList<Integer>();
	 static ArrayList<Integer> beautylist = new ArrayList<Integer>();
	 static ArrayList<Integer> petlist = new ArrayList<Integer>();
	 static ArrayList<Integer> sportlist = new ArrayList<Integer>();
	 static ArrayList<Integer> publicadlist = new ArrayList<Integer>();
	 static ArrayList<Integer> economylist = new ArrayList<Integer>();

	public ClientAd() {
		super();
	}

	public static ArrayList<Advertisement> getAlladlist() {
		return alladlist;
	}
	
	public static void setAlladlist(ArrayList<Advertisement> alladlist) {
		ClientAd.alladlist = alladlist;
	}

	public static ArrayList<Integer> getLivinglist() {
		return livinglist;
	}
	
	public static int getLivinglist(int livinglistnum) {
		return livinglist.get(livinglistnum);
	}
	
	public void setLivinglist(int livinglist) {
		ClientAd.livinglist.add(livinglist);
	}

	public static ArrayList<Integer> getFoodlist() {
		return foodlist;
	}
	
	public static int getFoodlist(int foodlistnum) {
		return foodlist.get(foodlistnum);
	}
	
	public void setFoodlist(int foodlist) {
		ClientAd.foodlist.add(foodlist);
	}

	public static ArrayList<Integer> getFashionlist() {
		return fashionlist;
	}
	
	public static int getFashionlist(int fashionlistnum) {
		return fashionlist.get(fashionlistnum);
	}
	
	public void setFashionlist(int fashionlist) {
		ClientAd.fashionlist.add(fashionlist);
	}

	public static ArrayList<Integer> getCulturelist() {
		return culturelist;
	}
	
	public static int getCulturelist(int culturelistnum) {
		return culturelist.get(culturelistnum);
	}
	
	public void setCulturelist(int culturelist) {
		ClientAd.culturelist.add(culturelist);
	}

	public static ArrayList<Integer> getBeautylist() {
		return beautylist;
	}
	
	public static int getBeautylist(int beautylistnum) {
		return beautylist.get(beautylistnum);
	}
	
	public void setBeautylist(int beautylist) {
		ClientAd.beautylist.add(beautylist);
	}

	public static ArrayList<Integer> getPetlist() {
		return petlist;
	}
	
	public static int getPetlist(int petlistnum) {
		return petlist.get(petlistnum);
	}
	
	public void setPetlist(int petlist) {
		ClientAd.petlist.add(petlist);
	}

	public static ArrayList<Integer> getSportlist() {
		return sportlist;
	}
	
	public static int getSportlist(int sportlistnum) {
		return sportlist.get(sportlistnum);
	}
	
	public void setSportlist(int sportlist) {
		ClientAd.sportlist.add(sportlist);
	}

	public static ArrayList<Integer> getPublicadlist() {
		return publicadlist;
	}
	
	public static int getPublicadlist(int publicadlistnum) {
		return publicadlist.get(publicadlistnum);
	}
	
	public void setPublicadlist(int publicadlist) {
		ClientAd.publicadlist.add(publicadlist);
	}

	public static ArrayList<Integer> getEconomylist() {
		return economylist;
	}
	
	public static int getEconomylist(int economylistnum) {
		return economylist.get(economylistnum);
	}

	public void setEconomylist(int economylist) {
		ClientAd.economylist.add(economylist);
	}

}
