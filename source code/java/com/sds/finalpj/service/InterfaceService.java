package com.sds.finalpj.service;

import java.util.ArrayList;
import java.util.List;

import com.sds.finalpj.vo.Adcategory;
import com.sds.finalpj.vo.Advertisement;
import com.sds.finalpj.vo.Billboard;
import com.sds.finalpj.vo.Product;
import com.sds.finalpj.vo.Users;

public interface InterfaceService {
	
	//users
	default Users userSearch(String userid) {
		return null;
	}
	default ArrayList<Users> userSearchAll() {
		return null;
	}
	default Adcategory UserInterestSearch(int adcategoryno) {
		return null;
	}
	default ArrayList<Adcategory> interestSearchAll() {
		return null;
	}
	
	//advertisement
	default Advertisement AdvertisementSearch(String adcategoty) {
		return null;
	}
	default ArrayList<Advertisement> AdvertisementSearch_agency(String agency) {
		return null;
	}
	default List<Advertisement> AdvertisementSearch_adcategory(String adcategory) {
		return null;
	}
	default ArrayList<Advertisement> AdvertisementSearchAll() {
		return null;
	}
	
	default ArrayList<String> CategoryList(){
		return null;
	}
	
	//product
	default Product ProductSearch(int productno)
	{
		return null;
	}
	
	//billboard
	default ArrayList<Billboard> BillboardSearchAll() {
		return null;
	}

}
