<%@ page contentType="text/html; charset=GBK"%>
<head>
	<title>����Ա���湦��ѡ��</title>
	<link rel="icon" type="text/css" href="images/ͼ��1.png">
	<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}

function loginout(){
   parent.window.location.href = "login.jsp";
}
</SCRIPT>
<body bgcolor="16ACFF">

	<%
		String usertype = (String) session.getAttribute("usertype");
	%>
	<table width="98%" border="0" cellpadding="0" cellspacing="0"
		background="images/tablemde.jpg">
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4);
											height=25>
											ֵ��ҽ������
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="doctor/list_user.jsp" target=main>ֵ��ҽ����Ϣ��ѯ</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="doctor/adduser.jsp" target=main>ֵ��ҽ����Ϣ���</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(16);
											height=25>
											������Ϣ����
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu16 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="bed/list_bed.jsp" target=main>������Ϣ��ѯ</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="bed/addbed.jsp" target=main>������Ϣ���</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>



		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(7);
											height=25>
											������Ϣ����
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu7 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="patient/list_patient.jsp" target=main>������Ϣ��ѯ</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="patient/addpatient.jsp" target=main>������Ϣ���</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>


		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<!-- 
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(19);
											height=25>
											�շ���Ϣ����
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu19 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="cost/list_cost.jsp" target=main>�շ���Ϣ��ѯ</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="cost/addcost.jsp" target=main>�շ���Ϣ���</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr> -->
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(9);
											height=25>
											ͳ�Ʒ���
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu9 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="query/list_bedinfo.jsp" target=main>���������ʲ�ѯ</A>
											</TD>
										</TR>
										<!--  
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="query/list_costinfo.jsp" target=main>�շ���ϸ��ѯ</A>
											</TD>
										</TR>-->
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>



		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5);
											height=25>
											ϵͳ����
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="pwd.jsp" target=main>�޸�����</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="#" onclick="loginout();" target=main>�˳�ϵͳ</A>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>

		<tr>
			<td height="5" background="images/tableline_bottom.jpg"></td>
		</tr>
	</table>
</body>
</html>