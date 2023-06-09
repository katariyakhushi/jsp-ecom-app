

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Uloginn")
public class Uloginn extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee630","root","Khushi");
			String qr="insert into user values(?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, email);
			ps.setString(2, pwd);
			
			int rowsAffected = ps.executeUpdate();
		
		    if(rowsAffected > 0){
				HttpSession session=request.getSession();
				session.setAttribute("uid", email);
				response.sendRedirect("Uhome.jsp");
			}
			con.close();
			}catch(Exception e)
		{
			out.print("something went wrong");
			out.print(e);
		}
	}
}
	
	
