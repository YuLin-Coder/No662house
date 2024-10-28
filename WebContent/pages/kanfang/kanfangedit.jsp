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
    <title>预约看房 </title>
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

 if (document.formAdd.sdate.value=="")
  {
    alert("看房日期不能为空！");
    document.formAdd.sdate.focus();
    return false;
  }

 if (document.formAdd.tel.value=="")
  {
    alert("联系电话不能为空！");
    document.formAdd.tel.focus();
    return false;
  }

 if (document.formAdd.sname.value=="")
  {
    alert("中介不能为空！");
    document.formAdd.sname.focus();
    return false;
  }

document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="kanfangupdate" class="form-horizontal" role="form">
<fieldset> <legend>修改预约看房</legend>

<input type="hidden" name="id" value="${c.id}"/>


   <div class="form-group">
   <label for="zfang"  class="col-sm-2 control-label">房屋</label>
       <div class="col-sm-2">
       <select name="zfang" class="form-control">
   <c:forEach items="${zfang}" var="s"  varStatus="ss">
   <option value="${s.id}"<c:if test="${s.id eq c.zfang}"> selected</c:if>>${s.name}</option>
</c:forEach>
		 </select> 
		 </div>
   </div>


<div class="form-group">
   <label class="col-sm-2 control-label" for="sdate">看房日期</label>
    <div class="col-sm-4">
	<input name="sdate" type="text" id="sdate" class="form-control" value="${c.sdate}"/>
	<script>laydate.render({elem: '#sdate'});</script>

</div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="tel">联系电话</label>
      <div class="col-sm-4">
<input name="tel" type="text" id="tel"  value="${c.tel}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="beizhu">备注</label>
      <div class="col-sm-4">
<input name="beizhu" type="text" id="beizhu"  value="${c.beizhu}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="sname">中介</label>
      <div class="col-sm-4">
<input name="sname" type="text" id="sname"  value="${c.sname}"  class="form-control" >
 </div>
	</div>

<input name="zt" type="hidden" value="未审核">

	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			 <input name="forword" type="hidden" value="${param.forword}"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存数据</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>

    </div>
</div>
	 </fieldset>
</form>
</div>
    </body>
 </html>  
  