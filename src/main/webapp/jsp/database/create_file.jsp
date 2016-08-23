<%@ page contentType = "text/html; charset=euc-kr"%>
<%@ page import="java.io.*;"%>
<%
try
{

// 파일 객체 생성
File file = new File("A:/DE Develop/sts_basic/file/test.html");

// 파일 생성
 file.createNewFile();

// 파일쓰기를 위한 객체 생성

 BufferedWriter wt = new BufferedWriter(new FileWriter(file));

// 파일에 아래 문자들을 출력 \t 탭띄우기 \n 개행문자
 wt.write("문구1 = " +  "문구1" + "\n");
 wt.write("문구2 = " +  "문구2" + "\n");

//wt에 쓰기
 wt.flush();

// 파일 핸들 반환
 wt.close();
}
catch (IOException e)
{
 e.printStackTrace();
}
%>
