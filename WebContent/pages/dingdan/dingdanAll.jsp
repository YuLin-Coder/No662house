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
    <title>订购 </title>
    <!-- Bootstrap -->
	    	<script src="<%=path %>/js/jquery.min.js"></script>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/my.css" rel="stylesheet">
	<script src="<%=path %>/js/bootstrap.min.js"></script>
<script  src="<%=path %>/js/laydate/laydate.js"></script>
	<script type="text/javascript">
		</script>
	      

</head>

<table   class="table table-hover">
 <tr> <th>
<form name="formsea" class="form-inline" role="form" method="post" action="<%=path %>/dingdanAll">


   <div class="form-group">
       <div class="col-sm-2">
       <select name="fang" class="form-control">
<option value="">请选择房屋</option>
<c:forEach items="${fang}" var="s"  varStatus="ss">
   <option value="${s.id}">${s.name}</option>
</c:forEach>
		 </select> 
		 </div>
   </div>
  
  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="orderid" id="orderid" class="form-control" placeholder="订单号"/>
	</div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="yajin" id="yajin" class="form-control" placeholder="押金"/>
	</div>
  </div>

  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="sdate" id="sdate"  class="form-control" onClick="laydate({istime: false, format: 'YYYY-MM-DD'})" placeholder="选择日期"/>
	</div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="tel" id="tel" class="form-control" placeholder="联系电话"/>
	</div>
  </div>

 <button type="submit"  class="btn  btn-primary">查询</button>

          </form>   </th>
        </tr>    
</table>

<table class="table table-hover table-striped table-bordered">
 <tr><th>订购列表 &nbsp; &nbsp; 
</th></tr></table>
<table class="table table-hover table-striped table-bordered">
 <thead>
 <tr>
<th>序号</th>

<th>房屋</th>

<th>订单号</th>

<th>价格</th>

<th>押金</th>

<th>日期</th>

<th>联系电话</th>

<th>备注</th>

<th>状态</th>

</tr></thead>
<c:forEach items="${requestScope.page.data}" var="c"  varStatus="ss">

 <tbody><tr>
<td>${ss.index+1}</td>

<td>${c.fangfk.name}</td>

<td>${c.orderid}</td>

<td>${c.jiage}</td>

<td>${c.yajin}</td>

<td>${c.sdate}</td>

<td>${c.tel}</td>

<td>${c.beizhu}</td>

<td>${c.zt}</td>

</tr></tbody>
</c:forEach> </table><script type="text/javascript">
	       function go(index)
           {
               window.location.href="<%=path %>/dingdanAll?index="+index;
           }
</script>
<table class="table table-hover table-striped table-bordered">
						        <tr>
							        <td>
							                  共<span style="color:#FF0000">${requestScope.page.totle}</span>条记录&nbsp;&nbsp;&nbsp;&nbsp;
							                  每页<span style="color:#FF0000">${requestScope.page.pageSize}</span>条&nbsp;&nbsp;&nbsp;&nbsp;
							                  第<span style="color:#FF0000">${requestScope.page.index}</span>页/共${requestScope.page.totlePage}页&nbsp;&nbsp;&nbsp;&nbsp;
							                <c:if test="${requestScope.page.index==1}">
							                       首&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;上一页&nbsp;&nbsp;&nbsp;&nbsp;
							                </c:if>
							                <c:if test="${requestScope.page.index!=1}">
							                       <a style="color: red" href="#" onclick="go(1)">首&nbsp;&nbsp;页</a>
							                       &nbsp;&nbsp;&nbsp;&nbsp;
							                       <a style="color: red" href="#" onclick="go(${requestScope.page.index-1})">上一页</a>
							                       &nbsp;&nbsp;&nbsp;&nbsp;
							                </c:if>
							                <c:if test="${requestScope.page.index >= requestScope.page.totlePage}">
							                          下一页&nbsp;&nbsp;&nbsp;&nbsp;末&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;
							                </c:if>
							                <c:if test="${requestScope.page.index < requestScope.page.totlePage}">
							                       <a style="color: red" href="#" onclick="go(${requestScope.page.index+1})">下一页</a>
							                       &nbsp;&nbsp;&nbsp;&nbsp;
							                       <a style="color: red" href="#" onclick="go(${requestScope.page.totlePage})">末&nbsp;&nbsp;页</a>
							                </c:if>
							        </td>
						       </tr>
  </table>