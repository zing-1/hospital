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

		
		String loginname = (String) session.getAttribute("loginname");

		sql = "SELECT * FROM doctor where name='" + loginname + "'";
		rs = a.executeQuery(sql);
		
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
						<td width="98%" align="left" class="lan13b">信息查询 > 值班信息查询</td>
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
						<th width="3%" nowrap class="COLLECTION">编号</th>
						<th width="3%" nowrap class="COLLECTION">姓名</th>
						<th width="5%" nowrap class="COLLECTION">职称</th>
						<th width="5%" nowrap class="COLLECTION">职务</th>
						<th width="5%" nowrap class="COLLECTION">科别</th>
						<th width="3%" nowrap class="COLLECTION">工作状态</th>
						<th width="5%" nowrap class="COLLECTION">工作开始时间</th>
						<th width="5%" nowrap class="COLLECTION">工作结束时间</th>
					</tr>
					<div align="right"></div>

					<%
						if (rs.next()) {
					%>
					<tr class="even">
						<td nowrap align="center"><%=rs.getString("number")%></td>
						<td nowrap align="center"><%=rs.getString("name") == null ? "" : rs.getString("name")%></td>

						<td nowrap align="center"><%=rs.getString("zhicheng") == null ? "" : rs.getString("zhicheng")%></td>
						<td nowrap align="center"><%=rs.getString("zhiwu") == null ? "" : rs.getString("zhiwu")%></td>
						<td nowrap align="center"><%=rs.getString("kebie") == null ? "" : rs.getString("kebie")%></td>
						<td nowrap align="center"><%=rs.getString("workstate") == null ? "" : rs.getString("workstate")%></td>
						<td nowrap align="center"><%=rs.getString("worktime") == null ? "" : rs.getString("worktime")%></td>
						<td nowrap align="center"><%=rs.getString("endtime") == null ? "" : rs.getString("endtime")%></td>
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
					%>
				</table>
			</td>
		</tr>
	</table>
</body>

</html>
