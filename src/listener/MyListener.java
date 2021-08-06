package listner;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyListener implements ServletContextListener {

	Connection con;
		
    public void contextDestroyed(ServletContextEvent sce)  { 
         try
         {
        	 con.close();
         }
         catch(Exception e)
         {
        	 e.printStackTrace();
         }
    }


    public void contextInitialized(ServletContextEvent sce)  { 
        String driver=sce.getServletContext().getInitParameter("driver");
        String url=sce.getServletContext().getInitParameter("jdbcurl");
        String user=sce.getServletContext().getInitParameter("username");
        String pwd=sce.getServletContext().getInitParameter("password");
    	
    	try
        {
    		Class.forName(driver);
    		con = DriverManager.getConnection(url, user, pwd);
    		sce.getServletContext().setAttribute("dbconnection", con);
    		System.out.println("db connection is set context level attribute");
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
    	
    }
}
    	
    	
    	
    	
    	
