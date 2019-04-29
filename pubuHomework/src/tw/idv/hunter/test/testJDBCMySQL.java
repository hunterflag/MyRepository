package tw.idv.hunter.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class testJDBCMySQL {

	public static void main(String[] args) {
		Connection conn = null;
		try {
			String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
			conn = DriverManager.getConnection(connUrl);
			String qryStmt = "SELECT * FROM customers;";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(qryStmt);
			while(rs.next()) {
				System.out.print("customer: " + rs.getString("ctm_account"));
				System.out.println("\tpassword: " + rs.getString("ctm_password"));
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
