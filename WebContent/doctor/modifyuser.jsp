<%@page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon" />

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>
<%@ page import="java.sql.*"%>
<html>
<body>
	<script language="javascript">
		function checkform() {
			if (document.addForm.name.value == ""
					|| document.addForm.number.value == "") {
				alert("请输入完整信息！");
				return false;
			} else {
				alert("修改成功！");
				return true;
			}
		}
	</script>



	<link rel="stylesheet" type="text/css" media="all"
		href="<%=path%>/images/css1/ioa.css" />
	<script type="text/javascript" src="<%=path%>/calendar/WdatePicker.js"></script>
	<%
		request.setCharacterEncoding("gb2312");
	%>

<head>
<title>修改医生信息</title>
</head>

<FORM Action="saveadd.jsp" Method="post" name="addForm">

	<%
		String id = request.getParameter("id");

		String sql = "select * from doctor where id=" + id;
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
						<td width="98%" align="left" class="lan13b">值班医生管理 > 修改医生信息</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">编号：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class=inputnormal
							value="<%=rs.getString("number")%>"> <font color="red">*</font>
						</td>
					</tr>
					<!--  
					<tr>
						<td width="14%" align="right" class="COLLECTION">姓名：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="name" maxlength="32" class="inputnormal"
							value="<%=rs.getString("name")%>"> <font color="red">*</font>
						</td>
					</tr>-->
					<!--  
					<tr>

						<td width="14%" align="right" class="COLLECTION">性别：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="sex" maxlength="32" class="inputnormal"
							value="<%=rs.getString("sex")%>"></td>
					</tr>-->
					<tr>

						<td width="14%" align="right" class="COLLECTION">职称：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="zhicheng" maxlength="32" class="inputnormal"
							value="<%=rs.getString("number")%>"></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">职务：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="zhiwu" maxlength="32" class="inputnormal"
							value="<%=rs.getString("zhiwu")%>"></td>
					</tr>
					
					<tr>

						<td width="14%" align="right" class="COLLECTION">科别：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class="inputnormal"
							value="<%=rs.getString("kebie")%>"></td>
					</tr>
					
					<!--  
					<tr>
						<td width="14%" align="right" class="COLLECTION">出生日期：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="birthtime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})"
							value="<%=rs.getString("birthtime")%>" /></td>
					</tr>
					-->
					<tr>

						<td width="14%" align="right" class="COLLECTION">工作状态：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="workstate" maxlength="32" class="inputnormal"
							value="<%=rs.getString("workstate")%>"></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">工作开始时间：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="worktime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})"
							value="<%=rs.getString("worktime")%>" /></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">工作结束时间：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="endtime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})"
							value="<%=rs.getString("endtime")%>" /></td>
					</tr>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="50%" align="right" class="padr5"><input
							type="submit" onclick="javascript:return(checkform());"
							name="button" value="保 存" class="button"></td>
						<td width="50%" align="left" class="padl5"><input
							name="button1" type="button" class="button"
							onClick="history.go(-1);" value="返 回"></td>
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
