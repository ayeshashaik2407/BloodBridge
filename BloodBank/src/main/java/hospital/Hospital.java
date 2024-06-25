package hospital;

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
 * Servlet implementation class Hospital
 */
@WebServlet("/Hospital")
public class Hospital extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hospital() {
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
		String hnameu=request.getParameter("hname");
		String haddressu=request.getParameter("haddress");
		String phoneu=request.getParameter("phone");
		String emailu=request.getParameter("email");
		String phonebu=request.getParameter("phoneb");
		String bloodTypeAplusu=request.getParameter("bloodTypeAplus");
		String bloodTypeAminusu=request.getParameter("bloodTypeAminus");
		String bloodTypeBplusu=request.getParameter("bloodTypeBplus");
		String bloodTypeBminusu=request.getParameter("bloodTypeBminus");
		String bloodTypeABplusu=request.getParameter("bloodTypeABplus");
		String bloodTypeABminusu=request.getParameter("bloodTypeABminus");
		String bloodTypeOplusu=request.getParameter("bloodTypeOplus");
		String bloodTypeOminusu=request.getParameter("bloodTypeOminus");
		String hbu=request.getParameter("hb");
		String ebu=request.getParameter("eb");
		String user_idu=""+(Integer)request.getSession().getAttribute("user_id");
		System.out.println(user_idu);
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(jdbcUrl, username, password);
		if(con!=null){
		System.out.println("DataBase Connected Successfully!!");
		}
		String sql="INSERT INTO hospital (hospital_name, hospital_address, hospital_phone, hospital_email, blood_bank_contact_number, bloodTypeAplus, bloodTypeAminus, bloodTypeBplus, bloodTypeBminus, bloodTypeABplus, bloodTypeABminus, bloodTypeOplus, bloodTypeOminus, operating_hours_blood_bank, emergency_contact_num, user_id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";			
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, hnameu);
		st.setString(2, haddressu);
		st.setString(3, phoneu);
		st.setString(4, emailu);
		st.setString(5, phonebu);
		st.setString(6,  bloodTypeAplusu);
		st.setString(7,  bloodTypeAminusu);
		st.setString(8,  bloodTypeBplusu);
		st.setString(9,  bloodTypeBminusu);
		st.setString(10,  bloodTypeABplusu);
		st.setString(11,  bloodTypeABminusu);
		st.setString(12,  bloodTypeOplusu);
		st.setString(13,  bloodTypeOminusu);
		st.setString(14, hbu);
		st.setString(15, ebu);
		st.setString(16, user_idu);
		st.executeUpdate();
		request.setAttribute("message","Submitted Successfully!!");
		RequestDispatcher rd=request.getRequestDispatcher("hospital.jsp");
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
