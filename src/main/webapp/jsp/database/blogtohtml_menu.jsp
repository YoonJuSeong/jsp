<%@ page import="java.lang.*, java.io.*, java.net.*, java.util.*, java.awt.*, java.util.Vector, javax.imageio.*, java.sql.*" contentType="text/html;charset=euc-kr"%>
<%@ include file="dbcon/mssql.jsp"%>

 <%
 String check = "";
 String title[] = new String[146];
 String title_no[] = new String[146];
 
 sql = "select * from kartsBlog.dbo.tblpost where m_userid = 'insoocho' order by poc_no, po_regdate desc";
 pstmt = con.prepareStatement(sql);
 rs = pstmt.executeQuery();
  
 int i = 0;
 int j = 0;
 while(rs.next()){
	 title_no[j] = rs.getString(1);
	 title[i] = "<li><a target=\"menu\" href=\"" + "content/" + "content_" + title_no[j] + ".html\">" + "[" + rs.getString(15).substring(0,10) + "] " + rs.getString(5) + "</a></li>";
	 i++;
	 j++;
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
 
 
 
 
 
 try
 {

 // ���� ��ü ����
 File file = new File("A:/DE Develop/sts_basic/file/blogMenu.html");

 // ���� ����
  file.createNewFile();

 // ���Ͼ��⸦ ���� ��ü ����

  BufferedWriter wt = new BufferedWriter(new FileWriter(file));

 // ���Ͽ� �Ʒ� ���ڵ��� ��� \t �Ƕ��� \n ���๮��
  wt.write(title_sum);

 //wt�� ����
  wt.flush();

 // ���� �ڵ� ��ȯ
  wt.close();
 }
 catch (IOException e)
 {
  e.printStackTrace();
 }
 
 %>
 
 
 
 
 <html>
 <head></head>
 <body>

<%=title_sum %>

 

 </body>
 </html>