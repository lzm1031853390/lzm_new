<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if((model.User)session.getAttribute("user")==null){
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>班级管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />



<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">


  <form action="method!chengjiadd2" method="post"  >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >查看成绩</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%" align="center">
					 
					  <tr>
					    <td nowrap align="right" width="13%">学生信息:</td>
					    <td width="41%">
					   
					     年级：${bean.user.banji.nianji }&nbsp;&nbsp;&nbsp;
					     班级：${bean.user.banji.banjiming }&nbsp;&nbsp;&nbsp;
					     学生姓名：${bean.user.truename }&nbsp;&nbsp;&nbsp;
					   
					   
					    </select>
				        </td>
					    
					  </tr>
					  
					  
					  <tr>
					    <td nowrap align="right" width="13%">科目:</td>
					    <td width="41%">
					    <input name="kemu" class="text" style="width:250px" type="text" size="40" value="${bean.kemu }" readonly="readonly"/>
				        </td>
					    
					  </tr>
					  
					   <tr>
					    <td nowrap align="right" width="13%">成绩:</td>
					    <td width="41%">
					    <input name="chengji" class="text" style="width:250px" type="text" size="40" value="${bean.chengji }" readonly="readonly" />
				        </td>
					    
					  </tr>
					  
					   <input name="id" class="text" style="width:250px" type="hidden" size="40" value="${bean.id }" />
					 
					   
					  
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
		　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
