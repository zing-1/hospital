<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ page language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="com.hospital.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312";>
<title>修改病人基本信息</title>
<link rel="icon" type="text/css" href="images/图标1.png">
</head>
<body bgcolor="#ffffff">

	<SCRIPT LANGUAGE="javascript">
		function checkform() {
			if (form2.name.value == "") {
				alert("名字不能为空");
				form2.pwd1.focus();
				return false;
			} else {
				alert("信息修改成功");
				return true;
			}
			return true;
		}
		function Back(){
			 window.open("indexPatient.jsp","scrollbars=no");
		 }
	</SCRIPT>
	<%
		int uid = (Integer) session.getAttribute("uid");

		String sql = "";
		sql = "SELECT * FROM patient where id=" + uid;
		ResultSet rs = a.executeQuery(sql);
		if (rs.next()) {
	%>

	<link rel="stylesheet" type="text/css" media="all"
		href="<%=path%>/images/css1/ioa.css" />

	<center>
		<form action="patient/update_patientinformation.jsp" method="POST"
			name="form2">

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="pad5">
				<tr>
					<td valign="top" align="left" class="pad5">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="dqbg margb5">
							<tr>
								<td width="2%" align="right" class="pad05"><img
									src="<%=path%>/images/img2.gif" width="16" height="16"></td>
								<td width="98%" align="left" class="lan13b">基本信息修改</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="1" cellspacing="1"
							class="table-border margb5">
							<tr>
								<td width="14%" align="right" class="COLLECTION">姓名</td>
								<td width="36%" align="left" class="even padl5"><input
									type=text name="name" maxlength="32"
									value="<%=rs.getString("name")%>" /></td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">性别</td>
								<td width="36%" align="left" class="even padl5"><input
									type=text name="sex" maxlength="32" class="inputnormal"
									value="<%=rs.getString("sex")%>"></td>
							</tr>

							<tr>
								<td width="14%" align="right" class="COLLECTION">年龄</td>
								<td width="36%" align="left" class="even padl5"><input
									type=text name="age" maxlength="32" class="inputnormal"
									value="<%=rs.getString("age")%>"></td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">联系方式</td>
								<td width="36%" align="left" class="even padl5"><input
									type=text name="patientphone" maxlength="32"
									class="inputnormal" value="<%=rs.getString("patientphone")%>"></td>
							</tr>
						</table> <%
 	}
		if(rs!=null)
		{
			rs.close();
		}
 %>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="right" class="padr5"><input
									type="submit" onclick="javascript:return(checkform());"
									name="button" value="保 存" class="button"></td>
								<td width="50%" align="left" class="padl5"><input
									name="button1" type="button" class="button"
									onClick="Back()" value="返 回"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>