<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String base = request.getContextPath();
String path = request.getParameter("path");
String msg = request.getParameter("msg");
%>
<script language="javascript">
<c:if test="${path eq null}">
location.href = "<%=base%>/";
</c:if> 
<c:if test="${not empty msg}">
alert("${msg}");
</c:if> 
<c:if test="${not empty path}">
location.href = "${path}";
</c:if> 

</script>