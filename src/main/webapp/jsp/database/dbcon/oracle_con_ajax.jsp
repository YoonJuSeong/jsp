<%@ page language="java" import="java.sql.*" %>


<%
String DB_URL = "jdbc:oracle:thin:@localhost:1521:oracle";


String DB_USER    = "xdata"; // DB USER명
String DB_PASSWORD = "oracle"; // 패스워드

Connection con = null;
Statement  stmt   = null;
ResultSet rs = null;
String sql = null;

try
 {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); 
    System.out.println("DB CON SUCCESS");
 }catch(SQLException e){out.println(e);}
%>