package tw.idv.hunter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static String connUrl = "jdbc:mysql://localhost:3306/pubu_exercise"
			 	  + "?user=root&password=123456"
				  + "&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
	private static Connection conn = null;
	
	public static Connection getConnection() throws SQLException {
		conn = DriverManager.getConnection(connUrl);
		return conn;
	}
	
	
	
}
