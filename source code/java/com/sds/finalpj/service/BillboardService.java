package com.sds.finalpj.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.finalpj.dao.BillboardDao;
import com.sds.finalpj.vo.Billboard;

@Service
public class BillboardService implements InterfaceService {

	@Autowired
	BillboardDao billboarddao;
	
	@Override
	public ArrayList<Billboard> BillboardSearchAll() {
		
		ArrayList<Billboard> list = billboarddao.BillboardSelectAll();
		
		return list;
	}

}
