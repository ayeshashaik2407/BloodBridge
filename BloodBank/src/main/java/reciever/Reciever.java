package reciever;

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
 * Servlet implementation class Reciever
 */
@WebServlet("/Reciever")
public class Reciever extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reciever() {
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
		String namep=request.getParameter("name");
		String agep=request.getParameter("age");
		String genderp=request.getParameter("gender");
		String phonep=request.getParameter("phone");
		String addressp=request.getParameter("address");
		String medicalp=request.getParameter("medical");
		String bloodGroupp=request.getParameter("bloodGroup");
		String user_idu=""+(Integer)request.getSession().getAttribute("user_id");
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="INSERT INTO patient (name, age, gender, phone, address, medical, bloodGroup,user_id)\r\n"
				+ "VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, namep);
		st.setString(2, agep);
		st.setString(3, genderp);
		st.setString(4, phonep);
		st.setString(5, addressp);
		st.setString(6, medicalp);
		st.setString(7, bloodGroupp);
		st.setString(8, user_idu);
		st.executeUpdate();
		request.setAttribute("message","Submitted Successfully!!");
		RequestDispatcher rd=request.getRequestDispatcher("reciever.jsp");
		rd.forward(request, response);
		response.sendRedirect("reciever.jsp");
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
