<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>

<%@ page import="com.hospital.DataFormat"%>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon" />

<html>
<body>


	<%
		int id = request.getParameter("id") == null ? 0 : Integer.parseInt(request.getParameter("id"));
		//��ɾ��֮ǰ��Ҫ�Ѳ�����ס�Ĳ�����״̬�޸�Ϊ0�������������
		//����patient���в�ѯ����
		ResultSet rs = null;
		String sql = null;
		String name = "";
		sql = "select name from patient where id =" + id;
		rs = a.executeQuery(sql);
		if (rs.next()) {
			name = rs.getString("name");
			out.print(name);
			//����������bed�����޸���Ϣ��
			sql = "update bed set name ='',state ='0' where name = '"+name+"' ";
			
			a.executeUpdate(sql);
		}
		else{
			out.print("<script type='text/javascript'>alert('����ʧ�ܣ�'); location.href = 'list_patient.jsp'</script>");
		}
		//ɾ��
		int result = db.executeUpdate("delete from patient where id=" + id);
	%>

	<%
		response.sendRedirect("list_patient.jsp");
	%>

</body>
</html>
