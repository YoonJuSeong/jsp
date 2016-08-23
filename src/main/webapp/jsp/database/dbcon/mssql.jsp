<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*"%>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:sqlserver://localhost:1433;DatabaseName=newdb"; //1433은 DB의 기본 포트이다
	String user = "mssqldb";
	String password = "mssqldb";

	String sql = null;
	ResultSet rs = null;

	try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		con = DriverManager.getConnection(url, user, password);

	} catch (Exception e) {
		out.println(e);
	}
%>
