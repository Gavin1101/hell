<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script language="JavaScript">
	function showInfo(){ 
     var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	xmlHttp.open("get", "info.jsp", true); 
	xmlHttp.onreadystatechange=function() { 
	if (xmlHttp.readyState==4) { 
	info.innerHTML = xmlHttp.responseText; 
	} 
	} 
	xmlHttp.send(); 
}
	</script>
  欢迎来到系统！<br>
  <input type="button" value="显示公司信息" onclick="showInfo()">
  <div id="info"></div>
</body>
</html>