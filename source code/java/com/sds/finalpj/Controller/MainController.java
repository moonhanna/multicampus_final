package com.sds.finalpj.Controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import msg.Client;

import com.sds.finalpj.service.AdvertisementService;
import com.sds.finalpj.service.UsersService;
import com.sds.finalpj.tmp.Adurl;
import com.sds.finalpj.tmp.ClientAd;
import com.sds.finalpj.vo.Adcategory;
import com.sds.finalpj.vo.Advertisement;
import com.sds.finalpj.vo.Users;

@Controller
public class MainController {

	@Autowired
	UsersService usersservice;
	
	@Autowired
	AdvertisementService advertisementservice;
	
	String id = null;
	String userid = null;
	ArrayList<String> idlist = new ArrayList<String>();
	
	String[] userintresting = new String[3];
	

	Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping("/clientgetdata")
	public void tablegetdata(HttpServletRequest request, HttpServletResponse response) {
	
		String useridtmp = request.getParameter("id");
		String reid = request.getParameter("ip");
		
		int count = 0;
		
		if (reid != null) {
			id = reid;
			idlist.add(id);			
		}

		if (useridtmp != null) {
			
			//log 찍기
			userid = useridtmp;
			Users logginguser = usersservice.userSearch(userid);
			Adcategory logginguserint = usersservice.UserInterestSearch(logginguser.getAdcategoryno());
			logger.info(logginguser.getUserage() + "," + logginguser.getUsergender() + "," + logginguserint.getLiving()
					+ "," + logginguserint.getFood() + "," + logginguserint.getFashion() + ","
					+ logginguserint.getCulture() + "," + logginguserint.getBeauty() + "," + logginguserint.getPet()
					+ "," + logginguserint.getSport() + "," + logginguserint.getPublicad() + "," + logginguserint.getEconomy()
					+ ",N,NULL,Galaxy S20 Ultra,2020-03-25 15:01:02");
			
			//광고뽑기
			if(logginguserint.getLiving().equals("Y"))
			{
				userintresting[count] = "living";
				count++;
			}
			if(logginguserint.getFood().equals("Y"))
			{
				userintresting[count] = "food";
				count++;
			}
			if(logginguserint.getFashion().equals("Y"))
			{
				userintresting[count] = "fashion";
				count++;
			}
			if(logginguserint.getCulture().equals("Y"))
			{
				userintresting[count] = "culture";
				count++;
			}
			if(logginguserint.getBeauty().equals("Y"))
			{
				userintresting[count] = "beauty";
				count++;
			}
			if(logginguserint.getPet().equals("Y"))
			{
				userintresting[count] = "pet";
				count++;
			}
			if(logginguserint.getSport().equals("Y"))
			{
				userintresting[count] = "sport";
				count++;
			}
			if(logginguserint.getPublicad().equals("Y"))
			{
				userintresting[count] = "publicad";
				count++;
			}
			if(logginguserint.getEconomy().equals("Y"))
			{
				userintresting[count] = "economy";
				count++;
			}
			
			System.out.println("userintresting???????????????????" + userintresting[0] + userintresting[1] + userintresting[2]);
			
			int ctgyrandom = (int)(Math.random()*3);
			String ctgrtmp = userintresting[ctgyrandom];
			System.out.println("카테고리 ???" + ctgrtmp);
			int adno = 0;
			
			if(ctgrtmp.equals("living"))
			{
				int rd = (int)(Math.random() * ClientAd.getLivinglist().size());
				adno = ClientAd.getLivinglist().get(rd);
			}
			if(ctgrtmp.equals("food"))
			{
				int rd = (int)(Math.random() * ClientAd.getFoodlist().size());
				adno = ClientAd.getFoodlist().get(rd);
			}
			if(ctgrtmp.equals("fashion"))
			{
				int rd = (int)(Math.random() * ClientAd.getFashionlist().size());
				adno = ClientAd.getFashionlist().get(rd);
			}
			if(ctgrtmp.equals("culture"))
			{
				int rd = (int)(Math.random() * ClientAd.getCulturelist().size());
				adno = ClientAd.getCulturelist().get(rd);
			}
			if(ctgrtmp.equals("beauty"))
			{
				int rd = (int)(Math.random() * ClientAd.getBeautylist().size());
				adno = ClientAd.getBeautylist().get(rd);
			}
			if(ctgrtmp.equals("pet"))
			{
				int rd = (int)(Math.random() * ClientAd.getPetlist().size());
				adno = ClientAd.getPetlist().get(rd);
			}
			if(ctgrtmp.equals("sport"))
			{
				int rd = (int)(Math.random() * ClientAd.getSportlist().size());
				adno = ClientAd.getSportlist().get(rd);
			}
			if(ctgrtmp.equals("publicad"))
			{
				int rd = (int)(Math.random() * ClientAd.getPublicadlist().size());
				adno = ClientAd.getPublicadlist().get(rd);
			}
			if(ctgrtmp.equals("economy"))
			{
				int rd = (int)(Math.random() * ClientAd.getEconomylist().size());
				adno = ClientAd.getEconomylist().get(rd);
			}
			
			System.out.println("광고번호 : " + adno);
			
			try {
				Client client = new Client("192.168.43.92",9999); // tcp/ip server ip
				System.out.println("target ip : " + reid + "target adno : " + adno);
				client.startClient(Integer.toString(adno), reid);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			Advertisement getad = advertisementservice.AdvertisementSearch_adurl(Adurl.getUrl());
			
			int advertisementno = getad.getAdvertisementno();
			int productno = getad.getProductno();
			
			System.out.println("advertisementno ? " + advertisementno + "productno ? " + productno);
			
			///////////////////////////////////////////////////fcm
			
			URL url;
			try {
				url = new URL("https://fcm.googleapis.com/fcm/send");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();

				conn.setUseCaches(false);
				conn.setDoInput(true);
				conn.setDoOutput(true);

				conn.setRequestProperty("Authorization",
						"key = server key");
				conn.setRequestProperty("Content-Type", "application/json");

				JSONObject json = new JSONObject();
				//json.put("to","e5YHYOgrvXk:APA91bG3CV853zSOEr5_WKcS0m5xqva9fnV2dePFZfknBdjg8DzIy4X545_nlsMHivkGkSe_T2y_LvjmOapjKToOUfGH4VOs5Y1Hk4P86rSP6F39VMg_ytp4PN-gutWIW-nYO8pV6LlH");
				
				//pad
				json.put("to","pad token");
				JSONObject info = new JSONObject();
				JSONObject data = new JSONObject();
				info.put("title", "How about this?");
				info.put("body", "check 40% coupon!");
				json.put("notification", info);

				data.put("advertisementno",advertisementno);
				data.put("productno",productno);
				json.put("data",data);
				OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
				out.write(json.toString());
				out.flush();
				conn.getInputStream();
				System.out.println("okok");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			//////////////////////////////////////////////////
			
		}

		if (id != null) {

			try {
				JSONArray ja = new JSONArray();

				for (String idd : idlist) {
					JSONObject obj = new JSONObject();
					obj.put("ip", idd);
					ja.add(obj);
				}

				PrintWriter out = response.getWriter();
				out.write(ja.toJSONString());
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

	}

	@RequestMapping("/disconnect")
	public void disconnect(HttpServletRequest request, HttpServletResponse response) {

		String ip = request.getParameter("ip");
		System.out.println("disconnect" + ip);

		for (int i = 0; i < idlist.size(); i++) {
			String tmp = idlist.get(i);
			if (tmp.equals(ip)) {
				idlist.remove(i);
			}
		}

	}
	
	@RequestMapping("/clientchart")
	public void clientchart(HttpServletResponse response) {
		
		try {
			
			JSONArray ja = new JSONArray();
			JSONObject obj = new JSONObject();
			obj.put("clientnum", idlist.size());
			ja.add(obj);

			PrintWriter out = response.getWriter();
			out.write(ja.toJSONString());
			out.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		

	}

}
