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
    <title>房屋信息 </title>
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

 if (document.formAdd.xiaoqu.value=="")
  {
    alert("小区名称不能为空！");
    document.formAdd.xiaoqu.focus();
    return false;
  }

 if (document.formAdd.chanquan.value=="")
  {
    alert("产权年限不能为空！");
    document.formAdd.chanquan.focus();
    return false;
  }

 if (document.formAdd.niandai.value=="")
  {
    alert("建筑年代不能为空！");
    document.formAdd.niandai.focus();
    return false;
  }

 if (document.formAdd.chaoxiang.value=="")
  {
    alert("房屋朝向不能为空！");
    document.formAdd.chaoxiang.focus();
    return false;
  }

 if (document.formAdd.zhuangxiu.value=="")
  {
    alert("装修程度不能为空！");
    document.formAdd.zhuangxiu.focus();
    return false;
  }

 if (document.formAdd.mianji.value=="")
  {
    alert("面积不能为空！");
    document.formAdd.mianji.focus();
    return false;
  }

 if (document.formAdd.jiage.value=="")
  {
    alert("价格不能为空！");
    document.formAdd.jiage.focus();
    return false;
  }

 if (document.formAdd.dizhi.value=="")
  {
    alert("地址不能为空！");
    document.formAdd.dizhi.focus();
    return false;
  }

 if (document.formAdd.lianxiren.value=="")
  {
    alert("联系人不能为空！");
    document.formAdd.lianxiren.focus();
    return false;
  }

 if (document.formAdd.tel.value=="")
  {
    alert("联系电话不能为空！");
    document.formAdd.tel.focus();
    return false;
  }

 if (document.formAdd.gongjiao.value=="")
  {
    alert("公车路线不能为空！");
    document.formAdd.gongjiao.focus();
    return false;
  }

 if (document.formAdd.jieshao.value=="")
  {
    alert("小区环境介绍不能为空！");
    document.formAdd.jieshao.focus();
    return false;
  }

document.formAdd.submit();
}
</script><form name="formAdd" method="post" action="<%=path %>/fanginsert" class="form-horizontal" role="form">
	<fieldset> <legend>添加房屋信息</legend>	

<div class="form-group">
             <label class="col-sm-2 control-label" for="name">户型</label>
              <div class="col-sm-4">
<input name="name" type="text" id="name" value="" placeholder="户型" class="form-control" >
 

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
	<input type="text" name="pic" id="pic" readonly class="form-control" placeholder="点击上传"/>
           <button type="button" class="btn  btn-primary" onclick="uppic()">点击上传</button>
			</div>
	</div>


   <div class="form-group">
   <label for="area"  class="col-sm-2 control-label">所在区域</label>
       <div class="col-sm-2">
       <select name="area" class="form-control">
   <c:forEach items="${area}" var="s"  varStatus="ss">
   <option value="${s.name}">${s.name}</option>
</c:forEach>
		 </select> 
		 </div>
   </div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="xiaoqu">小区名称</label>
              <div class="col-sm-4">
<input name="xiaoqu" type="text" id="xiaoqu" value="" placeholder="小区名称" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="chanquan">产权年限</label>
              <div class="col-sm-4">
<input name="chanquan" type="text" id="chanquan" value="" placeholder="产权年限" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="niandai">建筑年代</label>
              <div class="col-sm-4">
<input name="niandai" type="text" id="niandai" value="" placeholder="建筑年代" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="chaoxiang">房屋朝向</label>
              <div class="col-sm-4">
<input name="chaoxiang" type="text" id="chaoxiang" value="" placeholder="房屋朝向" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="zhuangxiu">装修程度</label>
              <div class="col-sm-4">
<input name="zhuangxiu" type="text" id="zhuangxiu" value="" placeholder="装修程度" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="mianji">面积</label>
              <div class="col-sm-4">
<input name="mianji" type="text" id="mianji" value="" placeholder="面积" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="jiage">价格</label>
              <div class="col-sm-4">
<input name="jiage" type="text" id="jiage" value="" placeholder="价格" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="dizhi">地址</label>
              <div class="col-sm-4">
<input name="dizhi" type="text" id="dizhi" value="" placeholder="地址" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="lianxiren">联系人</label>
              <div class="col-sm-4">
<input name="lianxiren" type="text" id="lianxiren" value="" placeholder="联系人" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="tel">联系电话</label>
              <div class="col-sm-4">
<input name="tel" type="text" id="tel" value="" placeholder="联系电话" class="form-control" >
 

 </div>
	</div>

<div class="form-group">
             <label class="col-sm-2 control-label" for="gongjiao">公车路线</label>
              <div class="col-sm-4">
<input name="gongjiao" type="text" id="gongjiao" value="" placeholder="公车路线" class="form-control" >
 

 </div>
	</div>

<input name="uname" type="hidden" value="${sessionScope.loginname}">
<div class="form-group">
   <label class="col-sm-2 control-label" for="jieshao">小区环境介绍</label>
    <div class="col-sm-4">
<textarea name="jieshao" id="jieshao" style="width:500px;height:340px"></textarea>
	                            <script type="text/javascript">
UE.getEditor('jieshao',{toolbars:[['FullScreen', 'Source','Undo', 'Redo','Bold','test']],wordCount:false,elementPathEnabled:false,
            initialFrameHeight:200,initialFrameWidth:340})   </script>
	</div>
	</div>
<input name="addtime" type="hidden" value ="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>">

<input name="zt" type="hidden" value="未审核">

	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			       <input name="forword" type="hidden" value="fangmy"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form>
</div>
    </body>
 </html>  
  