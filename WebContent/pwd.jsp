<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.hospital.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
%>
<jsp:useBean id="a" scope="page" class="com.hospital.Dbcoon"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312";>
<title>
change
</title>
<link rel="icon" type="text/css" href="images/ͼ��1.png">
</head>
<body bgcolor="#ffffff">


   <%
   String pwd="";
   int uid = (Integer)session.getAttribute("uid");
  
   String sql="";
     sql="SELECT * FROM loginuser where id="+uid;
     ResultSet rs = a.executeQuery(sql);
     if(rs.next()){
       pwd=rs.getString("loginpwd");
     }
   %>

<SCRIPT LANGUAGE="javascript" >
 function checkform(){
         if(form2.pwd1.value!="<%=pwd%>"||form2.pwd1.value=="")
         {
                alert("�����ԭʼ���벻��ȷ������������");
                form2.pwd1.focus();
                return false;
         }
           if(form2.pwd2.value=="")
           {
                   alert("������������");
                   form2.pwd2.focus();
                 return false;
                  }


            else if(form2.pwd2.value!=form2.pwd3.value)
              {
                 alert("��������������벻ͬ������������");
                 form2.pwd3.focus();
                 return false;
              }
             else
            {
              alert("�����޸ĳɹ�");
              return true;
            }
            return true;
 }
</SCRIPT>
 
 <link rel="stylesheet" type="text/css" media="all" href="<%=path%>/images/css1/ioa.css" />

 <center>
 <form action="update_pwd.jsp" method="POST" name="form2">

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pad5">
  <tr>
	<td valign="top" align="left" class="pad5">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="dqbg margb5">
          <tr>
            <td width="2%" align="right" class="pad05"><img src="<%=path%>/images/img2.gif" width="16" height="16"></td>
            <td width="98%" align="left" class="lan13b">�����޸�</td>
          </tr>
        </table>
		<table width="100%" border="0" cellpadding="1" cellspacing="1" class="table-border margb5">
		 
		  		   <tr>
 
		    <td width="14%" align="right" class="COLLECTION">������ԭ���룺</td>
		    <td width="36%" align="left" class="even padl5">	    <input  type=password name="pwd1"  maxlength="32"
					onfocus="WdatePicker({readOnly:true})" /> </td>
		    
	
		  </tr>
		   <tr>
 
		    <td width="14%" align="right" class="COLLECTION">�����������룺</td>
		    <td width="36%" align="left" class="even padl5"><input type=password name="pwd2"   maxlength="32" class="inputnormal" value=""></td>
		  </tr>
 
	      		   <tr>
 
		    <td width="14%" align="right" class="COLLECTION">ȷ�������룺</td>
		    <td width="36%" align="left" class="even padl5"><input type=password name="pwd3"   maxlength="32" class="inputnormal" value=""></td>
		  </tr>
	  </table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		    <td width="50%" align="right" class="padr5"><input type="submit" onclick="javascript:return(checkform());" name="button" value="�� ��" class="button"></td>
		    <td width="50%" align="left" class="padl5"><input name="button1" type="button" class="button" onClick="history.go(-1);" value="�� ��"></td>
          </tr>
        </table>
    </td>
  </tr>
</table>

 
  </form>
 </center>
</body>
</html>
