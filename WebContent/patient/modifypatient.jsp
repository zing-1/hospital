<%@page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	String applicationPath = basePath + "/" + "application";
%>
<%@ page import="java.sql.*"%>
<html>
<body>
	<script language="javascript">
function checkform() {
	if (document.addForm.kebie.value == ""
			|| document.addForm.number.value == "") {
		alert("请输入完整信息！");
		return false;
	} else {
		/*alert("修改成功！");*/
		return true;
	}
	
}

function Back(){
	 window.open("indexPatient.jsp","scrollbars=no");
}
</script>
	<link rel="stylesheet" type="text/css" media="all"
		href="<%=path%>/images/css1/ioa.css" />
	<script type="text/javascript" src="<%=path%>/calendar/WdatePicker.js"></script>
	<%
			request.setCharacterEncoding("gb2312");
		%>

<head>
<title>修改病人信息</title>
</head>

<FORM Action="savepatient.jsp" Method="post" name="addForm">

	<%
				String id = request.getParameter("id");

				String sql = "select * from patient where id=" + id;
				ResultSet rs = db.executeQuery(sql);
				while (rs.next()) {
			%>
	<input type="hidden" name="id" maxlength="32" class=inputnormal
		value="<%=rs.getString("id")%>">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="pad5">
		<tr>
			<td valign="top" align="left" class="pad5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="dqbg margb5">
					<tr>
						<td width="2%" align="right" class="pad05"><img
							src="<%=path%>/images/img2.gif" width="16" height="16"></td>
						<td width="98%" align="left" class="lan13b">病床管理 > 修改病人信息</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">科别：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class=inputnormal
							value="<%=rs.getString("kebie") %>"> <font color="red">*</font>
						</td>

					</tr>

					<tr>
						<td width="14%" align="right" class="COLLECTION">病床号：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class="inputnormal"
							value="<%=rs.getString("number") %>"> <font color="red">*</font>
						</td>

					</tr>
					
					<tr>

						<td width="14%" align="right" class="COLLECTION">病症：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="bingzheng" maxlength="32" class="inputnormal"
							value="<%=rs.getString("bingzheng")%>"></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">主治医生：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="doctor" maxlength="32" class="inputnormal"
							value="<%=rs.getString("doctor")%>"></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">入院日期：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="ruyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})"
							value="<%=rs.getString("ruyuan")%>" /></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">病床截止日期：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="chuyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})"
							value="<%=rs.getString("chuyuan")%>" /></td>
					</tr>

				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="50%" align="right" class="padr5"><input
							type="submit" onclick="javascript:return(checkform());"
							name="button" value="保 存" class="button"></td>
						<td width="50%" align="left" class="padl5"><input
							name="button1" type="button" class="button" onClick="history.back(-1);" 
							value="返 回"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<%
		}
		rs.close();
	%>

</form>


<br>
<br>
<br>
<br>

</body>
</html>
