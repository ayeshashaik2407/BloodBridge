package userd;

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
 * Servlet implementation class Userd
 */
@WebServlet("/Userd")
public class Userd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userd() {
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
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="select * from userbb";
		PreparedStatement st=con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();
		request.setAttribute("message", rs);
		RequestDispatcher rd=request.getRequestDispatcher("userd.jsp");
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
