<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.*" %>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>


<html>
<body>


<%
	 String number = DataFormat.convert(request.getParameter("number"));
	 String name = DataFormat.convert(request.getParameter("name"));
	 String sex = DataFormat.convert(request.getParameter("sex"));
	 String zhicheng = DataFormat.convert(request.getParameter("zhicheng"));
	 String zhiwu = DataFormat.convert(request.getParameter("zhiwu"));
	 String kebie = DataFormat.convert(request.getParameter("kebie"));
	 String workstate = DataFormat.convert(request.getParameter("workstate"));
	 String doctorpwd = DataFormat.convert(request.getParameter("doctorpwd"));
	 String doctorphone = DataFormat.convert(request.getParameter("doctorphone"));
	 //String birthtime = DataFormat.convert(request.getParameter("birthtime"));
	 String worktime = DataFormat.convert(request.getParameter("worktime"));
	 String endtime = DataFormat.convert(request.getParameter("endtime"));
     
     int id = request.getParameter("id")==null?0:Integer.parseInt(request.getParameter("id")); 
   

  %>
  <%
 
   if(id!=0){
      String sql = "update doctor set number='"+number+"', zhicheng='"+zhicheng+"',zhiwu='"+zhiwu+"',kebie='"+kebie+"',workstate='"+workstate+"',worktime='"+worktime+"',endtime='"+endtime+"' where id="+id;
      db.executeUpdate(sql);
   }else{
       int result = db.executeUpdate("insert into doctor(number,name,sex,zhicheng,zhiwu,kebie,workstate,doctorpwd,doctorphone,worktime,endtime) values('"+number+"','"+name+"','"+sex+"','"+zhicheng+"','"+zhiwu+"','"+kebie+"','"+workstate+"','"+doctorpwd+"','"+doctorphone+"','"+worktime+"','"+endtime+"')");
   }
 
   
  %>
   <%			 
   response.sendRedirect("list_user.jsp");
  %>

  </body>
  </html>
