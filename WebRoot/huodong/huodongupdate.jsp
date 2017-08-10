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
  <script src="js/Calendar.js"></script>
  
  
  <script type="text/javascript" language="javascript">
function checkform(){

	if (document.getElementById('titleid').value=="")
	{
		alert("活动标题不能为空");
		return false;
	}
	
	if (document.getElementById('shijianid').value=="")
	{
		alert("活动时间不能为空");
		return false;
	}
	
	if (document.getElementById('contentid').value=="")
	{
		alert("活动内容不能为空");
		return false;
	}
	
	
	
	return true;

}


</script>
</head>

<body class="ContentBody">


  <form action="method!huodongupdate2" method="post" onsubmit="return checkform()" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改班级活动</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%" align="center">
					 
					  <tr>
					    <td nowrap align="right" width="13%">活动标题:</td>
					    <td width="41%">
					    <input name="title" id="titleid" class="text" style="width:250px" type="text" size="40" value="${bean.title }" />
				        </td>
					    
					  </tr>
					  <input name="id"  type="hidden" value="${bean.id }" />
					  
					  <tr>
					    <td nowrap align="right" width="13%">活动时间:</td>
					    <td width="41%">
					    <input name="shijian" id="shijianid" class="text" style="width:250px" type="text" size="40" onfocus='setDayHM(this);' value="${bean.shijian }"/>
					   
				        </td>
					    
					  </tr>
					  
					  <tr>
					    <td nowrap align="right" width="13%">活动内容:</td>
					    <td width="41%">
					    <textarea rows="7" cols="50" name="content" id="contentid">${bean.content }</textarea>
				        </td>
					    
					  </tr>
					  
					   
					  
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" name="Submit" value="保存" class="button" />　
			
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
