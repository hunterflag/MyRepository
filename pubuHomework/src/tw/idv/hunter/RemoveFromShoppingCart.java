package tw.idv.hunter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "doRemoveFromShoppingCart", urlPatterns = { "/doRemoveFromShoppingCart" })
public class RemoveFromShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		//取得客戶ID
		HttpSession session = request.getSession();
		int ctm_id = Integer.valueOf(session.getAttribute("loginId").toString());
		
		//取得商品ID
		int pd_id =  Integer.valueOf(request.getParameter("pd_id"));
		
		//開啟購物車資料表, 刪除紀錄
		Connection conn = null;
		
		try {
//			String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
//							+"?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
//			conn = DriverManager.getConnection(connUrl);
			conn = ConnectionFactory.getConnection();
			
			String delStmt = "DELETE FROM shopping_carts WHERE ctm_id=? AND pd_id=?;"; 
			PreparedStatement pstmt = conn.prepareStatement(delStmt);
			pstmt.setInt(1, ctm_id);
			pstmt.setInt(2, pd_id);
			int rs = pstmt.executeUpdate();
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
