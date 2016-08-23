<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.StringTokenizer"%>     
<%
        // 이름,나이,성별,지역
        String txt = "홍길동,28,남자,서울 강남구" ;
		//String txt = "홍길동,,남자,서울 강남구" ;
         
        // StringTokenizer를 이용한 문자열 분리
        StringTokenizer tokens = new StringTokenizer(txt);
         
        String sName    = tokens.nextToken(",") ;   // 이름
        String sAge     = tokens.nextToken(",") ;   // 나이
        String sSex     = tokens.nextToken(",") ;   // 성별
        String sLoc     = tokens.nextToken(",") ;   // 지역
         
        System.out.println("[StringTokenizer 이용]") ;
        System.out.println(sName) ;
        System.out.println(sAge) ;
        System.out.println(sSex) ;
        System.out.println(sLoc) ;
         
        System.out.println("") ;
         
         
         
        // split을 이용한 문자열 분리
        String[] txtArr = txt.split(",") ;
         
        System.out.println("[split 이용]") ;
        for(int i=0; i < txtArr.length; i++){
            System.out.println(txtArr[i]) ;
        }
 %>    