package com.sds.finalpj.service;

import java.util.ArrayList;

import com.sds.finalpj.vo.UserInterest;
import com.sds.finalpj.vo.Users;

public interface InterfaceService {
	
	Users userSearch(String userid);
	ArrayList<Users> userSearchAll();
	
	UserInterest UserInterestSearch(String userid);
	ArrayList<UserInterest> interestSearchAll();

}
