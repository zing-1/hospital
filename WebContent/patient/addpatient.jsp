<%@page contentType="text/html; charset=gb2312"%>
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

			if (document.addForm.kebie.value == ""
					|| document.addForm.number.value == ""
					|| document.addForm.patientpwd.value == "") {
				alert("请输入完整信息！");
				return false;
			} else {
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
<title>添加病人信息</title>
</head>

<form Action="savepatient.jsp" Method="post" name="addForm">


	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="pad5">
		<tr>
			<td valign="top" align="left" class="pad5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="dqbg margb5">
					<tr>
						<td width="2%" align="right" class="pad05"><img
							src="<%=path%>/images/img2.gif" width="16" height="16"></td>
						<td width="98%" align="left" class="lan13b">病人管理 > 添加病人信息</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">科别：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class=inputnormal value="">
							<font color="red">*</font></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">病床号：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class="inputnormal"
							value=""><font color="red">*</font></td>

					</tr>
					<tr>

						<td w idth="14%" align="right" class="COLLECTION">姓名：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="name" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">性别：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="sex" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">年龄：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="age" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">病症：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="bingzheng" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">主治医生：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="doctor" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">密码设置：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="patientpwd" maxlength="32" class="inputnormal"
							value=""> <font color="red">*</font>
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">联系方式：</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="patientphone" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">入院日期：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="ruyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">病床截止日期：</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="chuyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>

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
				</table>
				</form> 
				<br> <br> <br> <br>

				</body>
				</html>