<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%><jsp:include flush="true" page="/pages/header.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>房屋信息 </title>
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


<table class="table table-hover table-striped table-bordered">
 <tr><th class="text-center"> <c:if test="${sessionScope.userType==1}">
 <a href="<%=path %>/dingdanadd?id=${c.id}&jiage=${c.jiage }&sname=${c.uname }" class="btn btn-info">我要订购</a> &nbsp; &nbsp;
 </c:if>
 </th></tr></table>
<table class="table table-hover table-striped table-bordered">
 <thead>

<tr>
<td class="text-right"> 户型：</td>
<td>${c.name }</td>
</tr>
<c:if test="${not empty c.pic}">  <tr><td colspan=2>

   <img src="<%=path %>${c.pic}" class="img-rounded" style="width: 300px;height: 300px;">

</td></tr></c:if><c:if test="${empty c.pic}"></c:if>

<tr>
<td class="text-right"> 所在区域：</td>
<td>${c.area }</td>
</tr>
<tr>
<td class="text-right"> 小区名称：</td>
<td>${c.xiaoqu }</td>
</tr>
<tr>
<td class="text-right"> 产权年限：</td>
<td>${c.chanquan }</td>
</tr>
<tr>
<td class="text-right"> 建筑年代：</td>
<td>${c.niandai }</td>
</tr>
<tr>
<td class="text-right"> 房屋朝向：</td>
<td>${c.chaoxiang }</td>
</tr>
<tr>
<td class="text-right"> 装修程度：</td>
<td>${c.zhuangxiu }</td>
</tr>
<tr>
<td class="text-right"> 面积：</td>
<td>${c.mianji }</td>
</tr>
<tr>
<td class="text-right"> 价格：</td>
<td>${c.jiage } 万</td>
</tr>
<tr>
<td class="text-right"> 地址：</td>
<td>${c.dizhi }</td>
</tr>
<tr>
<td class="text-right"> 联系人：</td>
<td>${c.lianxiren }</td>
</tr>
<tr>
<td class="text-right"> 联系电话：</td>
<td>${c.tel }</td>
</tr>
<tr>
<td class="text-right"> 公车路线：</td>
<td>${c.gongjiao }</td>
</tr>
<tr>
<td class="text-right"> 发布人：</td>
<td>${c.uname }</td>
</tr>
<tr>
<td class="text-right"> 小区环境介绍：</td>
<td>${c.jieshao }</td>
</tr>
<tr>
<td class="text-right"> 发布时间：</td>
<td>${c.addtime }</td>
</tr>
<tr>
<td class="text-right"> 状态：</td>
<td>${c.zt }</td>
</tr></thead></table> </body>
 </html> 