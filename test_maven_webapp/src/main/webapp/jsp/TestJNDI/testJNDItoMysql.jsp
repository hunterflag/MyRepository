<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*,javax.sql.*,javax.naming.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testJNDItoMysql.jsp</title>
</head>
<body>
<%
	InitialContext context = new InitialContext();
	DataSource ds = (DataSource) context.lookup("java:comp/env/connectMySqlInHome/apptestdb");
	Connection conn = ds.getConnection();
	Statement stmt = conn.createStatement();
	String sqlstr = "SELECT * FROM test";
	ResultSet rs = stmt.executeQuery(sqlstr);
	int i=1;
	while(rs.next()){
		out.print("name=" + rs.getString("name") + " ");
		out.print("phone=" + rs.getString("phone") + " ");
		out.println("<br/>");
		i++;
	}
	out.println("Total record is "+ i +" !<br/>");
	rs.close();
	conn.close();
	
%>
</body>
</html>