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
			if (document.addForm.name.value == ""
					|| document.addForm.number.value == ""
					|| document.addForm.doctorpwd.value == "") {
				alert("������������Ϣ��");
				return false;
			} else {
				alert("��ӳɹ���");
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
<title>���ҽ����Ϣ</title>
</head>

<FORM Action="saveadd.jsp" Method="post" name="addForm">


	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="pad5">
		<tr>
			<td valign="top" align="left" class="pad5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="dqbg margb5">
					<tr>
						<td width="2%" align="right" class="pad05"><img
							src="<%=path%>/images/img2.gif" width="16" height="16"></td>
						<td width="98%" align="left" class="lan13b">ҽ������ > ���ҽ����Ϣ</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">��ţ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class=inputnormal value="">
							<font color="red">*</font></td>

					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">������</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="name" maxlength="32" class="inputnormal" value=""><font
							color="red">*</font></td>

					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">�Ա�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="sex" maxlength="32" class="inputnormal" value="">
						</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">ְ�ƣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="zhicheng" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">ְ��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="zhiwu" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>

					<tr>

						<td width="14%" align="right" class="COLLECTION">�Ʊ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">����״̬��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="workstate" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">�������룺</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="doctorpwd" maxlength="32" class="inputnormal"
							value="">
							<font color="red">*</font>
							</td>
					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">��ϵ��ʽ��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="doctorphone" maxlength="32" class="inputnormal"
							value=""></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">�������ڣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="birthtime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>

					<tr>
						<td width="14%" align="right" class="COLLECTION">������ʼʱ�䣺</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="worktime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">��������ʱ�䣺</td>
						<td width="36%" align="left" class="even padl5"><input
							class="Wdate" type="text" name="endtime" maxlength="32"
							onfocus="WdatePicker({readOnly:true})" /></td>
					</tr>
				</table>
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
			</td>
		</tr>
	</table>
</form>
<br>
<br>
<br>
<br>
</body>
</html>
