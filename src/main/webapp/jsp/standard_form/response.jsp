<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
String[] key = request.getParameterValues("key");
String[] name = request.getParameterValues("name");
String[] age = request.getParameterValues("age");
String[] chk = request.getParameterValues("chk");

out.println(name);

for(int i=0; i<name.length; i++){
	out.println(name[i]);
	//insert name, age, chk into table values(name[], age[], chk[]) where key = key[i]
	//if key == n new insert else update else key == d then delete	
	
}

%>
</body>
</html>