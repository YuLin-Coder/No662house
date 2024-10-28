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
 <script src="<%=path %>/ueditor/ueditor.config.js"></script>
       <script src="<%=path %>/ueditor/ueditor.all.js"></script>

<script>
function check()
{

 if (document.formAdd.title.value=="")
  {
    alert("留言标题不能为空！");
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
</script><form name="formAdd" method="post" action="<%=path %>/liuyaninsert" class="form-horizontal" role="form">
	<fieldset> <legend>添加留言</legend>	

<div class="form-group">
             <label class="col-sm-2 control-label" for="title">留言标题</label>
              <div class="col-sm-4">
<input name="title" type="text" id="title" class="form-control" placeholder="" >
 

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


<input name="uname" type="hidden" value="${sessionScope.loginname}">

<input name="addtime" type="hidden" value ="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>">

	</fieldset>  
   <fieldset>
     <legend></legend>
		<div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
			       <input name="forword" type="hidden" value="liuyanmy"/>
           <button type="button" class="btn  btn-primary" onclick="check()">保存</button>
	 <button type="button" class="btn btn-default" onClick="history.back(-1)">返回</button>
    </div>
</div>
	 </fieldset>
</form>
</div>
    </body>
 </html>  
  