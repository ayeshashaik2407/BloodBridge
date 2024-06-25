package home;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jdbcUrl = "jdbc:mysql://localhost:3307/project";
		String username = "root";
		String password = "password";
		response.setContentType("text/html;charset=UTF-8");
		String emailu=request.getParameter("email");
		String usernameu=request.getParameter("username");
		String passwordu=request.getParameter("password");
		String conpasswordu=request.getParameter("conpassword");
		String roleu=request.getParameter("role");
		if (!passwordu.equals(conpasswordu)) {
			request.setAttribute("message","Passwords do not match. Please re-enter your password!!");
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
			else {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="select * from userbb where mail=?"; 
		PreparedStatement st1=con.prepareStatement(sql);
		st1.setString(1,emailu);
		ResultSet rs=st1.executeQuery();
		if(rs.next()) {
			request.setAttribute("message","Email Already Exists!!");
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp#signup");
			rd.forward(request, response);
		}
		else {
			String sql1="insert into  userbb (mail,username,password,role) values(?,?,?,?)"; 
			PreparedStatement st2=con.prepareStatement(sql1);		
			st2.setString(1,emailu);
			st2.setString(2,usernameu);
			st2.setString(3,passwordu);
			st2.setString(4,roleu);
			st2.executeUpdate();
			request.setAttribute("message","Registered Successfully!!");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			response.sendRedirect("login.jsp");
		}
		}			
		catch(Exception e){
		response.getWriter().append(e.toString());
		}
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
