<%@page import="java.io.PrintWriter"%>
<%@page import="java.security.interfaces.RSAKey"%>
<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.hospital.*"%>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />


<html>
<body>

	<%
		String number = DataFormat.convert(request.getParameter("number"));
		String kebie = DataFormat.convert(request.getParameter("kebie"));
		String name = DataFormat.convert(request.getParameter("name"));
		String sex = DataFormat.convert(request.getParameter("sex"));
		String chuyuan = DataFormat.convert(request.getParameter("chuyuan"));
		String age = DataFormat.convert(request.getParameter("age"));
		String bingzheng = DataFormat.convert(request.getParameter("bingzheng"));
		String doctor = DataFormat.convert(request.getParameter("doctor"));
		String patientpwd = DataFormat.convert(request.getParameter("patientpwd"));
		String patientphone = DataFormat.convert(request.getParameter("patientphone"));
		String ruyuan = DataFormat.convert(request.getParameter("ruyuan"));
		int id = request.getParameter("id") == null ? 0 : Integer.parseInt(request.getParameter("id"));
	%>
	<%
		ResultSet rs = null;
		ResultSet rs2 = null;
		PrintWriter out1 = response.getWriter();
		if (id != 0) {//���� //���޸Ĳ����ţ���ɵ�bed��state=0������������µ�state=1���������
			//������ѯ���ж��޸ĵĲ����Ƿ����
			String sql = "select * from bed where number='" + number + "'";
			rs2 = db.executeQuery(sql);
			
			if (rs2.next()) {
				String state = rs2.getString("state");
				if(!state.equals("1")){
					//�ɵ�bed��������ѯ������id��ȡԭ���Ĳ����ţ��޸ľ�bed��״̬
					String sql3 = "select * from patient where id=" + id;
					rs = db.executeQuery(sql3);
					if (rs.next()) {
						String number2 = rs.getString("number");
						sql3 = "update bed set name='',state='0' where number = '" + number2 + "'";
						db.executeUpdate(sql3);
					}

					sql = "update patient set number='" + number + "', kebie='" + kebie + "', chuyuan='" + chuyuan
							+ "', bingzheng='" + bingzheng + "', doctor='" + doctor + "', ruyuan='" + ruyuan
							+ "' where id=" + id;
					db.executeUpdate(sql);
					//��bed //���޸�û��������������Ҫ�Ȳ�ѯ
					String sql4 = "select name from patient where id=" + id;
					rs = db.executeQuery(sql4);
					if (rs.next()) {
						String name2 = rs.getString("name");
						String sql2 = "update bed set name='" + name2 + "',state='1' where number = '" + number + "'";
						db.executeUpdate(sql2);
					}
					out1.print(
							"<script type='text/javascript'>alert('�޸ĳɹ���'); location.href = 'modifypatient.jsp'</script>");
				}
				else{
					out1.print(
							"<script type='text/javascript'>alert('�ò����ѱ�ռ�ã�'); location.href = 'modifypatient.jsp'</script>");
				}
			} else {//�޸ĵĲ���������
				out1.print(
						"<script type='text/javascript'>alert('�ò��������ڣ�����ȷ���룡'); location.href = 'modifypatient.jsp'</script>");
			}

		} else {//��� //ͬʱ��bed����£���state��Ϊ1,��Ӳ�������
			//���ʱ����Ҫ�ж���ӵĲ����Ƿ����,����ѯbed��number�Ƿ���
			String sql = "select * from bed where number='" + number + "'";
			rs2 = db.executeQuery(sql);
			
			if (rs2.next()) {
				String state = rs2.getString("state");
				if(!state.equals("1")){
					int result = db.executeUpdate(
							"insert into patient(number,kebie,name,sex,chuyuan,age,bingzheng,doctor,ruyuan,patientpwd,patientphone) values('"
									+ number + "','" + kebie + "','" + name + "','" + sex + "','" + chuyuan + "','"
									+ age + "','" + bingzheng + "','" + doctor + "','" + ruyuan + "','" + patientpwd + "','" + patientphone + "')");
					String sql2 = "update bed set name='" + name + "',state='1' where number = '" + number + "'";
					db.executeUpdate(sql2);
					out1.print("<script type='text/javascript'>alert('��ӳɹ���'); location.href = 'addpatient.jsp'</script>");
					
				}else{
					out1.print(
							"<script type='text/javascript'>alert('�ò����ѱ�ռ�ã�'); location.href = 'addpatient.jsp'</script>");
				}
				
			} else {//�����ڸò���
				out1.print(
						"<script type='text/javascript'>alert('�ò��������ڣ�����ȷ���룡'); location.href = 'addpatient.jsp'</script>");
			}
		}
		if (rs != null) {
			rs.close();
		}
		if (rs2 != null) {
			rs2.close();
		}
		out1.flush();
		out1.close();
	%>
	<%
		//response.sendRedirect("list_patient.jsp");
	%>

</body>
</html>
