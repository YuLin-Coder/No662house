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
    <title>新闻公告 </title>
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

 if (document.formAdd.title.value=="")
  {
    alert("标题不能为空！");
    document.formAdd.title.focus();
    return false;
  }

 if (document.formAdd.neirong.value=="")
  {
    alert("内容不能为空！");
    document.formAdd.neirong.focus();
    return false;
  }

document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="<%=path %>/noticeinsert" class="form-horizontal" role="form">
	<fieldset> <legend>添加新闻公告</legend>	

<div class="form-group">
             <label class="col-sm-2 control-label" for="title">标题</label>
              <div class="col-sm-4">
<input name="title" type="text" id="title" class="form-control" placeholder="" >
 

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
	<input type="text" name="pic" id="pic" class="form-control" placeholder="点击上传"/>
           <button type="button" class="btn  btn-primary" onclick="uppic()">点击上传</button>
			</div>
	</div>
<div class="form-group">
   <label class="col-sm-2 control-label" for="neirong">内容</label>
    <div class="col-sm-4">
<textarea name="neirong" id="neirong" ></textarea>
	                            <script type="text/javascript">
UE.getEditor('neirong',{toolbars:[['FullScreen', 'Source','Undo', 'Redo','Bold','test']],wordCount:false,elementPathEnabled:false,
            initialFrameHeight:100,initialFrameWidth:340})   </script>
	</div>
	</div>
<input name="addtime" type="hidden" value ="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>">

	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			       <input name="forword" type="hidden" value="noticelist"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form>
</div>
    </body>
 </html>  
  