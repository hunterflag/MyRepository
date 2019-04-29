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

@WebServlet(name = "doShowProductList", urlPatterns = { "/doShowProductList" })
public class ShowProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
//		out.append("Served at: ").append(request.getContextPath());

		Connection conn = null;
		
		try {
			String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
			conn = DriverManager.getConnection(connUrl);
			
			//取得商品清單
			String qryStmt = "SELECT * FROM products ;";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(qryStmt);
			
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='UTF-8'>");
			out.println("</head>");
			out.println("<body>");
			out.println("<table border='1'>");
			out.println("<TR>");
			out.println("<TH>編號<TH>品名<TH>單價<TH>購物車");
			while (rs.next()) {
				out.println("<TR>");
				out.println("<TD>" + rs.getString("pd_id"));
				out.println("<TD>" + rs.getString("pd_name"));
				out.println("<TD>" + rs.getString("pd_price"));
				out.println("<TD>" + "<button onclick=\"alert('" + rs.getString("pd_id") + "')\">加入</button>");
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
			
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
