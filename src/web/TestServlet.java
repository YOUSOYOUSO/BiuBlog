package web;

import java.io.IOException;  

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class TestServlet extends HttpServlet  
{  
    /** 
     * 自动生成 
     */  
    private static final long serialVersionUID = 1L;  
  
    /** 
     * 构造函数 
     */  
    public TestServlet()  
    {  
        super();  
    }  
      
    /** 
     * 初始化 
     */  
    public void init()  
    {}  
      
    /** 
     * doGet() 
     */  
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  
    {  
        doPost(request, response);  
    }  
      
    /** 
     * doPost() 
     */  
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  
    {  
        String url = "test.jsp?first=1";  
        String strRequest = "request传值";  
        String strSession = "session传值";  
        request.setAttribute("strRequest", strRequest);  
        request.getSession().setAttribute("strSession", strSession);  
          
        /** 
         * 客户端跳转：效率低 
         * session范围属性，url中的参数会传递下去，request范围属性不传递 
         */  
        //response.sendRedirect(url);  
          
        /** 
         * 服务器端跳转：常用，效率高 
         * request范围属性，session范围属性，url中的参数会传递 
         */  
        request.getRequestDispatcher(url).forward(request, response);  
    }  
      
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  