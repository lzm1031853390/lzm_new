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

	if (document.getElementById('beizhuid').value=="")
	{
		alert("备注不能为空");
		return false;
	}
	

	
	return true;

}


</script>
</head>

<body class="ContentBody">


  <form action="method!lianghuaupdate2" method="post" onsubmit="return checkform()"  >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改新量化信息</th>
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
					     
					  
				        </td>
					    
					  </tr>
					  
					  <tr>
					    <td nowrap align="right" width="13%">量化类型信息:</td>
					    <td width="41%">
					     类型：${bean.lianghualeixing.leixing }&nbsp;&nbsp;&nbsp;
					      内容：${bean.lianghualeixing.content }&nbsp;&nbsp;&nbsp;
					      加减分：${bean.lianghualeixing.jiajianfen }&nbsp;&nbsp;&nbsp;
					      分数：${bean.lianghualeixing.fenshu }&nbsp;&nbsp;&nbsp;
					    
					   
				        </td>
					    
					  </tr>
					  
					  
					   <tr>
					    <td nowrap align="right" width="13%">备注:</td>
					    <td width="41%">
					   <textarea rows="7" cols="50" name="beizhu" id="beizhuid">${bean.beizhu }</textarea>
				        </td>
					    
					  </tr>
					  
					  
					 <input type="hidden" name="id"  value="${bean.id }"/>
					   <input name="banjiid" type="hidden" size="12" value="${banjiid }"/>
					  
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
