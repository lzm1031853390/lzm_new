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

 <script type="text/javascript" language="javascript">
function checkform(){

  if (document.getElementById('kemuid').value=="")
	{
		alert("科目不能为空");
		return false;
	}
	
	if (document.getElementById('chengjiid').value=="")
	{
		alert("成绩不能为空");
		return false;
	}
	
	var reg1 =  /^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$/;
 
    var reg2 =  /^\d+$/;
 
    var flag = 0;
  
   if(document.getElementById('chengjiid').value.match(reg1) != null){
 	 flag=1
   }
  
   if(document.getElementById('chengjiid').value.match(reg2) != null){
 	 flag=1
    }
   
	if (flag==0)
	{
		alert("成绩必须为正数");
		return false;
	}
}



</script>

</head>

<body class="ContentBody">


  <form action="method!chengjiadd20" method="post"  onsubmit="return checkform()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >添加新成绩</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%" align="center">
					 
					  <tr>
					    <td nowrap align="right" width="13%">选择学生:</td>
					    <td width="41%">
					    <select name="user">
					    <c:forEach items="${userlist}" var="bean22">
					     <option value="${bean22.id }">
					     年级：${bean22.banji.nianji }&nbsp;&nbsp;&nbsp;
					     班级：${bean22.banji.banjiming }&nbsp;&nbsp;&nbsp;
					      	学生姓名：${bean22.truename }&nbsp;&nbsp;&nbsp;
					     </option>
					    </c:forEach>
					   
					    </select>
				        </td>
					    
					  </tr>
					  
					  
					  <tr>
					    <td nowrap align="right" width="13%">科目:</td>
					    <td width="41%">
					    <input name="kemu" id="kemuid" class="text" style="width:250px" type="text" size="40" />
				        </td>
					    
					  </tr>
					  
					   <tr>
					    <td nowrap align="right" width="13%">成绩:</td>
					    <td width="41%">
					    <input name="chengji" id="chengjiid" class="text" style="width:250px" type="text" size="40" />
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
