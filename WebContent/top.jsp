<%@ page contentType="text/html; charset=GBK" %>
 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
String username = (String)request.getSession().getAttribute("loginname");
String usertype = (String)request.getSession().getAttribute("usertype");
%>
<html>
<head>
<title>����ҳ��</title>
<link rel="icon" type="text/css" href="images/ͼ��1.png">
<link href="images/css1/top_css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#03A8F6">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="194" height="60" align="center" background="images/top_logo.jpg"></td>
    <td align="center" style="background:url(images/top_bg.jpg) no-repeat"><table cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
      <tbody>
        <tr>
          <td width="30" align="left"> </td>
          <td width="320" align="left"> 
		      <span class="top_link"> </span> <a class="top_link" 
            href="#" >��ǰ�û���<%=username%></a> </td>
          <td width="80" align="right" nowrap="nowrap" class="topbar"> </td>
          <td class="topbar">&nbsp;</td>
        </tr>
      </tbody>
    </table>
    <table height="26" border="0" align="left" cellpadding="0" cellspacing="0" class="subbg" NAME=t1>
      <tbody>

      </tbody>
    </table></td>
  </tr>
  <tr height="6">
    <td bgcolor="#1F3A65" background="images/top_bg.jpg"></td>
  </tr>
</table>
<script language="javascript">
 
</script></body>
</html>

