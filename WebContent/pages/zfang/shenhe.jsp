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
    <title>租房信息 </title>
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
 if (document.formAdd.yijian.value=="")
  {
    alert("意见不能为空！");
    document.formAdd.yijian.focus();
    return false;
  }
document.formAdd.submit();
}
</script>

<form name="formAdd" method="post" action="<%=path %>/zfangupdate" class="form-horizontal" role="form">
<fieldset> <legend>审核</legend>
<input type="hidden" name="id" value="${param.id}"/>
<div class="form-group">
   <label class="col-sm-2 control-label" for="shenhe">是否通过</label>
    <div class="col-sm-4">
  <label>  <input type="radio" name="zt"  value="通过" checked> 通过 </label>
    <label>  <input type="radio" name="zt"  value="拒绝">拒绝</label>
</div>
	</div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="yijian">意见</label>
      <div class="col-sm-4">
<input name="yijian" type="text" id="yijian" class="form-control"  value="" >
 </div>
	</div>
	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			 <input name="forword" type="hidden" value="${param.forword}"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>

    </div>
</div>
	 </fieldset>
</form>
</div>
    </body>
 </html>