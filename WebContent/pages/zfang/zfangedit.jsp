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

 if (document.formAdd.name.value=="")
  {
    alert("户型不能为空！");
    document.formAdd.name.focus();
    return false;
  }

 if (document.formAdd.addr.value=="")
  {
    alert("位置不能为空！");
    document.formAdd.addr.focus();
    return false;
  }

 if (document.formAdd.mianji.value=="")
  {
    alert("面积大小不能为空！");
    document.formAdd.mianji.focus();
    return false;
  }

 if (document.formAdd.louceng.value=="")
  {
    alert("楼层不能为空！");
    document.formAdd.louceng.focus();
    return false;
  }

 if (document.formAdd.chaoxiang.value=="")
  {
    alert("房屋朝向不能为空！");
    document.formAdd.chaoxiang.focus();
    return false;
  }

 if (document.formAdd.jiaju.value=="")
  {
    alert("家具情况不能为空！");
    document.formAdd.jiaju.focus();
    return false;
  }

 if (document.formAdd.jiage.value=="")
  {
    alert("月租价格不能为空！");
    document.formAdd.jiage.focus();
    return false;
  }

 if (document.formAdd.tel.value=="")
  {
    alert("联系手机不能为空！");
    document.formAdd.tel.focus();
    return false;
  }

 if (document.formAdd.jieshao.value=="")
  {
    alert("小区环境不能为空！");
    document.formAdd.jieshao.focus();
    return false;
  }

document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="zfangupdate" class="form-horizontal" role="form">
<fieldset> <legend>修改租房信息</legend>

<input type="hidden" name="id" value="${c.id}"/>


<div class="form-group">
    <label class="col-sm-2 control-label" for="name">户型</label>
      <div class="col-sm-4">
<input name="name" type="text" id="name"  value="${c.name}"  class="form-control" >
 </div>
	</div>
<script type="text/javascript">
function uppic()
		    {
 layer.open({
   type: 2,
 title: '上传',
  skin: 'layui-layer-rim', //加上边框
  area: ['420px', '340px'], //宽高
  content: '<%=path %>/upload/upload.jsp?upname=pic'
  ,btn: ['关闭'] //只是为了演示
});
		  	     
		    }
</script>
<div class="form-group">
   <label class="col-sm-2 control-label" for="pic">图片</label>
    <div class="col-sm-4">
	<input type="text" name="pic" id="pic" value="${c.pic}" readonly class="form-control" placeholder="点击上传"/>
           <button type="button" class="btn  btn-primary" onclick="uppic()">点击上传</button>
		</div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="addr">位置</label>
      <div class="col-sm-4">
<input name="addr" type="text" id="addr"  value="${c.addr}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="mianji">面积大小</label>
      <div class="col-sm-4">
<input name="mianji" type="text" id="mianji"  value="${c.mianji}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="louceng">楼层</label>
      <div class="col-sm-4">
<input name="louceng" type="text" id="louceng"  value="${c.louceng}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="chaoxiang">房屋朝向</label>
      <div class="col-sm-4">
<input name="chaoxiang" type="text" id="chaoxiang"  value="${c.chaoxiang}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="jiaju">家具情况</label>
      <div class="col-sm-4">
<input name="jiaju" type="text" id="jiaju"  value="${c.jiaju}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="jiage">月租价格</label>
      <div class="col-sm-4">
<input name="jiage" type="text" id="jiage"  value="${c.jiage}"  class="form-control" >
 </div>
	</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="tel">联系手机</label>
      <div class="col-sm-4">
<input name="tel" type="text" id="tel"  value="${c.tel}"  class="form-control" >
 </div>
	</div>
<div class="form-group">
   <label class="col-sm-2 control-label" for="jieshao">小区环境</label>
    <div class="col-sm-4">
						      <textarea name="jieshao" id="jieshao" style="width:500px;height:340px">${c.jieshao }</textarea>
	                            <script type="text/javascript">
UE.getEditor('jieshao',{toolbars:[['FullScreen', 'Source','Undo', 'Redo','Bold','test']],wordCount:false,elementPathEnabled:false,
            initialFrameHeight:200,initialFrameWidth:340})   </script>
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
  