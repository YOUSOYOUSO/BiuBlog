<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.List"%>
<%@ page import="model.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css//blog.css" rel="stylesheet">
<title>Bearbread</title>
</head>
<body>
<header>
    <div class="blog-masthead" >
      <div class="container">
        <nav class="blog-nav">
        <a class="blog-nav-icon" href=""><img src="./images/icon.png" width="22px" height="22px"></img></a>
		<ul class="blog-nav nav nav-pills" >
		    <li class=" "><a class="blog-nav-item ">主页</a></li>
		    <li class=" "><a class="blog-nav-item ">目录</a></li>
		    <li class=" "><a class="blog-nav-item ">关于</a></li>
	    </ul>
        </nav>
      </div>
    </div>
</header>
    <ul>  
    <% 
    String text = (String)request.getAttribute("text");  
    List<Article> articleList = (List<Article>)request.getAttribute("articleList");    
    if(articleList!= null){  
        for(Article article:articleList){  
            	String title1=article.getArticle_title(); 
            	String text1=article.getArticle_text();
            %>  
				<p><%=title1 %></p>
				<p><%=text1 %></p>
            <%
        }  
    }  
    %>
    </ul>   

<div class="container">
      <div class="blog-header">
        <h2 class="blog-title">Bearbread</h2>
      </div>
      <div class="row">
        <div class="col-sm-8 blog-main">
          <div class="blog-post">
            <h2 class="blog-post-text" name ="text"></h2>
            <h2 class="blog-post-text" value="${test}"></h2>
	
	<% String fuck="fuckyou"; %>
	<p><%=fuck %></p>
	${fuck}

           
          </div><!-- /.blog-post -->

          <nav>
            <ul class="pager">
              <li><a href="http://v3.bootcss.com/examples/blog/#">Previous</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">Next</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
          <div class="sidebar-module">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="http://v3.bootcss.com/examples/blog/#">March 2014</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">February 2014</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">January 2014</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">December 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">November 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">October 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">September 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">August 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">July 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">June 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">May 2013</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">April 2013</a></li>
            </ol>
          </div>
          <div class="sidebar-module">
            <h4>Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="http://v3.bootcss.com/examples/blog/#">GitHub</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">Twitter</a></li>
              <li><a href="http://v3.bootcss.com/examples/blog/#">Facebook</a></li>
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>Blog template built for <a href="http://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="http://v3.bootcss.com/examples/blog/#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./Blog Template for Bootstrap_files/jquery.min.js.下载"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="./Blog Template for Bootstrap_files/bootstrap.min.js.下载"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./Blog Template for Bootstrap_files/ie10-viewport-bug-workaround.js.下载"></script>
  

</body></html>