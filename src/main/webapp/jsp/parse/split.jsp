<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String s1 = "12,345,678,910";
	String p1 = ",";

	//정규표현식의 문자가 아니라면 그냥 대입해도 상관없다
	String[] sArray1 = s1.split(p1);

	for (int i = 0; i < sArray1.length; i++) {
		out.println(sArray1[i]);
	}

	out.println("<br>\n");

	//정규표현식의 문자 \, ^, $, *, +, . 등등으로 문자열을 분해하기 위해서
	//대괄호로 감싸준다, 또는 앞에 \\ 붙여준다
	String s2 = "12+345+678+910";
	String p2 = "[+]";
	String[] sArray2 = s2.split(p2);

	for (int i = 0; i < sArray2.length; i++) {
		out.println(sArray2[i]);
	}

	String s3 = "12 345 678 910";
	String p3 = " ";
	String[] sArray3 = s3.split(p3);
	for (int i = 0; i < sArray2.length; i++) {
		out.println(sArray3[i]);
	}
%>

</body>
</html>