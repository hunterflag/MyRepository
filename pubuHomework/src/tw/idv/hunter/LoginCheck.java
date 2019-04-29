package tw.idv.hunter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/doLoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		PrintWriter out = response.getWriter();

		//取得網站傳入值
		String loginAcc = request.getParameter("loginAcc");
		String loginPwd = request.getParameter("loginPwd");
		
		//取得資料庫相同帳號
		Connection conn = null;
		try {
			String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
			conn = DriverManager.getConnection(connUrl);
			String qryStmt = "SELECT * FROM customers WHERE ctm_account = \'" + loginAcc + "\';";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(qryStmt);
			if (rs.next()) {//有此帳號
				if (loginPwd.equals(rs.getString("ctm_password"))) {
					out.write(loginAcc + "登入成功! " + "<br/>");
					HttpSession session = request.getSession();
					session.setAttribute("loginName", loginAcc);
					session.setAttribute("loginId", rs.getInt("ctm_id"));
				}else {
					out.write(loginAcc + "登入失敗! " + "<br/>");
					out.write("輸入: " + loginPwd + "<br/>");
				}
				out.write("登記: " + rs.getString("ctm_password") + "<br/>");
			} else {	//無此帳號
				out.write("沒有帳號: " + loginAcc + "<br/>");
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
