<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><link href="<%=path %>/pages/css/miot.css?ts=170826" rel="stylesheet" type="text/css" />
<link href="<%=path %>/pages/css/login.css?ts=170826" rel="stylesheet" type="text/css" />
<script src="<%=path %>/pages/js/jquery.min.js"></script>
    <style type="text/css">
        .graylayer{position:absolute; width:100%; height:100%; top:0; bottom:0; left:0; right:0; background:rgba(0,0,0,.4);}
    </style>
<title>

</title></head>
<body>
    <form name="form1" method="post" action="#" id="form1">


    <div class="new moganshan">
    <div class="header">
        <div class="wrapper">
            <div class="logo"> </a></div>
            <div class="tools">
                
                
            </div>
            <div class="text">欢迎使用本系统！！！ </div>
        </div>
    </div>
    <div class="content">
        <div class="wrapper">
            <div class="bigpic"></div>
            <div class="main">
                
                    <ul class="login" style="height:350px;">
                        <li class="mb20"><h2> <span>登录</span></h2></li>
                        <li class="mb10"><div><label class="username"></label>
                        
                        <input name="userName" type="text" id="userName" class="text" placeholder="用户名" />
                        
                        </div></li>
                        <li class="mb10"><div><label class="password"></label>
                        
                        <input name="userPw" type="password" id="userPw" class="text" placeholder="密   码" />
                        
                        </div></li>
                        <li class="mb10 valid"><div>
                      <select name="userType" id="userType" tabindex="3" style="padding-left:10px;font-size:14px;width:280px;height:38px;border:1px solid #ccc;; background: #f5f5f5">
	<option value="0">管理员</option>
	<option value="1">用户</option>
	<option value="2">中介</option>

</select></div></li>
                        <li>
                        
                            <input type="button" id="log" name="Button1" value="登录"  class="btn" />
                     	<span id="msg">${msg}</span>   
                        </li>
                        <li class="tr" style="display:block;">
                <a href="<%=path%>/index" style="color:red;font-size:14px">返回首页</a></div>

                        </li>
                    </ul>
                   
               
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="download">
    
    </div>
</div>
    </form><script language="javascript">
$(function(){
$("#log").on('click',function(event) {
var username = $("input[name='userName']").val();
var pwd = $("input[name='userPw']").val();
var userType =  $('#userType').val();
if(username==''){
	alert("用户名不能为空！");
			//$('#msg').addClass('text-danger').text('用户名不能为空！');
			return false;
		}
		if(pwd==''){
				alert("密码不能为空!");

			//$('#msg').addClass('text-danger').text('密码不能为空！');
			return false;
		}
	$.ajax({
			url: '<%=path%>/check',
			type: 'post',
			data: {"username": username,"pwd": pwd,"userType":userType},
			beforeSend: function(){
				$('#msg').addClass('text-success').text('正在登录...');
				//$(".log").attr('disabled',true);
			},
			dataType: 'json',
				success: function(rs){
				var status=rs.status;
				var msg=rs.msg;
			//	alert(msg);
				if(status=="1"){ //登录成功
					alert(msg);
					$('#msg').removeClass('text-danger').addClass('text-success').text('登录成功！');
					if(userType==1)
				location.href='<%=path%>/index';
				else
					location.href='<%=path%>/pages/adminindex.jsp';

				}else{
				alert(msg);
					$('#msg').addClass('text-danger').text('用户名或密码错误！');
				}
			},
			error:function(){
				alert("发生登录异常");
			}
		});

});
});
		
		
	    </script>
</body>
</html>
