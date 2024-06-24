package login;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String password = "Ayshu@2003";
		response.setContentType("text/html;charset=UTF-8");
		String usernameu=request.getParameter("username");
		String passwordu=request.getParameter("password");
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);	
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="select * from userbb where username=? and password=? ";
		PreparedStatement st=con.prepareStatement(sql);
	    st.setString(1, usernameu); 
	    st.setString(2, passwordu);
	    ResultSet rs=st.executeQuery();
	    if(rs.next()) {
	    		int rr=rs.getInt(1); // here 1 is column number(i.e user_id) in userbb
	    		String re=rs.getString(5);
	    		HttpSession session = request.getSession(); // to start the session which is visible to only developer to create userid
	    		session.setAttribute("user_id", rr); // here user_Id is variable to store r
	    		session.setAttribute("role",re);
	    		session.setAttribute("username",rs.getString("username"));
	    		RequestDispatcher rd=request.getRequestDispatcher("main.jsp");
	    		rd.forward(request, response);
	    		}
	    else {
	    	request.setAttribute("message","Invalid Credentials!!");
	    	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    	rd.forward(request, response);
	    }
		}
		catch(Exception e){
		response.getWriter().append(e.toString());
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
