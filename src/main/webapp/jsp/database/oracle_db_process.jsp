<%@ page contentType="text/html; charset=euc-kr" %>
<%@ include file="dbcon/oracle_con.jsp" %> <!-- dbCon.jsp ������ �ҷ����� �κ��Դϴ�. -->
<%@ page import="java.util.*,java.text.*"%>

<html>
<head>
<title>test</title>
<meta http-equiv="Content-Type" content="text/html; charset=8859_1">
<link title=menustyle href="../adminstyle.css" type="text/css" rel="stylesheet">
<script language="JavaScript">
<!--
 function MM_openBrWindow(theURL,winName,features){
   window.open(theURL,winName,features);
 }
//-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="630" border="0" cellspacing="0" cellpadding="0">
 <%
 
   sql="select * from TN_MBER"; //���� �κ�, ���� ���� ������ ���� �Ǿ� �ִ� table�� �Է��ؾ� �մϴ�.

   stmt = con.createStatement();  
   rs = stmt.executeQuery(sql);

   while(rs.next()) {
	   out.print(rs.getString("USER_ID"));
   //out.print(rs.getInt("a")); // ��ºκ�
   }
   
   PreparedStatement pstmt=null;
   
   sql="update tn_showetc set SETC_SJ = (select replace(replace(setc_sj, '<', '['),'>',']') from tn_showetc where setc_sn =?) where SETC_SN =?";
  
   for(int i=13; i<300; i++){
	   pstmt=con.prepareStatement(sql);
	   pstmt.setInt(1, i);
	   pstmt.setInt(2, i);
	   int cnt =  pstmt.executeUpdate();
	   System.out.println(i+"��° ����");
	   
   }
   
   pstmt.close();
   if(rs != null) rs.close();
   if(stmt != null)stmt.close();
   
   if(con != null)con.close();
 %>

</body>

</html>