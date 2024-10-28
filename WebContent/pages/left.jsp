<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>标题</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="./css/left.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">
$(function(){
  $('p').each(function(i){
    $(this).click(function(){
      $('p:not(:eq('+i+'))').next().hide();
      $('p:not(:eq('+i+'))').find('span').text("+");  
      $(this).next().show();  
      $(this).find('span').text("-"); 
    })
  })
})

</script>
</head>
<body id="adminleft">
<div class="leftnav">
<c:if test="${sessionScope.userType==0}">



<!--开始-->
 <p><span>+</span> 房屋区域管理</p>
<div> 
<a target="manFrame" href="<%=path %>/arealist">房屋区域管理</a> 
 <a target="manFrame" href="<%=path %>/areaadd">房屋区域添加</a> 
 </div><!--结束-->


<!--开始-->
 <p><span>+</span> 出售房屋审核</p>
<div> 
<a target="manFrame" href="<%=path %>/fanglist">出售信息审核</a> 
 </div><!--结束-->
<!--开始-->
 <p><span>+</span> 出租房屋审核</p>
<div> 
<a target="manFrame" href="<%=path %>/zfanglist">出租信息审核</a> 
 </div><!--结束-->
<!--开始-->
 <p><span>+</span> 留言管理</p>
<div> 
<a target="manFrame" href="<%=path %>/liuyanlist">留言管理</a> 
 </div><!--结束-->

<!--开始-->
 <p><span>+</span> 新闻公告管理</p>
<div> 
<a target="manFrame" href="<%=path %>/noticelist">新闻公告管理</a> 
 <a target="manFrame" href="<%=path %>/noticeadd">新闻公告添加</a> 
 </div><!--结束-->
<!--开始-->
 <p><span>+</span> 管理员管理</p>
<div> 
<a target="manFrame" href="<%=path %>/adminlist">管理员管理</a> 
 <a target="manFrame" href="<%=path %>/adminadd">管理员添加</a> 
 </div><!--结束-->
 <!--开始-->
 <p><span>+</span> 中介管理</p>
<div> 
<a target="manFrame" href="<%=path %>/huserlist">中介管理</a> 
 </div><!--结束-->
<!--开始-->
 <p><span>+</span> 用户管理</p>
<div> 
<a target="manFrame" href="<%=path %>/userlist">用户管理</a> 
 </div><!--结束-->
</c:if>
<c:if test="${sessionScope.userType==2}">
 <p><span>+</span> 购房订单管理</p>
<div> 
<a target="manFrame" href="<%=path %>/dingdanlist">购房订单管理</a> 
 </div><!--结束-->

<!--开始-->
 <p><span>+</span> 出售房屋管理</p>
<div> 
<a target="manFrame" href="<%=path %>/fangmy">房屋信息管理</a> 
 <a target="manFrame" href="<%=path %>/fangadd">房屋信息添加</a> 
 </div><!--结束-->

<!--开始-->
 <p><span>+</span> 预约看房管理</p>
<div> 
<a target="manFrame" href="<%=path %>/kanfanglist">预约看房管理</a> 
 </div><!--结束-->

<!--开始-->
 <p><span>+</span> 租房信息管理</p>
<div> 
<a target="manFrame" href="<%=path %>/zfangmy">租房信息管理</a> 
 <a target="manFrame" href="<%=path %>/zfangadd">租房信息添加</a> 
 </div><!--结束-->
 <!--开始-->
 <p><span>+</span>修改个人资料</p>
<div> 
<a target="manFrame" href="<%=path %>/huserinfo?${sessionScope.loginid}">修改个人资料</a> 
 </div><!--结束-->
</c:if>

</div>
</body>
</html>