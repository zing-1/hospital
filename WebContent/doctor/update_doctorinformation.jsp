<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital.*" %>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon"/>
<html>
<head>
<title>
�޸�ҽ��������Ϣ
</title>
<link rel="icon" type="text/css" href="images/ͼ��1.png">
</head>
<body bgcolor="#ffffff">
<%  String sql="";
    String name=DataFormat.convert(request.getParameter("name"));
    String sex=DataFormat.convert(request.getParameter("sex"));
    String birthtime=DataFormat.convert(request.getParameter("birthtime"));
    String doctorphone=DataFormat.convert(request.getParameter("doctorphone"));
    int uid=(Integer)session.getAttribute("uid");
    //ͬʱ�޸ģ�bed���в��˵�����
    ResultSet rs = null;
    String sql2 = "";
    String name2 = "";
    
    //�Ȳ�ѯԭ��������,�Ա��޸�bed���е�����
    sql2 = "select name from doctor where id ="+uid;
    rs = a.executeQuery(sql2);
    
    if(rs.next())
    {
    	name2 = rs.getString("name");
    	out.print(name2);
    }
    else{
    	name2 = name;
    }
    
    sql="update doctor set name ='"+name+"',sex='"+sex+"',birthtime='"+birthtime+"',doctorphone='"+doctorphone+"' where id ="+uid;
    a.executeUpdate(sql);
   
    //����bed�е�����
    if(!name.equals(name2)){
    	session.setAttribute("loginname", name);
    	sql="update patient set doctor ='"+name+"' where doctor ='"+name2+"'";
        a.executeUpdate(sql);
    }
    response.sendRedirect("../indexDoctor.jsp") ;
    if(rs!=null){
    	rs.close();
    }
 %>
</body>
</html>