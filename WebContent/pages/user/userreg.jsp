<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<jsp:include flush="true" page="/pages/header.jsp"></jsp:include>

   <div style="width:950px;margin:0 auto">
<table   class="table table-hover">
 <tr> <th>


<script>
function check()
{

 if (document.formAdd.username.value=="")
  {
    alert("用户账号不能为空！");
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
    alert("手机不能为空！");
    document.formAdd.tel.focus();
    return false;
  }

document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="<%=path %>/userreg" class="form-horizontal" role="form">
	<fieldset> <legend>用户注册</legend>	

<div class="form-group">
             <label class="col-sm-2 control-label" for="username">用户账号</label>
              <div class="col-sm-4">
<input name="username" type="text" id="username" class="form-control" placeholder="" >
 

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
 <label class="col-sm-2 control-label" for="ds_password">性别</label>
   <div class="col-sm-4 radio text-left">
    <label>  <input type="radio" name="sex"  value="男" checked> 男 </label>
    <label>  <input type="radio" name="sex"  value="女"> 女 </label>
    
   </div>
</div>
<div class="form-group">
             <label class="col-sm-2 control-label" for="name">姓名</label>
              <div class="col-sm-4">
<input name="name" type="text" id="name" class="form-control" placeholder="" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="tel">手机</label>
              <div class="col-sm-4">
<input name="tel" type="text" id="tel" class="form-control" placeholder="" >
 

 </div>
	</div>

<input name="zt" type="hidden" value="未审核">

     <legend></legend>
		<div class="form-group">
            <div class="col-sm-4 col-sm-offset-2">
			       <input name="forword" type="hidden" value="<%=path%>/index.jsp"/>
           <button type="button" class="btn  btn-primary" onclick="check()">注册</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form></th></tr></table>
</div>
    </body>
 </html>  
  
  