<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital.*" %>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon"/>
<html>
<head>
<title>
修改医生密码
</title>
<link rel="icon" type="text/css" href="images/图标1.png">
</head>
<body bgcolor="#ffffff">
<%  String sql="";
    String password=request.getParameter("pwd2");
    int uid=(Integer)session.getAttribute("uid");
    sql="update doctor set doctorpwd ='"+password+"' where id ="+uid;
    a.executeUpdate(sql);
    response.sendRedirect("./indexDoctor.jsp") ;
 %>
</body>
</html>