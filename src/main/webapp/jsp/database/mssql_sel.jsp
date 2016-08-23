<%@ page import="java.lang.*, java.io.*, java.net.*, java.util.*, java.awt.*, java.util.Vector, javax.imageio.*, java.sql.*" contentType="text/html;charset=euc-kr"%>
<%@ include file="dbcon/mssql.jsp"%>

 <%
 String check = "";
 String title[] = new String[146];
 
 sql = "select * from kartsBlog.dbo.tblpost where m_userid = 'insoocho'";
 pstmt = con.prepareStatement(sql);
 rs = pstmt.executeQuery();
  
 int i = 0;
 while(rs.next()){
	 title[i] = "<li>" + rs.getString(5) + "</li>";
	 i++;
 }
 
 if(rs.next())
 {
  check = rs.getString(1);
 }  
  
 rs.close();
 %>
 
 <%
 
 String title_sum = "";
 
 for (i=0; i<146; i++){
	 title_sum += title[i];
 }
 
 %>
 
 <html>
 <head></head>
 <body>

<%=title_sum %>

 

 </body>
 </html>