<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital.*" %>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon"/>
<html>
<head>
<title>
修改病人基本信息
</title>
<link rel="icon" type="text/css" href="images/图标1.png">
</head>
<body bgcolor="#ffffff">
<%  String sql="";
    String name=DataFormat.convert(request.getParameter("name"));
    String sex=DataFormat.convert(request.getParameter("sex"));
    String age=DataFormat.convert(request.getParameter("age"));
    String patientphone=DataFormat.convert(request.getParameter("patientphone"));
    int uid=(Integer)session.getAttribute("uid");
    //同时修改，bed表中病人的姓名
    ResultSet rs = null;
    String sql2 = "";
    String name2 = "";
    
    //先查询原来的姓名,以便修改bed表中的姓名
    sql2 = "select name from patient where id ="+uid;
    rs = a.executeQuery(sql2);
    
    if(rs.next())
    {
    	name2 = rs.getString("name");
    }
    else{
    	name2 = name;
    }
    
    sql="update patient set name ='"+name+"',sex='"+sex+"',age='"+age+"',patientphone='"+patientphone+"' where id ="+uid;
    a.executeUpdate(sql);
   
    //更新bed中的姓名
    if(!name.equals(name2)){
    	session.setAttribute("loginname", name);
    	sql="update bed set name ='"+name+"' where name ='"+name2+"'";
        a.executeUpdate(sql);
    }
    
    response.sendRedirect("../indexPatient.jsp") ;
    if(rs!=null){
    	rs.close();
    }
 %>
</body>
</html>