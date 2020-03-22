package com.sds.finalpj.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	String id = null;
	ArrayList<String> idlist = new ArrayList<String>();
		
	@RequestMapping("/clientgetdata")
	public void tablegetdata(HttpServletRequest request, HttpServletResponse response) {

		String reid = request.getParameter("ip");
		System.out.println(reid);
		
		if (reid != null) {
			id = reid;
			idlist.add(id);
		}

		if (id != null) {

			try {
				JSONArray ja = new JSONArray();

				for(String idd : idlist) {
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
		
		for(int i = 0; i < idlist.size(); i++)
		{
			String tmp = idlist.get(i);
			if(tmp.equals(ip))
			{
				idlist.remove(i);
			}
		}

	}
	
	
}
