<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.*" %>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>


<html>
<body>


<%
	 String number = DataFormat.convert(request.getParameter("number"));
	 String kebie = DataFormat.convert(request.getParameter("kebie"));
	 String cost = DataFormat.convert(request.getParameter("cost"));
	 String state = DataFormat.convert(request.getParameter("state")); 
	 String type = DataFormat.convert(request.getParameter("type"));  
	 String name = DataFormat.convert(request.getParameter("name"));
     int id = request.getParameter("id")==null?0:Integer.parseInt(request.getParameter("id")); 
  %>
  <%
 
   if(id!=0){
      String sql = "update bed set number='"+number+"', kebie='"+kebie+"', cost='"+cost+"',state='"+state+"',type='"+type+"',name='"+name+"' where id="+id;
      db.executeUpdate(sql);
   }else{
       int result = db.executeUpdate("insert into bed(number,kebie,cost,state,type,name) values('"+number+"','"+kebie+"','"+cost+"','"+state+"','"+type+"','"+name+"')");
   }
 
  %>
   <%			 
   response.sendRedirect("list_bed.jsp");
  %>

  </body>
  </html>
