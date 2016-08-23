<%@ page language="java" import="java.sql.*" %>
<%
String DB_URL = "jdbc:oracle:thin:@172.16.9.22:1521:hkarts";


String DB_USER    = "karts2010"; // DB USER명
String DB_PASSWORD = "karts2010"; // 패스워드

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



