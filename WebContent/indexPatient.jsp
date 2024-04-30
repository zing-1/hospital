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
				.print("<script type='text/javascript'>alert('请正确登录！'); location.href = 'login.jsp'</script>");
	}
%>
<html>
<head>
<title>医院管理系统病人界面</title>

<link href="images/css1/top_css.css" rel="stylesheet" type="text/css">

<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">

<link rel="icon" type="text/css" href="images/图标1.png">
</head>

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
<script src="jquery/jQuery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#accommodation").click(function() {
			// 使用AJAX加载新的页面内容
			$.ajax({
				url : 'patient/show_bed.jsp', // 您要跳转到的页面的URL
				success : function(result) {
					//$("#content").html(result); // 将返回的内容更新到页面中
					$("#right").html(result);
				},
				error : function(xhr, status, error) {
					console.error("AJAX请求失败： ", status, error);
				}
			});
		});

		$("#information").click(function() {
			// 使用AJAX加载新的页面内容
			$.ajax({
				url : 'patient/show_information.jsp', // 您要跳转到的页面的URL
				success : function(result) {
					//$("#content").html(result); // 将返回的内容更新到页面中
					$("#right").html(result);
				},
				error : function(xhr, status, error) {
					console.error("AJAX请求失败： ", status, error);
				}
			});
		});

		$("#uppwd").click(function() {
			// 使用AJAX加载新的页面内容
			$.ajax({
				url : 'pwdpatient.jsp', // 您要跳转到的页面的URL
				success : function(result) {
					//$("#content").html(result); // 将返回的内容更新到页面中
					$("#right").html(result);
				},
				error : function(xhr, status, error) {
					console.error("AJAX请求失败： ", status, error);
				}
			});
		});

		$("#upinformation").click(function() {
			// 使用AJAX加载新的页面内容
			$.ajax({
				url : 'patient/modifyinformation.jsp', // 您要跳转到的页面的URL
				success : function(result) {
					//$("#content").html(result); // 将返回的内容更新到页面中
					$("#right").html(result);
				},
				error : function(xhr, status, error) {
					console.error("AJAX请求失败： ", status, error);
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
	top: 10%;
	left: 16%;
	right: 10;
	bottom: 0;
	width: 84%;
	height: 100%;
}

#table1 {
    margin-left:5px;
    margin-right:5px;
	background: url("images/tablemde.jpg");
	
	
}

.btn {
	width: 130px;
	height: 30px;
	background: url("images/act_btn.gif");
	background-size: 100% 100%;
	border-color: transparent; /*透明*/
}

.top_link {
	COLOR: #1E5494;
	font-weight: bold;
}
@font-face {
	font-family: "MyFont";
	src: url("images/念念清欢体.ttf");
}
h3 {
	font-family: "MyFont";
	font-size: 20px;
	letter-spacing: 20px; /*字体间距*/
	
}
</style>
<body>
	<!-- 顶部  bgcolor="#03A8F6" -->
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
								<td width="320" align="left"><span class="top_link">
										当前用户：<%=username%></span></td>
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
	<!-- 左部 -->
	<div id="left">
		<table width="95%" border="0" cellpadding="0" cellspacing="0"
			id="table1" height="50%">
			<!-- background="images/tablemde.jpg" -->

			<tr>
				<td height="5" background="images/tableline_top.jpg"
					bgcolor="#9BC2ED"></td>
			</tr>
			<tr>
				<td>
					<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
						height="90%" align=right border=0>
						<TBODY>
							<TR>
								<TD height="25"
									style="background: url(images/left_tt.gif) no-repeat">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<TD width="20"></TD>
											<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4);
												height=25>信息查询</TD>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%"
										height="90%" border=0>
										<TBODY>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
													<button id="accommodation" target=main class="btn">住宿信息查询</button>
													<!--
												<A href="patient/show_bed.jsp" target=main>住宿信息查询</A>
												-->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
													<button id="information" target=main class="btn">基本信息查询</button>
													<!--  
												<A href="patient/show_information.jsp" target=main>基本信息查询</A>-->
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
						height="90%" align=right border=0>
						<TBODY>
							<TR>
								<TD height="25"
									style="background: url(images/left_tt.gif) no-repeat">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<TD width="20"></TD>
											<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5);
												height=25>系统管理</TD>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%"
										height="90%" border=0>
										<TBODY>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
													<button id="uppwd" target=main class="btn">修改密码</button> <!--  
												<A href="pwdpatient.jsp" target=main>修改密码</A>-->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23>
													<button id="upinformation" target=main class="btn">修改基本信息</button>
													<!--  
												<A href="patient/modifyinformation.jsp" target=main>修改基本信息</A>-->
												</TD>
											</TR>
											<TR>
												<TD width="2%"><IMG src="images/closed.gif"></TD>
												<TD height=23><A href="#" onclick="loginout();"
													target=main><button class="btn">退出系统</button></A></TD>
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
	<!-- 右部 -->
	<div id="right">
		<table width="100%" cellspacing="0" cellpadding="0" align="center" id="table2"
			border="0" class="margtb5" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top" class="padr5"><br>
					<h3>欢迎使用医院住宿管理系统</h3></td>
			</tr>
		</table>
	</div>
</body>
</html>