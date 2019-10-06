jdbclogin.java
package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(urlPatterns={"/javaConnection"})
public class JDBCLogin extends HttpServlet {
	
	static Connection getConnection() throws Exception {
	    String driver = "org.gjt.mm.mysql.Driver";
	    String url = "jdbc:mysql://localhost/login_validation";
	    String username = "proje";
	    String password = "";
	    Class.forName(driver);
	    Connection conn = DriverManager.getConnection(url, username, password);
	    return conn;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		out.print("Working");
		
		String inputUsername =(String)request.getParameter("login");
		String inputPassword =request.getParameter("password");
		boolean flag = false;
		Connection conn = null;
		Statement stmt = null;
		java.sql.ResultSet rs = null;
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT username,password FROM login  ");
			
			while (rs.next()) {
				String dbname = rs.getString(1);
				String username = inputUsername;
				String dbpass = rs.getString(2);
				if(dbname.equals(username))
				{
				if(dbpass.equals(inputPassword)) {
					HttpSession session = request.getSession();
					session.setAttribute("username", username);
					session.setAttribute("logged", new Boolean(true));
					session.setAttribute("total",0);
					flag = true;
				
				}}
				}
			
		} catch (ClassNotFoundException e) {
			System.out.println("Error: failed to load MySQL driver.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Error: failed to create a connection object.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("Error: unknown");
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				conn.close();        
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(flag) {
			response.sendRedirect("/test1/validation.jsp");
		} else {
			response.sendRedirect("/test1/index1.jsp");
		}
	}
	
}

