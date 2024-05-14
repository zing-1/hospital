<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
%>
<html>
<head>
<title>我的工作台</title>
<LINK href="<%=path%>/theme/sophia_style.css" type="text/css" rel="stylesheet">
<link rel="icon" type="text/css" href="images/图标1.png">
<style>
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
</head>
<body >
<br><br><br><br>
<table width="98%" cellspacing="0" cellpadding="0" align="center" border="0" class="margtb5">
  <tr>
    <td  align="center" valign="top" class="padr5" >
	      <h3>欢迎使用医院住宿管理系统</h3>
	</td>
	
  </tr>
</table>

</body>
</html>