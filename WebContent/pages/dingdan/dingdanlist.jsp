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
<form name="formsea" class="form-inline" role="form" method="post" action="<%=path %>/dingdanlist">


  
  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="orderid" id="orderid" class="form-control" placeholder="订单号"/>
	</div>
  </div>
  


  <div class="form-group">
    <div class="col-sm-2">
	<input type="text" name="sdate" id="sdate"  class="form-control" placeholder="选择日期"/>
	<script>laydate.render({elem: '#sdate'});</script>
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
 <!--
 <button type="button" onclick="location.href='<%=path %>/dingdanadd'" class="btn  btn-primary">添加</button>
 -->
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
<th>操作</th></tr></thead>
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

<td> 
 <c:if test="${c.zt=='未确认'}">
 <a href="<%=path %>/dingdanupdate?id=${c.id}&zt=已交易&forword=dingdanlist" class="btn btn-info">确认交易</a> |
 </c:if>
 <a href="dingdandel?id=${c.id}&forword=dingdanlist" onClick="return confirm('您确定要删除吗?')" class="btn btn-default">删除</a>
 </td>
</tr></tbody>
</c:forEach> </table><script type="text/javascript">
	       function go(index)
           {
               window.location.href="<%=path %>/dingdanlist?index="+index;
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