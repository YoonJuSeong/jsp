<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.parser.ParseException" %>
<%@ page import="org.json.simple.JSONArray" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ajax_textres</title>
</head>
<body>

<%
	JSONObject object = new JSONObject();

	object.put("name", "Deepa");
	object.put("regno", new Integer(12345));
	object.put("Mark", new Double(99));
	object.put("mail", "deep@naver.com");
	object.put("city", "seoul");
	
	System.out.print(object);
    
	
    JSONParser parser = new JSONParser();
    String s = "[0,{\"1\":{\"2\":{\"3\":{\"4\":[5,{\"6\":7}]}}}}]";
		
    try{
       Object obj = parser.parse(s);
       JSONArray array = (JSONArray)obj;
			
       System.out.println("The 2nd element of array");
       System.out.println(array.get(1));
       System.out.println();

       JSONObject obj2 = (JSONObject)array.get(1);
       System.out.println("Field \"1\"");
       System.out.println(obj2.get("1"));    

       s = "{}";
       obj = parser.parse(s);
       System.out.println(obj);

       s = "[5,]";
       obj = parser.parse(s);
       System.out.println(obj);

       s = "[5,,2]";
       obj = parser.parse(s);
       System.out.println(obj);
    }catch(ParseException pe){
		
       System.out.println("position: " + pe.getPosition());
       System.out.println(pe);
    }
    
    
%>

TEST

<%
	out.println(object);
	out.flush();
	response.setContentType("text/plain;charset=utf-8");
	response.getWriter().write("TEST");
%>

</body>
</html>