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
			if (document.addForm.kebie.value == ""
					|| document.addForm.number.value == "") {
				alert("������������Ϣ��");
				return false;
			} else {
				alert("�޸ĳɹ���");
				return true;
			}
		}
	</script>



	<link rel="stylesheet" type="text/css" media="all"
		href="<%=path%>/images/css1/ioa.css" />
	<%
		request.setCharacterEncoding("gb2312");
	%>

<head>
<title>�޸Ĳ�����Ϣ</title>
</head>

<FORM Action="savebed.jsp" Method="post" name="addForm">

	<%
		String id = request.getParameter("id");

		String sql = "select * from bed where id=" + id;
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
						<td width="98%" align="left" class="lan13b">�������� > �޸Ĳ�����Ϣ</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="1" cellspacing="1"
					class="table-border margb5">
					<tr>
						<td width="14%" align="right" class="COLLECTION">�Ʊ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="kebie" maxlength="32" class=inputnormal
							value="<%=rs.getString("kebie")%>"> <font color="red">*</font>
						</td>

					</tr>

					<tr>
						<td width="14%" align="right" class="COLLECTION">�����ţ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="number" maxlength="32" class="inputnormal"
							value="<%=rs.getString("number")%>"> <font color="red">*</font>
						</td>

					</tr>
					<tr>

						<td width="14%" align="right" class="COLLECTION">��λ�ѣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="cost" maxlength="32" class="inputnormal"
							value="<%=rs.getString("cost")%>"></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">ʹ��״̬��</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="state" maxlength="32" class="inputnormal"
							value="<%=rs.getString("state")%>"></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">�������ͣ�</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="type" maxlength="32" class="inputnormal"
							value="<%=rs.getString("type")%>"></td>
					</tr>
					<tr>
						<td width="14%" align="right" class="COLLECTION">����������</td>
						<td width="36%" align="left" class="even padl5"><input
							type=text name="name" maxlength="32" class="inputnormal"
							value="<%=rs.getString("name")%>"></td>
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
