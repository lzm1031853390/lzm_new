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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>


<body>
<form name="fom" id="fom" method="post" action="${url }">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">
姓名：<input name="truename" type="text" size="12" value="${truename }"/>

<input name="banjiid" type="hidden" size="12" value="${banjiid }"/>

量化类型：<select name="lianghualeixing">
<option value="">全部类型</option>
<option value="卫生" <c:if test="${lianghualeixing=='卫生' }">selected</c:if> >卫生</option>
<option value="纪律" <c:if test="${lianghualeixing=='纪律' }">selected</c:if> >纪律</option>
<option value="活动" <c:if test="${lianghualeixing=='活动' }">selected</c:if> >活动</option>
</select>



<input name="Submit4" type="submit" class="right-button02" value="查 询" />
</td>
			   	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
               <a href="${url2 }add?banjiid=${banjiid }">添加新量化</a>
	            </td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="center" style="font-size:16px">量化信息管理</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				 
                    <td >内容</td>
                    <td >类型</td>
                    <td >加减分</td>
                    <td >分数</td>
                    <td >姓名</td>
                    <td >备注</td>
                    <td >添加时间</td>

                    
					
					<td >操作</td>
                  </tr>
                  <c:forEach items="${list}" var="bean">
                  <tr bgcolor="#FFFFFF">
				   
                    <td >${bean.lianghualeixing.content }</td>
                    <td >${bean.lianghualeixing.leixing }</td>
                     <td >${bean.lianghualeixing.jiajianfen }</td>
                    <td >${bean.lianghualeixing.fenshu }</td>
                    <td >${bean.user.truename }</td>
                    <td >${bean.beizhu }</td>
                    <td >${fn:substring(bean.createtime,0, 19)}</td>

                       
					
                    <td>
                  
                     <a href="${url2 }update?id=${bean.id }&banjiid=${banjiid }">修改</a>
                     <a href="${url2 }update3?id=${bean.id }&banjiid=${banjiid }">查看</a>
                     <a href="${url2 }delete?id=${bean.id }&banjiid=${banjiid }">删除</a>

					</td>
                  </tr>
                  </c:forEach>
                  
				  
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">${pagerinfo }</td>
                
               
                    
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>