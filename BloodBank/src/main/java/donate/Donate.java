package donate;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Donate
 */
@WebServlet("/Donate")
public class Donate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Donate() {
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
		String named=request.getParameter("name");
		String aged=request.getParameter("age");
		String genderd=request.getParameter("gender");
		String phoned=request.getParameter("phone");
		String addressd=request.getParameter("address");
		String smoked=request.getParameter("smoking");
		String alocohold=request.getParameter("alcohol");
		String bloodGroupd=request.getParameter("bloodGroup");
		String user_idu=""+(Integer)request.getSession().getAttribute("user_id");
		System.out.println(user_idu);
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="INSERT INTO donord (name, age, gender, phone, address, smoking, alcohol, bloodGroup, user_id)\r\n"
				+ "VALUES (?,?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, named);
		st.setString(2, aged);
		st.setString(3, genderd);
		st.setString(4, phoned);
		st.setString(5, addressd);
		st.setString(6, smoked);
		st.setString(7, alocohold);
		st.setString(8, bloodGroupd);
		st.setString(9, user_idu);
		st.executeUpdate();
		request.setAttribute("message","Submitted Successfully!!");
		RequestDispatcher rd=request.getRequestDispatcher("donate.jsp");
		rd.forward(request, response);
		response.sendRedirect("donate.jsp");
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
