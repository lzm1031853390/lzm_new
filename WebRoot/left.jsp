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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>智慧校园班级管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/left.gif);
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02">${user.truename }</span>
					<br/>你的角色:
			
					<c:if test="${user.role==2}">系统管理员</c:if>
					<c:if test="${user.role==1}">老师</c:if>
					<c:if test="${user.role==0}">学生</c:if>
					
					</td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="method!loginout" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		
      
      <c:if test="${user.role==2}">
      
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img21" id="img21" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('21');" >班级管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree21" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!nianjilist" target="mainFrame" class="left-font03" onClick="tupian('21');">年级管理</a></td>
				</tr>
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist" target="mainFrame" class="left-font03" onClick="tupian('21');">班级管理</a></td>
				</tr>
      </table>
      
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >用户管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist" target="mainFrame" class="left-font03" onClick="tupian('1');">老师用户管理</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist2" target="mainFrame" class="left-font03" onClick="tupian('1');">学生用户管理</a></td>
				</tr>
				
				
      </table>
      
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img22" id="img22" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('22');" >成绩管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree22" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist2" target="mainFrame" class="left-font03" onClick="tupian('22');">成绩管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist3" target="mainFrame" class="left-font03" onClick="tupian('22');">成绩分析</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist4" target="mainFrame" class="left-font03" onClick="tupian('22');">学分管理</a></td>
				</tr>
				
				
				
				
				
      </table>
      
      
      

		<table id="subtree202" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!lianghualeixinglist" target="mainFrame" class="left-font03" onClick="tupian('202');">量化类型管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist5" target="mainFrame" class="left-font03" onClick="tupian('202');">量化管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banjilist6" target="mainFrame" class="left-font03" onClick="tupian('202');">量化分析</a></td>
				</tr>
				
				
				
				
				
				
				
      </table>
      
       
      
      
      
      
      
      
      
      
      </c:if>
      
      
      <c:if test="${user.role==1}">
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >用户管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist4" target="mainFrame" class="left-font03" onClick="tupian('1');">个人信息查询</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist5" target="mainFrame" class="left-font03" onClick="tupian('1');">学生信息查询</a></td>
				</tr>
				
				
      </table>
      
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img22" id="img22" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('22');" >成绩管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree22" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!chengjilist2" target="mainFrame" class="left-font03" onClick="tupian('22');">成绩管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!chengjifenxilist2" target="mainFrame" class="left-font03" onClick="tupian('22');">成绩分析</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist6" target="mainFrame" class="left-font03" onClick="tupian('22');">学分管理</a></td>
				</tr>
				
      </table>
      
      
		<table id="subtree202" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!lianghualist3" target="mainFrame" class="left-font03" onClick="tupian('202');">量化管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!lianghuafenxilist2" target="mainFrame" class="left-font03" onClick="tupian('202');">量化分析</a></td>
				</tr>
				
				
				
				
				
				
				
      </table>
      
      
    
		<table id="subtree203" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!huodonglist" target="mainFrame" class="left-font03" onClick="tupian('203');">班级活动管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banfeilist" target="mainFrame" class="left-font03" onClick="tupian('203');">班费管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banhuilist" target="mainFrame" class="left-font03" onClick="tupian('203');">班会管理</a></td>
				</tr>
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!liuyanlist" target="mainFrame" class="left-font03" onClick="tupian('203');">留言板</a></td>
				</tr>
		
      </table>
      
      
      
      
       </c:if>
       
       
       <c:if test="${user.role==0}">
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >用户管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist7" target="mainFrame" class="left-font03" onClick="tupian('1');">个人信息查询</a></td>
				</tr>
				
				
				
      </table>
      
      
      
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img22" id="img22" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('22');" >成绩查询</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree22" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!chengjilist3" target="mainFrame" class="left-font03" onClick="tupian('22');">成绩查询</a></td>
				</tr>

				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!userlist8" target="mainFrame" class="left-font03" onClick="tupian('22');">学分查询</a></td>
				</tr>

				
      </table>
      
      

		<table id="subtree202" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!lianghualist4" target="mainFrame" class="left-font03" onClick="tupian('202');">量化查询</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu202" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!lianghuafenxilist3" target="mainFrame" class="left-font03" onClick="tupian('202');">量化分析查询</a></td>
				</tr>

      </table>
      
     
     

		<table id="subtree203" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!huodonglist2" target="mainFrame" class="left-font03" onClick="tupian('203');">班级活动查询</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banfeilist2" target="mainFrame" class="left-font03" onClick="tupian('203');">班费管理</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!banhuilist2" target="mainFrame" class="left-font03" onClick="tupian('203');">班会管理</a></td>
				</tr>
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu203" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!liuyanlist" target="mainFrame" class="left-font03" onClick="tupian('203');">留言板</a></td>
				</tr>
		
      </table>
     
      
      
      
      
       </c:if>
       
      
		

      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img6" id="img6" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('6');" >个人账号管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu12" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="method!changepwd" target="mainFrame" class="left-font03" onClick="tupian('12');">修改账号密码</a></td>
				</tr>
				
				
				
      </table>
		

		

	  </TD>
  </tr>
  
</table>
</body>
</html>
