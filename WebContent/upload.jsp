<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


<form name="Form2" action="/house/filesUpload" method="post"  enctype="multipart/form-data">
<h1>采用multipart提供的file.transfer方法上传文件</h1>
    <p> 
      选择文件:<input type="file" name="files"> 
    <p> 
      选择文件:<input type="file" name="files"> 
    <p> 
      选择文件:<input type="file" name="files"> 
    <p> 
      <input type="submit" value="提交"> 

</form>


</body>
</html>