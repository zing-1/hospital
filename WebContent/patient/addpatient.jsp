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
				alert("������������Ϣ��");
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
<title>��Ӳ�����Ϣ</title>
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
						<td width="98%" align="left" class="lan13b">���˹��� > ��Ӳ�����Ϣ</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">�Ʊ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class=inputnormal value="">
							<font color="red">*</font></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">�����ţ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class="inputnormal"
							value=""><font color="red">*</font></td>

					</tr>
					<tr>

						<td w idth="14%" align="right" class="COLLECTION">������</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="name" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">�Ա�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="sex" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">���䣺</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="age" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">��֢��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="bingzheng" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">����ҽ����</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="doctor" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">�������ã�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="patientpwd" maxlength="32" class="inputnormal"
							value=""> <font color="red">*</font>
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">��ϵ��ʽ��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="patientphone" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">��Ժ���ڣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="ruyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">������ֹ���ڣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="chuyuan" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="50%" align="right" class="padr5"><input
								type="submit" onclick="javascript:return(checkform());"
								name="button" value="�� ��" class="button"></td>
							<td width="50%" align="left" class="padl5"><input
								name="button1" type="button" class="button"
								onClick="history.go(-1);" value="�� ��"></td>
						</tr>
					</table>
				</table>
				</form> 
				<br> <br> <br> <br>

				</body>
				</html>