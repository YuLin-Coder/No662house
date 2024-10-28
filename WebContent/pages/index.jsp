<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<jsp:include flush="true" page="/pages/header.jsp"></jsp:include>
<script type="text/javascript" src="<%=path%>/pages/themes/js/jquery.pack.js"></script>
<script type="text/javascript" src="<%=path%>/pages/themes/js/superslide.js"></script>

  <div id="slideBox" class="slideBox">
    <div class="hd">
      <ul>
      <c:forEach items="${requestScope.indexlist}" var="c"  varStatus="ss">
      
      <li>${ss.index+1}</li>
      </c:forEach>
      </ul>
    </div>
    <div class="bd">
      <ul>
            <c:forEach items="${requestScope.indexlist}" var="c"  varStatus="ss">
      
<li><a href="<%=path%>/noticeview?id=${c.id}"><img src="<%=path %>${c.pic}" /></a></li>
      
      </c:forEach>
      </ul>
    </div>
  </div>
  
  <div class="big_box">
    <div class="big_title">最新公告</div>
		<MARQUEE onmouseover=this.stop() onmouseout=this.start() scrollDelay=100 direction=up height="99%">

    <ul class="big_list">
               <c:forEach items="${requestScope.indexlist}" var="c"  varStatus="ss">

      <li><a href="<%=path%>/noticeview?id=${c.id}"><strong>${c.title}</strong></a>
        <p></p>
      </li>
  </c:forEach>
	</MARQUEE>
    </ul>
  </div>

<div class="clear"></div>

<div style="padding-top:10px"></div>
<table class="table table-hover table-striped table-bordered">
 <tr><th>出售房屋信息列表 &nbsp; &nbsp; 
</th></tr></table>
<table class="table table-hover table-striped table-bordered">
 <thead>
 <tr>
<th>序号</th>

<th>户型</th>

<th>图片</th>


<th>价格</th>



<th>查看详情</th>

</tr></thead>
<c:forEach items="${fang}" var="c"  varStatus="ss">

 <tbody><tr>
<td>${ss.index+1}</td>

<td>${c.name}</td>

<td>
			<c:if test="${not empty c.pic}">  
				<img src="<%=path %>${c.pic}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
			<c:if test="${empty c.pic}">无图</c:if>
			</td>



<td>${c.jiage}</td>



<td><a href="<%=path %>/fangview?id=${c.id}" class="btn-default" >查看详情</a></td>

</tr></tbody>
</c:forEach> </table>

<div style="padding-top:10px"></div>
<table class="table table-hover table-striped table-bordered">
 <tr><th>出租房屋列表 &nbsp; &nbsp; 
</th></tr></table>
<table class="table table-hover table-striped table-bordered">
 <thead>
 <tr>
<th>序号</th>

<th>户型</th>

<th>图片</th>


<th>价格</th>



<th>查看详情</th>

</tr></thead>
<c:forEach items="${zcs}" var="c"  varStatus="ss">

 <tbody><tr>
<td>${ss.index+1}</td>

<td>${c.name}</td>

<td>
			<c:if test="${not empty c.pic}">  
				<img src="<%=path %>${c.pic}" class="img-rounded" style="width: 100px;height: 100px;"></c:if>
			<c:if test="${empty c.pic}">无图</c:if>
			</td>



<td>${c.jiage}</td>



<td><a href="<%=path %>/zfangview?id=${c.id}" class="btn-default" >查看详情</a></td>

</tr></tbody>
</c:forEach> </table>
  <script type="text/javascript">
	jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:true});
</script>


<jsp:include flush="true" page="/pages/footer.jsp"></jsp:include>