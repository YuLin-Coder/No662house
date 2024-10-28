<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>头部</title>
<link href="./css/left.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
            function logout()
			{
			   	if(confirm("确定要退出本系统吗??"))
			   	{
            		window.parent.location="<%=path %>/userLogout";   
				   	
			   	}
			} 

        </script>
</head>
<body>
<div class="adminheader">
<div class="logo"><a href="#" target="_blank"> 后台管理系统</a>&nbsp;&nbsp;&nbsp;&nbsp;<span>你好：<strong
<c:if test="${sessionScope.userType==0}">
          
	                </c:if>
	                  ${sessionScope.loginname}
	            </strong>,欢迎登录管理后台！<a href="#" onclick="logout()" style=" font-size:14px">退出系统</a></span></div>

</div>
</body>
</html>