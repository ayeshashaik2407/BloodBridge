package nearby;

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
 * Servlet implementation class Nearby
 */
@WebServlet("/Nearby")
public class Nearby extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Nearby() {
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
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="select * from hospital";
		PreparedStatement st=con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		request.setAttribute("message", rs);
		RequestDispatcher rd=request.getRequestDispatcher("nearby.jsp");
		rd.forward(request, response);
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
