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

	 // 파일 객체 생성
	 File file = new File(filename);

	 // 파일 생성
	  file.createNewFile();

	 // 파일쓰기를 위한 객체 생성

	  BufferedWriter wt = new BufferedWriter(new FileWriter(file));

	 // 파일에 아래 문자들을 출력 \t 탭띄우기 \n 개행문자
	  wt.write(title[i]);

	 //wt에 쓰기
	  wt.flush();

	 // 파일 핸들 반환
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