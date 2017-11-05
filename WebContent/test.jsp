<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
  <%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
    <body>  
        <%  
        String strURL = request.getParameter("first");  
        String strRequest = (String)request.getAttribute("strRequest");  
        String strSession = (String)request.getSession().getAttribute("strSession");  
          
        %>  
        <p>  
            URL中取得的属性值为：<%=strURL%>  
        </p>        
        <p>  
            request中取得的属性值为：${strRequest}
        </p>  
        <p>  
            session中取得的属性值为：<%=strSession%>  
        </p>  
    </body>  
</html>  