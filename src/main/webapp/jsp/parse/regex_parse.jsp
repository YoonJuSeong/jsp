<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.regex.Matcher"%>  
<%@page import="java.util.regex.Pattern"%>     
<%

	String log = "jekalmin	25	male	2014-08-22"; 
	 
	Pattern p = Pattern.compile("(.+)\t(\\d+)\t(male|female)\t(\\d{4}-\\d{2}-\\d{2})"); 
	Matcher m = p.matcher(log); 
	 
	while(m.find()){ 
		System.out.println(m.group(0)); 
		System.out.println(m.group(1)); 
		System.out.println(m.group(2)); 
		System.out.println(m.group(3)); 
		System.out.println(m.group(4)); 
	} 
	 

%>