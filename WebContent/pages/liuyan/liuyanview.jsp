<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>留言 </title>
    <!-- Bootstrap -->
	    	<script src="<%=path %>/js/jquery.min.js"></script>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/my.css" rel="stylesheet">
	<script src="<%=path %>/js/bootstrap.min.js"></script>
<script src="<%=path %>/js/laydate/laydate.js"></script>
 <script src="<%=path %>/ueditor/ueditor.config.js"></script>
       <script src="<%=path %>/ueditor/ueditor.all.js"></script>
  <script src="<%=path %>/layer/layer.js"></script>


</head>
<body>  
<div class="container">


<table class="table table-hover table-striped table-bordered">
 <tr><th>详情 &nbsp; &nbsp;</th></tr></table>
<table class="table table-hover table-striped table-bordered">
 <thead>


<tr>
<td class="text-right"> 留言标题：</td>
<td>${c.title }</td>
</tr>
<tr>
<td class="text-right"> 内容：</td>
<td>${c.neirong }</td>
</tr>
<tr>
<td class="text-right"> 回复：</td>
<td>${c.huifu }</td>
</tr>
<tr>
<td class="text-right"> 用户：</td>
<td>${c.uname }</td>
</tr>
<tr>
<td class="text-right"> 时间：</td>
<td>${c.addtime }</td>
</tr></thead></table> </body>
 </html> 