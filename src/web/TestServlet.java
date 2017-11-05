package web;

import java.io.IOException;  

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class TestServlet extends HttpServlet  
{  
    /** 
     * �Զ����� 
     */  
    private static final long serialVersionUID = 1L;  
  
    /** 
     * ���캯�� 
     */  
    public TestServlet()  
    {  
        super();  
    }  
      
    /** 
     * ��ʼ�� 
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
        String strRequest = "request��ֵ";  
        String strSession = "session��ֵ";  
        request.setAttribute("strRequest", strRequest);  
        request.getSession().setAttribute("strSession", strSession);  
          
        /** 
         * �ͻ�����ת��Ч�ʵ� 
         * session��Χ���ԣ�url�еĲ����ᴫ����ȥ��request��Χ���Բ����� 
         */  
        //response.sendRedirect(url);  
          
        /** 
         * ����������ת�����ã�Ч�ʸ� 
         * request��Χ���ԣ�session��Χ���ԣ�url�еĲ����ᴫ�� 
         */  
        request.getRequestDispatcher(url).forward(request, response);  
    }  
      
    /** 
     * ���� 
     */  
    public void destroy()  
    {  
        super.destroy();  
    }  
}  