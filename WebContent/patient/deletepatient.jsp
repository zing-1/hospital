<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>

<%@ page import="com.hospital.DataFormat"%>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon" />

<html>
<body>


	<%
		int id = request.getParameter("id") == null ? 0 : Integer.parseInt(request.getParameter("id"));
		//在删除之前需要把病人入住的病床的状态修改为0，病人姓名清空
		//先在patient表中查询名字
		ResultSet rs = null;
		String sql = null;
		String name = "";
		sql = "select name from patient where id =" + id;
		rs = a.executeQuery(sql);
		if (rs.next()) {
			name = rs.getString("name");
			out.print(name);
			//按照名字在bed表中修改信息。
			sql = "update bed set name ='',state ='0' where name = '"+name+"' ";
			
			a.executeUpdate(sql);
		}
		else{
			out.print("<script type='text/javascript'>alert('更新失败！'); location.href = 'list_patient.jsp'</script>");
		}
		//删除
		int result = db.executeUpdate("delete from patient where id=" + id);
	%>

	<%
		response.sendRedirect("list_patient.jsp");
	%>

</body>
</html>
