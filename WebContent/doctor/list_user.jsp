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

<title>�û���Ϣ�б�</title>
</head>
<body bgcolor="#ffffff">
	<br>

	<%
		int PageSize = 6;
		int Page = 1;
		int totalPage = 1;
		int totalrecord = 0;

		String sql = null;
		ResultSet rs = null;
		String ysxm = DataFormat.convert(request.getParameter("ysxm"));

		//���������
		if (ysxm != null) {
			sql = "SELECT count(*) as recordcount FROM doctor where name like '%" + ysxm.trim() + "%'";
		} else {
			sql = "SELECT count(*) as recordcount FROM doctor";
		}

		rs = a.executeQuery(sql);

		if (rs.next())
			totalrecord = rs.getInt("recordcount");
		//�����¼
		if (ysxm != null) {
			sql = "SELECT * FROM doctor where name  like '%" + ysxm.trim() + "%'";
		} else {
			sql = "SELECT * FROM doctor";
		}

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
						<td width="98%" align="left" class="lan13b">ҽ������ > ҽ����Ϣ����</td>
					</tr>
				</table>
				<form action="list_user.jsp" method="post">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						class="dqbg margb5">
						<tr>
							<td align="center" class="lan13b">ҽ�������� <input name="ysxm"
								value="" maxlength="32" /> <input type="submit" name="button"
								value="��ѯ" class="button">

							</td>

						</tr>
					</table>
				</form>
				<table border="0" cellspacing="0" cellpadding="0" class="margb5">
					<tr>
						<td width="61" align="left" class="padr5"><input type="image"
							src="<%=path%>/images/pic-13.jpg"
							onClick="window.location.href='adduser.jsp'"></td>

					</tr>
				</table>

				<table width="100%" border="0" cellspacing="1" cellpadding="0"
					class="table-border margb5">
					<tr>
						<td colspan="11" align="left" class="tabbg"><img
							src="<%=path%>/images/main_pic_1.gif" align="absmiddle"
							width="16" height="16">&nbsp;<span class="lan13b"></span></td>
					</tr>
					<tr>

						<th width="3%" nowrap class="COLLECTION">���</th>
						<th width="3%" nowrap class="COLLECTION">����</th>
						<th width="3%" nowrap class="COLLECTION">�Ա�</th>
						<th width="5%" nowrap class="COLLECTION">ְ��</th>
						<th width="5%" nowrap class="COLLECTION">ְ��</th>
						<th width="7%" nowrap class="COLLECTION">�Ʊ�</th>
						<!--  
						<th width="7%" nowrap class="COLLECTION">��������</th>-->
						<th width="7%" nowrap class="COLLECTION">������ʼʱ��</th>
						<th width="7%" nowrap class="COLLECTION">��������ʱ��</th>
						<th width="3%" nowrap class="COLLECTION">����״̬</th>
						<th width="7%" nowrap class="COLLECTION">����</th>

					</tr>

					<%
						if (totalrecord % PageSize == 0)// ����ǵ�ǰҳ���������
							totalPage = totalrecord / PageSize;
						else // �����󻹿���һҳ
							totalPage = (int) Math.floor(totalrecord / PageSize) + 1;
						if (totalPage == 0)
							totalPage = 1;
						if (request.getParameter("Page") == null || request.getParameter("Page").equals(""))
							Page = 1;
						else
							try {
								Page = Integer.parseInt(request.getParameter("Page"));
							} catch (java.lang.NumberFormatException e) {
								// �����û����������ַ��ֱ������Page=sdfsdfsdf����ɵ��쳣
								Page = 1;
							}
						if (Page < 1)
							Page = 1;
						if (Page > totalPage)
							Page = totalPage;
						rs.absolute((Page - 1) * PageSize + 1);
					%>
					<%
						for (int iPage = 1; iPage <= PageSize; iPage++) {
							if (totalrecord == 0)
								break;
							int id = rs.getInt("id");
					%>
					<div align="right"></div>
					</td>
					</tr>

					<tr class="even">
						<td nowrap align="center"><%=rs.getString("number")%></td>
						<td nowrap align="center"><%=rs.getString("name")%></td>
						<td nowrap align="center"><%=rs.getString("sex") == null ? "" : rs.getString("sex")%></td>
						<td nowrap align="center"><%=rs.getString("zhicheng") == null ? "" : rs.getString("zhicheng")%></td>
						<td nowrap align="center"><%=rs.getString("zhiwu") == null ? "" : rs.getString("zhiwu")%></td>
						<td nowrap align="center"><%=rs.getString("kebie") == null ? "" : rs.getString("kebie")%></td>
						<td nowrap align="center"><%=rs.getString("worktime") == null ? "" : rs.getString("worktime")%></td>
						<td nowrap align="center"><%=rs.getString("endtime") == null ? "" : rs.getString("endtime")%></td>
						<td nowrap align="center"><%=rs.getString("workstate") == null ? "" : rs.getString("workstate")%></td>

						<td nowrap align="center"><a href="modifyuser.jsp?id=<%=id%>">�޸�</a>
							| <a href="deleteuser.jsp?id=<%=id%>">ɾ��</a></td>

					</tr>
					<%
						if (!rs.next())
								break;
						}
					%>

					<FORM Action="list_user.jsp" Method="GET">

						<tr>
							<td colspan="11" align="right" class="tabbg hei12">
								<%
									if (Page != 1) {
										out.print("   <A HREF=list_user.jsp?Page=1> ��һҳ </A>");
										out.print("   <A HREF=list_user.jsp?Page=" + (Page - 1) + "> ��һҳ </A>");
									}
									if (Page != totalPage) {
										out.print("   <A HREF=list_user.jsp?Page=" + (Page + 1) + "> ��һҳ </A>");
										out.print("   <A HREF=list_user.jsp?Page=" + totalPage + "> ���һҳ </A>");
									}
								%> &nbsp;����ҳ����<input TYPE="TEXT" Name="Page" SIZE="3"> ҳ��:<font
								COLOR="Red"><%=Page%>/<%=totalPage%></font> <INPUT TYPE="submit"
								value="�ύ">



							</td>
						</tr>
				</table>

			</td>
		</tr>
	</table>

	</FORM>

</body>

</html>
