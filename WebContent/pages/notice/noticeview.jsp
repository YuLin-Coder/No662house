<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<jsp:include flush="true" page="/pages/header.jsp"></jsp:include>
   <div style="width:1024px;margin:0 auto">


<table class="table table-hover table-striped table-bordered">
 <tr><th class="text-center">${c.title }</th></tr></table>
<table class="table table-hover table-striped ">
 <thead>


<tr>
<td> ${c.addtime }</td>

</tr>
<tr><td>
<c:if test="${not empty c.pic}">  
   <img src="<%=path %>${c.pic}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
<c:if test="${empty c.pic}">无图</c:if>
</td></tr>

<tr>

<td class="text-left">${c.neirong }</td>
</tr>
</thead></table> </div><jsp:include flush="true" page="/pages/footer.jsp"></jsp:include>