package servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import beans.Customer;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	Connection con;
	public void init(ServletConfig config) throws ServletException
{
		super.init(config);
		
		con = (Connection)config.getServletContext().getAttribute("dbconnection");
}	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		con =(Connection)request.getServletContext().getAttribute("dbconnection");
		RequestDispatcher rd=null;
		//response.setContentType("text/html");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try 
		{
			PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			System.out.println("Email :"+email+" and pwd :"+password);
			ResultSet rs=ps.executeQuery();
			boolean flag=false;
			//Customer cs=null;
			//List<Customer> tlist=new ArrayList<>();
			//while(rs.next())
			//{

			//	cs =new Customer(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
				//tlist.add(cs);
				
			//}
				
			//request.getSession().setAttribute("email3", email);
			
			//Cookie c=new Cookie("loginerror","plz_try_again");
			System.out.println("In while1");
			
			while(rs.next())
			{
//						
					System.out.println("Login Succesful");
					System.out.println("In while");
//					if(rs.getString(1).equals(email) && rs.getString(5).equals(password))				
//					{
						//c.setMaxAge(0);
						//response.addCookie(c);
						//Customer u=new Customer();
						//HttpSession session=request.getSession();
						//session.setAttribute("Uinfo", u);			
						System.out.println("Login Succesful");
						request.getSession().setAttribute("email3", email);
						List<Customer>c1=new ArrayList();
						request.getSession().setAttribute("userinfo",c1 );
						//request.setAttribute("Error", "Email not found");
						//request.getSession().setAttribute("loggedInUser", );
						
						//response.getWriter().print("<h2>Login successful</h2>");
						//response.getWriter().print("Welcome "+uid);
						 rd=request.getRequestDispatcher("/adminhome.jsp");
						 rd.forward(request,response);
						//System.out.println("jhb h");
						//flag=true;
					
//				}
//				else
//				{
//						
//					
//				}
				
				
				
					
			}
			System.out.println("Password does not match..");
			request.getSession().setAttribute("EError", "Email Not Matched");
			
			request.getSession().setAttribute("Error", "Password Not Matched");
			 rd=request.getRequestDispatcher("/adminlog.jsp");
			 rd.forward(request,response);
		
			/*if(flag==false)
			{
					
				response.addCookie(c);
				System.out.println("Login Failed");
				response.sendRedirect("//Login.jsp");
			//	response.getWriter().print("plzzzzz try again");
			}*/
			
			
			
			
		}
		catch (SQLException e)
		{
		
		}
		
	}	

}
