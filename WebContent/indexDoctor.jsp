<%@ page contentType="text/html; charset=GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
	String username = (String) request.getSession().getAttribute("loginname");
	String usertype = (String) request.getSession().getAttribute("usertype");

	Object flag_login = session.getAttribute("loginname");
	if (flag_login == null) {
		response.getWriter()
				.print("<script type='text/javascript'>alert('����ȷ��¼��'); location.href = 'login.jsp'</script>");
	}
%>
<html>
<head>
<title>ҽԺ����ϵͳҽ������</title>
<link rel="icon" type="text/css" href="images/ͼ��1.png">
<link href="images/css1/top_css.css" rel="stylesheet" type="text/css">
<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">


<script src="jquery/jQuery.min.js"></script>
<SCRIPT language=JavaScript>
	function showsubmenu(sid) {
		whichEl = eval("submenu" + sid);
		if (whichEl.style.display == "none") {
			eval("submenu" + sid + ".style.display=\"\";");
		} else {
			eval("submenu" + sid + ".style.display=\"none\";");
		}
	}

	function loginout() {
		parent.window.location.href = "login.jsp";
	}
</SCRIPT>
<script type="text/javascript">
$(document).ready(function() {
    $("#work").click(function() {
        // ʹ��AJAX�����µ�ҳ������
        $.ajax({
            url: 'doctor/show_time.jsp', // ��Ҫ��ת����ҳ���URL
            success: function(result) {
                //$("#content").html(result); // �����ص����ݸ��µ�ҳ����
            	$("#right").html(result);
            },
            error: function(xhr, status, error) {
                console.error("AJAX����ʧ�ܣ� ", status, error);
            }
        });
    });
    
    $("#information").click(function() {
        // ʹ��AJAX�����µ�ҳ������
        $.ajax({
            url: 'doctor/show_information.jsp', // ��Ҫ��ת����ҳ���URL
            success: function(result) {
                //$("#content").html(result); // �����ص����ݸ��µ�ҳ����
            	$("#right").html(result);
            },
            error: function(xhr, status, error) {
                console.error("AJAX����ʧ�ܣ� ", status, error);
            }
        });
    });
    
    $("#uppwd").click(function() {
        // ʹ��AJAX�����µ�ҳ������
        $.ajax({
            url: 'pwddoctor.jsp', // ��Ҫ��ת����ҳ���URL
            success: function(result) {
                //$("#content").html(result); // �����ص����ݸ��µ�ҳ����
            	$("#right").html(result);
            },
            error: function(xhr, status, error) {
                console.error("AJAX����ʧ�ܣ� ", status, error);
            }
        });
    });
    
    $("#upinformation").click(function() {
        // ʹ��AJAX�����µ�ҳ������
        $.ajax({
            url: 'doctor/modifyinformation.jsp', // ��Ҫ��ת����ҳ���URL
            success: function(result) {
                //$("#content").html(result); // �����ص����ݸ��µ�ҳ����
            	$("#right").html(result);
            },
            error: function(xhr, status, error) {
                console.error("AJAX����ʧ�ܣ� ", status, error);
            }
        });
    });
    
});
</script>
<style>
#top {
	position: fixed;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 20%;
}

#left {
    background:#16ACFF;
	position: fixed;
	top: 10%;
	left: 0;
	right: 10;
	bottom: 0;
	width: 16%;
	height: 100%;
}

#right {
	position: fixed;
	top: 11%;
	left:16%;
	bottom: 0;
	width: 84%;
	height: 100%;
}

#table1 {
    margin-left:5px;
    margin-right:5px;
	background: url("images/tablemde.jpg");
	
	
}
#table2 {
position: fixed;
	top: 10%;
	left: 16%;
    
}

.btn {
	width: 130px;
	height: 30px;
	background: url("images/act_btn.gif");
	background-size: 100% 100%;
	border-color: transparent; /*͸��*/
}

.top_link {
	COLOR: #1E5494;
	font-weight: bold;
}
@font-face {
	font-family: "MyFont";
	src: url("images/�����延��.ttf");
}
h3 {
	font-family: "MyFont";
	font-size: 20px;
	letter-spacing: 20px; /*������*/
	
}
</style>
</head>
<body>
	<!-- ����  bgcolor="#03A8F6" -->
	<div id="top">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			bgcolor="#03A8F6">
			<tr>
				<td width="194" height="60" align="center"
					background="images/top_logo.jpg"></td>
				<td align="center"
					style="background: url(images/top_bg.jpg) no-repeat">
					<table cellspacing="0" cellpadding="0" border="0" width="100%"
						height="33">
						<tbody>
							<tr>
								<td width="30" align="left"></td>
								<td width="320" align="left">
								<span class="top_link">��ǰ�û���<%=username%>
								</span> </td>
							</tr>
						</tbody>
					</table>

				</td>
			</tr>
			<tr height="6">
				<td bgcolor="#1F3A65" background="images/top_bg.jpg"></td>
			</tr>
		</table>
	</div>

	<!-- �� -->
	<div id="left">
		<table width="95%" border="0" cellpadding="0" cellspacing="0" height="50%" id="table1"
			>
			<tr>
				<td height="5" background="images/tableline_top.jpg"
					bgcolor="#9BC2ED"></td>
			</tr>
			<tr>
				<td>
					<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" height="90%"
						align=right border=0>
						<TBODY>
							<TR>
								<TD height="25"
									style="background: url(images/left_tt.gif) no-repeat">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<TD width="20"></TD>
											<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4);
												height=25>��Ϣ��ѯ</TD>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%" height="90%"
										border=0>
										<TBODY>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
												<button id="work" target=main class="btn">ֵ����Ϣ��ѯ</button>
												<!--  
												<A href="doctor/show_time.jsp"
													target=main>ֵ����Ϣ��ѯ</A>-->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
												<button id="information" target=main class="btn">������Ϣ��ѯ</button>
												<!--  
												<A href="doctor/show_information.jsp"
													target=main>������Ϣ��ѯ</A>-->
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
					<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" height="90%"
						align=right border=0>
						<TBODY>
							<TR>
								<TD height="25"
									style="background: url(images/left_tt.gif) no-repeat">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<TD width="20"></TD>
											<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5);
												height=25>ϵͳ����</TD>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%" height="90%"
										border=0>
										<TBODY>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
												<button id="uppwd" target=main class="btn">�޸�����</button>
												<!--  
												<A href="pwddoctor.jsp" target=main>�޸�����</A>-->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
												<button id="upinformation" target=main class="btn">�޸Ļ�����Ϣ</button>
												<!-- 
												<A href="doctor/modifyinformation.jsp"
													target=main>�޸Ļ�����Ϣ</A> -->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
												<A href="#" onclick="loginout();"
													target=main><button class="btn">�˳�ϵͳ</button></A>
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
	</div>

	<!-- �Ҳ� -->
	<div id="right">
		<table width="84%" cellspacing="0" cellpadding="0" align="center" id="table2"
			border="0" class="margtb5" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top" class="padr5"><br>
					<h3>��ӭʹ��ҽԺס�޹���ϵͳ</h3></td>

			</tr>
		</table>
	</div>
</body>
</html>