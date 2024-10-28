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
    <title>中介 </title>
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


<script>
function check()
{

 if (document.formAdd.username.value=="")
  {
    alert("登陆账户不能为空！");
    document.formAdd.username.focus();
    return false;
  }

 if (document.formAdd.pwd.value=="")
     {
      alert("密码不能为空！")
           return false;
     }
	  if (document.formAdd.pwd.value!=document.formAdd.repwd.value)
     {
      alert("输入的密码不一致！");
          return false;
     }

 if (document.formAdd.name.value=="")
  {
    alert("姓名不能为空！");
    document.formAdd.name.focus();
    return false;
  }

 if (document.formAdd.tel.value=="")
  {
    alert("联系电话不能为空！");
    document.formAdd.tel.focus();
    return false;
  }

 if (document.formAdd.addr.value=="")
  {
    alert("地址不能为空！");
    document.formAdd.addr.focus();
    return false;
  }

document.formAdd.submit();
}
</script><div style="width:950px;margin:0 auto">
<table   class="table table-hover">
 <tr> <th><form name="formAdd" method="post" action="<%=path %>/huserreg" class="form-horizontal" role="form">
	<fieldset> <legend>用户注册</legend>	

<div class="form-group">
             <label class="col-sm-2 control-label" for="username">登陆账户</label>
              <div class="col-sm-4">
<input name="username" type="text" id="username" value="" placeholder="登陆账户" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="pwd">登录密码</label>
              <div class="col-sm-4">
<input name="pwd" type="password" id="pwd" class="form-control" placeholder="输入密码" >
 </div>
	</div>
<div class="form-group">
             <label class="col-sm-2 control-label" for="repwd">确认密码</label>
              <div class="col-sm-4">
<input name="repwd" type="password" id="repwd" class="form-control" placeholder="确认密码" >
 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="name">姓名</label>
              <div class="col-sm-4">
<input name="name" type="text" id="name" value="" placeholder="姓名" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
 <label class="col-sm-2 control-label" for="ds_password">性别</label>
   <div class="col-sm-4 radio text-left"">
    <label>  <input type="radio" name="sex"  value="男" checked> 男 </label>
    <label>  <input type="radio" name="sex"  value="女"> 女 </label>
    
   </div>
</div>
<div class="form-group">
             <label class="col-sm-2 control-label" for="tel">联系电话</label>
              <div class="col-sm-4">
<input name="tel" type="text" id="tel" value="" placeholder="联系电话" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="addr">地址</label>
              <div class="col-sm-4">
<input name="addr" type="text" id="addr" value="" placeholder="地址" class="form-control" >
 

 </div>
	</div>

<input name="zt" type="hidden" value="未审核">


     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10">
			       <input name="forword" type="hidden" value="<%=path%>/index.jsp"/>
           <button type="button" class="btn  btn-primary" onclick="check()">注册</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form>
</div>
</th></tr></table>

    </body>
 </html>  
  