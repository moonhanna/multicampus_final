<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@page import="com.sds.finalpj.db.PayHistoryDB"%>
      <%@page import="com.sds.finalpj.vo.History"%>
   
    
<%

PayHistoryDB payhistoryDB = PayHistoryDB.getInstance();

System.out.println("-----------------!!!!!!!!!!!!!!!!!!!!!!!!!!!!!----");

   String id = request.getParameter("id");
   
   System.out.println(id);
	
   
	String result= payhistoryDB.HistroyDB(id);
 	System.out.println("---------------------");
 	System.out.println(id);
 	System.out.println(result);
 

 	if(result.equals("YY")) {
 	System.out.println("History.getProductname()="+History.getProductname());
 	History tmp = new History();
 	tmp.setPaymentno(History.getPaymentno());
 	tmp.setProductname(History.getProductname());
 	tmp.setProductprice(History.getProductprice());
 		System.out.println("최근결제내역 가져옴");

 		out.println(tmp.toString()) ;
 		
 	}else {
 		System.out.println("결제내역없음");
 		
 		out.println("000");
 	}

    %>