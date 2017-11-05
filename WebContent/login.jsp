<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>登陆博客</title>
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<link href="${pageContext.request.contextPath}/css//login.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"" rel="stylesheet">


</head>
<body>
	<div class="htmleaf-container">
		<div class="demo form-bg" style="padding: 20px 0;">
		        <div class="container">
		            <div class="row">
		                <div class="col-md-offset-2 col-md-8">
		                    <form class="form-horizontal" action ="login" method="post">
		                        <span class="heading">用户登录</span>
		                        <div class="form-group">
		                            <input type="text"  value="${userName}" name="userName" class="form-control" id="inputEmail3" placeholder="用户名或电子邮件">
		                            <i class="fa fa-user"></i>
		                        </div>
		                        <div class="form-group help">
		                            <input type="password" value="${password}" name="password" class="form-control" id="inputPassword3" placeholder="密　码">
		                            <i class="fa fa-lock"></i>
		                            <a href="#" class="fa fa-question-circle"></a>
		                        </div>
		                        <div class="form-group">
		                            <div class="main-checkbox">
		                                <input type="checkbox" value="None" id="checkbox1" name="check"/>
		                                <label for="checkbox1"></label>
		                            </div>
		                            <span class="text">Remember me</span>
		                            <button type="submit" class="btn btn-default">登录</button>
		                            <font color="red">${error }</font>
		                        </div>
		                    </form>
		                </div>
		            </div>
		        </div>
		    </div>
	</div>
	
</body>
</html>