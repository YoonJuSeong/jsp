<%@ page import="java.lang.*, java.io.*, java.net.*, java.util.*, java.awt.*, java.util.Vector, javax.imageio.*, java.sql.*" contentType="text/html;charset=euc-kr"%>
<%@ include file="dbcon/mssql.jsp"%>

 <%
 String check = "";
 String title[] = new String[146];
 String title_no[] = new String[146];
 
 sql = "select * from kartsBlog.dbo.tblpost where m_userid = 'insoocho'";
 pstmt = con.prepareStatement(sql);
 rs = pstmt.executeQuery();

 String filename = "";
 
 int i = 0;
 int j = 0;
 while(rs.next()){
	 title[i] = rs.getString(6);
	 title_no[j] = rs.getString(1);	 
	 filename = "A:/DE Develop/sts_basic/file/content_"+ title_no[j] +".html";
	 
	 try
	 {

	 // ���� ��ü ����
	 File file = new File(filename);

	 // ���� ����
	  file.createNewFile();

	 // ���Ͼ��⸦ ���� ��ü ����

	  BufferedWriter wt = new BufferedWriter(new FileWriter(file));

	 // ���Ͽ� �Ʒ� ���ڵ��� ��� \t �Ƕ��� \n ���๮��
	  wt.write(title[i]);

	 //wt�� ����
	  wt.flush();

	 // ���� �ڵ� ��ȯ
	  wt.close();
	 }
	 catch (IOException e)
	 {
	  e.printStackTrace();
	 }
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
 

 
 
 
 

 
 %>
 
 
 
 
 <html>
 <head></head>
 <body>

CONTENT PUBLISH SUCCESS

 

 </body>
 </html>