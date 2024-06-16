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
		if (id != 0) {//更新 //若修改病床号，则旧的bed的state=0，清空姓名；新的state=1，添加姓名
			//先做查询，判断修改的病床是否存在
			String sql = "select * from bed where number='" + number + "'";
			rs2 = db.executeQuery(sql);
			
			if (rs2.next()) {
				String state = rs2.getString("state");
				if(!state.equals("1")){
					//旧的bed，先做查询，根据id获取原来的病床号，修改旧bed的状态
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
					//新bed //做修改没有输入姓名，需要先查询
					String sql4 = "select name from patient where id=" + id;
					rs = db.executeQuery(sql4);
					if (rs.next()) {
						String name2 = rs.getString("name");
						String sql2 = "update bed set name='" + name2 + "',state='1' where number = '" + number + "'";
						db.executeUpdate(sql2);
					}
					out1.print(
							"<script type='text/javascript'>alert('修改成功！'); location.href = 'modifypatient.jsp'</script>");
				}
				else{
					out1.print(
							"<script type='text/javascript'>alert('该病床已被占用！'); location.href = 'modifypatient.jsp'</script>");
				}
			} else {//修改的病床不存在
				out1.print(
						"<script type='text/javascript'>alert('该病床不存在，请正确输入！'); location.href = 'modifypatient.jsp'</script>");
			}

		} else {//添加 //同时对bed表更新，将state改为1,添加病人姓名
			//添加时，需要判断添加的病床是否存在,即查询bed的number是否有
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
					out1.print("<script type='text/javascript'>alert('添加成功！'); location.href = 'addpatient.jsp'</script>");
					
				}else{
					out1.print(
							"<script type='text/javascript'>alert('该病床已被占用！'); location.href = 'addpatient.jsp'</script>");
				}
				
			} else {//不存在该病房
				out1.print(
						"<script type='text/javascript'>alert('该病床不存在，请正确输入！'); location.href = 'addpatient.jsp'</script>");
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
