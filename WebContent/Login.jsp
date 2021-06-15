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
	function login(){ 
	var account =document.loginForm.account.value;
	var password =document.loginForm.password.value;
	
    var xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    var url ="servlets/LoginServlet?account="+account+"&password="+password;
    
	xmlHttp.open("POST",url, true); 
	xmlHttp.onreadystatechange=function() { 
	if (xmlHttp.readyState==4) { 
	result.innerHTML = xmlHttp.responseText; 
	} 
	else
		{
		 result.innerHTML += "正在登陆";
		}
	} 
	xmlHttp.send(); 
}
	</script>
	欢迎登陆学生管理系统<hr>
	<div id="result">
	 <form name="loginForm">
	    请您输入账号:<input type="text" name="account"><br>
	  请您输入密码: <input type="password" name="password"><br>  
	  <input type="button" value="登录" onclick="login()">
	 </form>
	</div>
</body>
</html>