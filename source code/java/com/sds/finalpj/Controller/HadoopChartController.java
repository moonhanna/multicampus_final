package com.sds.finalpj.Controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sds.finalpj.service.CategoryService;

@Controller
public class HadoopChartController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/hadoopChart", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView hadoopChart(ModelAndView mv) {
		ArrayList<String> clist = categoryService.CategoryList();
		mv.addObject("clist",clist);
		mv.addObject("center","hadoopChart");
		mv.setViewName("index");
		return mv;
		
	}
	
	

	@RequestMapping(value = "/hadoopChartdata", method = { RequestMethod.GET, RequestMethod.POST })
	public void hadoopChartdata(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		String adname = request.getParameter("adname");
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		
		System.out.println(adname+","+startdate+","+enddate);
			try {
				Class.forName("org.apache.hive.jdbc.HiveDriver");
				Connection conn = DriverManager.getConnection("jdbc:hive2://172.31.43.70:10000/default", "root", "111111");
				PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Test WHERE AD=?");
				stmt.setString(1, adname);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4));
				}
				conn.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
			JSONArray ja = new JSONArray();
			
			JSONObject jo = new JSONObject();
			ja.add(jo);
			PrintWriter out;
			try {
				out = response.getWriter();
				out.print(ja);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}


}
