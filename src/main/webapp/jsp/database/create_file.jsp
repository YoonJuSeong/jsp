<%@ page contentType = "text/html; charset=euc-kr"%>
<%@ page import="java.io.*;"%>
<%
try
{

// ���� ��ü ����
File file = new File("A:/DE Develop/sts_basic/file/test.html");

// ���� ����
 file.createNewFile();

// ���Ͼ��⸦ ���� ��ü ����

 BufferedWriter wt = new BufferedWriter(new FileWriter(file));

// ���Ͽ� �Ʒ� ���ڵ��� ��� \t �Ƕ��� \n ���๮��
 wt.write("����1 = " +  "����1" + "\n");
 wt.write("����2 = " +  "����2" + "\n");

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
