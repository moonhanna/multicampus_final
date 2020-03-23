package com.sds.finalpj.dao;

import java.util.ArrayList;

import com.sds.finalpj.vo.Advertisement;
import com.sds.finalpj.vo.UserInterest;
import com.sds.finalpj.vo.Users;

public interface InterfaceDao {
	
	//users
	Users userSelect(String userid);
	ArrayList<Users> userSelectAll();
	UserInterest UserInterestSelect(String userid);
	ArrayList<UserInterest> interestSelectAll();
	
	//advertisement
	Advertisement AdvertisementSelect(String productname);
	ArrayList<Advertisement> AdvertisementSelect_agency(String agency);
	ArrayList<Advertisement> AdvertisementSelect_adcategory(String adcategory);
	ArrayList<Advertisement> AdvertisementSelectAll();
}
