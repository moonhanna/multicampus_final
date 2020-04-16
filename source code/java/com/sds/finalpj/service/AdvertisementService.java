package com.sds.finalpj.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.finalpj.dao.AdvertisementDao;
import com.sds.finalpj.vo.Advertisement;

@Service
public class AdvertisementService implements InterfaceService{
	
	@Autowired
	AdvertisementDao advertisementDao;

	@Override
	public Advertisement AdvertisementSearch(String adcategoty) {
		
		Advertisement getad = advertisementDao.AdvertisementSelect(adcategoty);
		
		return getad;
	}

	@Override
	public ArrayList<Advertisement> AdvertisementSearch_agency(String agency) {
		return null;
	}

	@Override
	public List<Advertisement> AdvertisementSearch_adcategory(String adcategory) {
		
		List<Advertisement> list = advertisementDao.AdvertisementSelect_adcategory(adcategory);
		
		return list;
	}

	@Override
	public ArrayList<Advertisement> AdvertisementSearchAll() {
		
		ArrayList<Advertisement> list = advertisementDao.AdvertisementSelectAll();
		
		return list;
	}

}
