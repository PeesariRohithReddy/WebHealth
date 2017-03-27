

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webhealth","root","root");
			PreparedStatement ps1=con.prepareStatement("select username,password from users where username=? and password=?");
			ps1.setString(1, username);
			ps1.setString(2,password);
			java.sql.ResultSet rs=ps1.executeQuery();
			if(rs.next()==true)
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
				request.setAttribute("message","Invalid Username or Password Try Again !!!!!");
				rd.include(request,response);
			}
		}
		catch(Exception e)
		{
			System.out.println("Error description:\n"+e);
		}
	}

}
