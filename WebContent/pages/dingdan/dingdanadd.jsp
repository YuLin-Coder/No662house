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

 if (document.formAdd.orderid.value=="")
  {
    alert("订单号不能为空！");
    document.formAdd.orderid.focus();
    return false;
  }

 if (document.formAdd.jiage.value=="")
  {
    alert("价格不能为空！");
    document.formAdd.jiage.focus();
    return false;
  }

 if (document.formAdd.yajin.value=="")
  {
    alert("押金不能为空！");
    document.formAdd.yajin.focus();
    return false;
  }

 if (document.formAdd.sdate.value=="")
  {
    alert("日期不能为空！");
    document.formAdd.sdate.focus();
    return false;
  }

 if (document.formAdd.tel.value=="")
  {
    alert("联系电话不能为空！");
    document.formAdd.tel.focus();
    return false;
  }



document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="<%=path %>/dingdaninsert" class="form-horizontal" role="form">
	<fieldset> <legend>添加订购</legend>	




<div class="form-group">
             <label class="col-sm-2 control-label" for="orderid">订单号</label>
              <div class="col-sm-4">
<input name="orderid" type="text" id="orderid" class="form-control" value="<%=String.valueOf(new Date().getTime()) %>" readonly>

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="jiage">价格(万)</label>
              <div class="col-sm-4">
<input name="jiage" type="text" id="jiage" value="${param.jiage}"  readonly placeholder="价格" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="yajin">押金</label>
              <div class="col-sm-4">
<input name="yajin" type="text" id="yajin" value="" placeholder="押金" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
   <label class="col-sm-2 control-label" for="sdate">日期</label>
    <div class="col-sm-4">
<input name="sdate" type="text" readonly value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>" id="sdate" class="form-control"  />
<script>laydate.render({elem: '#sdate'});</script>

</div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="tel">你的联系电话</label>
              <div class="col-sm-4">
<input name="tel" type="text" id="tel" value="" placeholder="联系电话" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="beizhu">备注</label>
              <div class="col-sm-4">
<input name="beizhu" type="text" id="beizhu" value="" placeholder="备注" class="form-control" >
 

 </div>
	</div>
	<input name="sname" type="hidden" value="${param.sname}">
	
<input name="fang" type="hidden" value="${param.id}">

<input name="uname" type="hidden" value="${sessionScope.loginname}">

<input name="zt" type="hidden" value="未确认">

	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			       <input name="forword" type="hidden" value="dingdanmy"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form></th></tr></table>
</div>
    </body>
 </html>  
  