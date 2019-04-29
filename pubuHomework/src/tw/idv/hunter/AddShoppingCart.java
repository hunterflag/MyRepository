package tw.idv.hunter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "doAddShoppingCart", urlPatterns = { "/doAddShoppingCart" })
public class AddShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.append("doAddShoppingCart Served at: ").append(request.getContextPath());
//		System.out.println("Hello");
		
		int pd_id, pd_price, ctm_id;
		//未登入就不用做了
		HttpSession session = request.getSession();
		if (session.getAttribute("loginId") != null) {	
			 pd_id = Integer.valueOf(request.getParameter("pd_id"));
			 pd_price = Integer.valueOf(request.getParameter("pd_price"));
//			 ctm_id = Integer.valueOf(request.getParameter("ctm_id"));
			 ctm_id = Integer.valueOf(session.getAttribute("loginId").toString());

			System.out.printf("ctm_id: %d, pd_id: %d\n", ctm_id, pd_id);
			
			//取得 購物車
			Connection conn = null;
			
			try {
				String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
								+"?user=root&password=123456&useUnicode=true"
								+"&characterEncoding=UTF-8&serverTimezone=UTC";
				conn = DriverManager.getConnection(connUrl);
				//檢查要加的商品是否已經在該員的購物車內? 若否, 則加入; 若是則不再加入!
				String qryStmt = "SELECT * FROM shopping_carts WHERE ctm_id=" + ctm_id 
								+ " AND " + "pd_id=" + pd_id + ";";
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(qryStmt);
				
				if (!rs.next()) {
					String insStmt = "INSERT INTO shopping_carts(ctm_id, pd_id, sc_price, sc_number) "
									+"VALUES (?, ?, ?, 1);";
					PreparedStatement pstmt = conn.prepareStatement(insStmt);
					pstmt.setInt(1, ctm_id);
					pstmt.setInt(2, pd_id);
					pstmt.setInt(3, (pd_price/100)*100);
					pstmt.executeUpdate();
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
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
