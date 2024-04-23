<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ page language="java"%>
<%@ page import="java.util.*,com.hospital.*"%>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />
<html>
<head>
<meta charset="UTF-8">
<title>登录验证</title>
<link rel="icon" type="text/css" href="images/图标1.png">
</head>
<body bgcolor="#ffffff">
	<%
		String character = request.getParameter("character");
		String user = DataFormat.convert(request.getParameter("username"));
		String pwd = DataFormat.convert(request.getParameter("password")); //DataFormat字符编码格式的转换
		
		String URL = "";
		String sql = "";
		
		if (character.equals("1")) {
			//查询管理员表
			sql = "SELECT * FROM loginuser where loginname='" + user + "'and loginpwd='" + pwd + "'";
			URL = "index.jsp";
		} else if (character.equals("2")) {
			sql = "SELECT * FROM doctor where name='" + user + "'and doctorpwd='" + pwd + "'";
			URL = "indexDoctor.jsp";
		} else { //病人
			//out.print(character + "角色");
			sql = "SELECT * FROM patient where name='" + user + "'and patientpwd='" + pwd + "'";
			URL = "indexPatient.jsp";
		}

		ResultSet rs = db.executeQuery(sql);
		if (rs.next()) {
			//String loginname = rs.getString("loginname");
			int uid = rs.getInt("id");
			request.getSession(true);
			session.setAttribute("loginname", user);
			session.setAttribute("uid", uid);
			response.sendRedirect(URL);
		} else {
			response.sendRedirect("error.jsp");
		}
	%>

</body>
</html>
