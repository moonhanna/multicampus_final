package com.sds.finalpj.dao;

import java.util.ArrayList;
import java.util.List;

import com.sds.finalpj.vo.Adcategory;
import com.sds.finalpj.vo.Advertisement;
import com.sds.finalpj.vo.Billboard;
import com.sds.finalpj.vo.Product;
import com.sds.finalpj.vo.Users;

public interface InterfaceDao {

	// users
	default Users userSelect(String userid) {
		return null;
	}

	default ArrayList<Users> userSelectAll() {
		return null;
	}

	default Adcategory UserInterestSelect(int adcategoryno) {
		return null;
	}

	default ArrayList<Adcategory> interestSelectAll() {
		return null;
	}

	// advertisement
	default Advertisement AdvertisementSelect(String adcategoty) {
		return null;
	}
	
	default Advertisement AdvertisementSelect_adurl(String adurl) {
		return null;
	}
	
	default ArrayList<Advertisement> AdvertisementSelect_agency(String agency) {
		return null;
	}

	default List<Advertisement> AdvertisementSelect_adcategory(String adcategory) {
		return null;
	}

	default ArrayList<Advertisement> AdvertisementSelectAll() {
		return null;
	}
	
	default ArrayList<String> SelectCategory(){
		return null;
	}

	// Product
	default Product ProductSelect(int productno) {
		return null;
	}
	
	default ArrayList<Product> ProductSelectAll(){
		return null;
	}
	
	default Product ProductSelectName(String productname) {
		return null;	
	}
	
	//Billboard
	default ArrayList<Billboard> BillboardSelectAll() {
		return null;
	}

	//Category
	default int CategorySelectCount(String category) {
		return 0;
		
	}

}
