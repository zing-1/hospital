<%@ page contentType="text/html; charset=GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>
<%@ page import="java.sql.*"%>
<%@ page language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="com.hospital.*"%>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon" />
<html>
<head>
<style type="TEXT/CSS">
A:LINK {
	COLOR: blue;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: NONE
}

A:VISITED {
	COLOR: blue;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: NONE
}

A:HOVER {
	COLOR: red;
	FONT-SIZE: 12PT;
	TEXT-DECORATION: UNDERLINE
}
</STYLE>

<link rel="stylesheet" type="text/css" media="all"
	href="<%=path%>/images/css1/ioa.css" />

<title>病人查询病床信息</title>
</head>
<body bgcolor="#ffffff">
	<br>
	<%
		String sql = null;
		ResultSet rs = null;

		String sql2 = null;
		ResultSet rs2 = null;
		String loginname = (String) session.getAttribute("loginname");

		sql = "SELECT * FROM patient where name='" + loginname + "'";
		rs = a.executeQuery(sql);
		sql2 = "SELECT * FROM bed where name='" + loginname + "'";
		rs2 = a.executeQuery(sql2);
	%>


	<p align="center">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="pad5">
		<tr>
			<td valign="top" align="left" class="pad5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="dqbg margb5">
					<tr>
						<td width="2%" align="right" class="pad05"><img
							src="<%=path%>/images/img2.gif" width="16" height="16"></td>
						<td width="98%" align="left" class="lan13b">信息查询 > 住宿信息查询</td>
					</tr>
				</table>

				<table width="100%" border="0" cellspacing="1" cellpadding="0"
					class="table-border margb5">
					<tr>
						<td colspan="11" align="left" class="tabbg"><img
							src="<%=path%>/images/main_pic_1.gif" align="absmiddle"
							width="16" height="16"> &nbsp; <span class="lan13b"></span>
						</td>
					</tr>
					<tr>
						<th width="3%" nowrap class="COLLECTION">科别</th>
						<th width="3%" nowrap class="COLLECTION">病床号</th>
						<th width="3%" nowrap class="COLLECTION">病人姓名</th>

						<th width="5%" nowrap class="COLLECTION">病症</th>
						<th width="5%" nowrap class="COLLECTION">主治医生</th>
						<th width="5%" nowrap class="COLLECTION">入院日期</th>
						<th width="5%" nowrap class="COLLECTION">病床截止日期</th>
						<th width="5%" nowrap class="COLLECTION">床位费</th>
						<th width="5%" nowrap class="COLLECTION">病房类型</th>
					</tr>
					<div align="right"></div>

					<%
						if (rs.next()) {
					%>
					<tr class="even">
						<td nowrap align="center"><%=rs.getString("kebie")%></td>
						<td nowrap align="center"><%=rs.getString("number")%></td>
						<td nowrap align="center"><%=rs.getString("name") == null ? "" : rs.getString("name")%></td>

						<td nowrap align="center"><%=rs.getString("bingzheng") == null ? "" : rs.getString("bingzheng")%></td>
						<td nowrap align="center"><%=rs.getString("doctor") == null ? "" : rs.getString("doctor")%></td>
						<td nowrap align="center"><%=rs.getString("ruyuan") == null ? "" : rs.getString("ruyuan")%></td>
						<td nowrap align="center"><%=rs.getString("chuyuan") == null ? "" : rs.getString("chuyuan")%></td>
						<%
							}
							if (rs2.next()) {
						%>
						<td nowrap align="center"><%=rs2.getString("cost") == null ? "": rs2.getString("cost")%></td>
						<td nowrap align="center"><%=rs2.getString("type") == null ? "": rs2.getString("type")%></td>

						<%
							} else {
						%>
						<td nowrap align="center"><%=""%></td>
						<%
							}
						%>
					</tr>
					<%
						if (rs != null) {
							rs.close();
						}
						if (rs2 != null) {
							rs.close();
						}
					%>
				</table>
			</td>
		</tr>
	</table>
</body>

</html>
