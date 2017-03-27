

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.ResultSet;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
       System.out.println("invoked register");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirm");
		String dob=request.getParameter("dob");
		String duedate=request.getParameter("duedate");	
		if(password.equals(confirm))
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webhealth","root","root");
				PreparedStatement ps1=con.prepareStatement("select username from users where username=?");
				ps1.setString(1,username);
				java.sql.ResultSet rs=ps1.executeQuery();
				if(rs.next()==true)
				{
					RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp"); 
			        request.setAttribute("message","Username Exists Please Try Different One");
			        rd.include(request, response);
				}
				else
				{
				PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?)");
				ps.setString(1,name);
				ps.setString(2,email);
				ps.setString(3,username);
				ps.setString(4,password);
				ps.setString(5,dob);
				ps.setString(6,duedate);
				int i1=ps.executeUpdate();
				if(i1==1)
				{
					RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp"); 
			        request.setAttribute("message","Registered Successfully!!!!!");
			        rd.include(request, response);
				}
				}
				} 
			    catch (Exception e) {
				System.out.println("In Register Servlet !!!" );
				e.printStackTrace();
			}
			
		}
		else
		{
			  
	        RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp"); 
	        request.setAttribute("message","Password and Confirm Password Do not Match");
	        rd.include(request, response);  
		}
	}

}
