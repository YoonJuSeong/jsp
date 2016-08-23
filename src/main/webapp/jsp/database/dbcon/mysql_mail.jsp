<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.io.*,java.sql.*,java.util.*,java.net.*"%>
<%
    String url = "jdbc:mysql://211.116.138.6:3306/karts";
    Class.forName("com.mysql.jdbc.Driver");
    
    String dbId = "sysop";
    String dbPw = "sysop";
    
    Connection conn = DriverManager.getConnection(url,dbId,dbPw);
    Statement stmt = conn.createStatement();
 
    String SQL = "Select * from cruser";
    ResultSet rs = stmt.executeQuery(SQL);
    out.println(SQL + "<BR><BR>");
    while(rs.next()){
        out.println(" ID : " + rs.getString(1) + "<BR>");
    }
    stmt.close();
    conn.close();
%>