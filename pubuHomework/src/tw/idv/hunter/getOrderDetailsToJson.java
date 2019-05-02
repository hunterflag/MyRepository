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

@WebServlet("/getOrderDetailsToJson")
public class getOrderDetailsToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
//		out.append("Served at: ").append(request.getContextPath());
		
		//1.從前端取得訂單編號
		HttpSession session = request.getSession();
		String str_ctm_id = session.getAttribute("loginId").toString();
		if (str_ctm_id != null) ctm_id  
		else return;
		
		int ctm_id = Integer.valueOf(.toString());
		String str_od_id = request.getParameter("od_id");
		if (str_od_id !=nu)
		int od_id = Integer.valueOf();
		
		//2.依據訂單編號, 從資料庫取得訂單明細
		//3.將訂單明細, 轉換成Json物件
		//4.
//	 	String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
//	 					+"?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
//	 	Connection conn = DriverManager.getConnection(connUrl);
		Connection conn = ConnectionFactory.getConnection();
		
		String qryStmt = "SELECT oddt.oddt_id, od.od_id, ctm.ctm_account, pd.pd_name, pd.pd_price, oddt.oddt_price, oddt.oddt_number "
//	 	String qryStmt = "SELECT  *"
					   + "FROM order_details AS oddt " 
			  		   + "JOIN products AS pd ON oddt.pd_id = pd.pd_id "
			  		   + "JOIN orders AS od ON od.od_id = oddt.od_id " 
			  		   + "JOIN customers AS ctm ON od.ctm_id = ctm.ctm_id " 
			  		   + "WHERE oddt.od_id=? "
			  	   	   + "ORDER BY pd.pd_name;";
		PreparedStatement pstmt = conn.prepareStatement(qryStmt);
		pstmt.setInt(1, od_id);
		ResultSet rs = pstmt.executeQuery();

		int total_price=0;
		while (rs.next()) {
			out.println("<TR>");
			out.println("<TD>" + rs.getString("oddt.oddt_id"));
			out.println("<TD>" + rs.getString("od.od_id"));
			out.println("<TD>" + rs.getString("ctm.ctm_account"));
			out.println("<TD>" + rs.getString("pd.pd_name"));
			out.println("<TD>" + rs.getString("pd.pd_price"));
			out.println("<TD>" + rs.getString("oddt.oddt_price"));
			out.println("<TD>" + rs.getString("oddt.oddt_number"));
			int sub_total_price = rs.getInt("oddt.oddt_price")*rs.getInt("oddt.oddt_number"); 
			out.println("<TD>" + sub_total_price );
			out.println("</form></TR>");
			total_price += sub_total_price;
		}
		out.println("<TR><TH colspan=4>總價 <TD colspan=4>" +total_price );

		Connection conn = null;
		try {
			conn = ConnectionFactory.getConnection();
			
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

}
