<!-- 
�⺻ input �±� �迭ó��
�⺻ javascript ó��

���߹迭 CRUD
key������ DB ������Ʈ insert

update ����
insert ����
delete ����

������ ����  delete �� ajax�� Ű���� �����Ͽ� �񵿱� delete + �� delete

�ϰ������ ��� attribute hidden ó�� �� key d�� ����

input, checkbox, radio, button, textbox, file
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>


<body>


<script language="javascript">
var oTbl;
function insRow() {
	oTbl = document.getElementById("addTable");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - Ŭ���� Row�� ��ġ�� Ȯ��;
	var oCell = oRow.insertCell();

	//���Ե� Form Tag
	var  frmTag="";
	frmTag += "<input type=hidden name=key style=width:60px; height:20px; value=n> ";
	frmTag += "<input type=text name=name style=width:60px; height:20px;> ";
	frmTag += "<input type=text name=age style=width:60px; height:20px;> ";
	frmTag += "<input type=button value='����' onClick='removeRow()' style='cursor:hand'>";
	oCell.innerHTML = frmTag;
}
//Row ����
function removeRow() {
	oTbl.deleteRow(oTbl.clickedRowIndex);
}

function removeFlag(){
	alert(oTbl.clickedRowIndex);
}

function frmCheck()
{
	var frm = document.form;
		for (var i = 0; i <= frm.elements.length - 1; i++) {
			if (frm.elements[i].name == "addText") {
				if (!frm.elements[i].value) {
					alert("�ؽ�Ʈ�ڽ��� ���� �Է��ϼ���!");
					frm.elements[i].focus();
					return;
				}
			}
		}
}
</script>

<body>

<!-- 
�߰�, ����
 -->
<form method="post" action="./response.jsp">
<table>
<tr>
<td><input type="hidden" name="key" value="354"><input type="text" name="name"></td><td><input type="text" name="age"></td><td><input type="checkbox" name="chk"></td>
</tr>
<tr>
<td><input type="hidden" name="key" value="355"><input type="text" name="name"></td><td><input type="text" name="age"></td><td><input type="checkbox" name="chk"></td>
</tr>
<tr>
<td><input type="hidden" name="key" value="356"><input type="text" name="name"></td><td><input type="text" name="age"></td><td><input type="checkbox" name="chk"></td>
</tr>
</table>

<input type="submit" value="Ȯ��">
</form>

<p>

<form method="post" action="./response.jsp">
<table id="addTable" width="400" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" border="0">
 <tr>
   <td>
   <input type="hidden" name="key" value="123" style="width:60px; height:20px;">
   <input type="text" name="name" style="width:60px; height:20px;">
   <input type="text" name="age" style="width:60px; height:20px;">
   <input type=button value="����" onClick="removeFlag()" style="cursor:hand">
   </td>
   <td align="left"></td>
  </tr>
 <tr>
   <td>
   <input type="hidden" name="key" value="123" style="width:60px; height:20px;">
   <input type="text" name="name" value="2" style="width:60px; height:20px;">
   <input type="text" name="age" value="3" style="width:60px; height:20px;">
   <input type=button value="����" onClick="removeRow()" style="cursor:hand">
   </td>
   <td align="left"></td>
  </tr>  
</table>
 <input name="addButton" type="button" style="cursor:hand" onClick="insRow()" value="�߰�">
 <font color="#FF0000">*</font>�߰���ư�� Ŭ���� ������.
 <input type="submit" value="Ȯ��">
</form> 
 
<p>
 
<form>
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname">
</form>

<form>
  <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other
</form>

<form>
  <input type="checkbox" name="vehicle1" value="Bike"> I have a bike<br>
  <input type="checkbox" name="vehicle2" value="Car"> I have a car 
</form>

<select name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>

<textarea name="message" rows="10" cols="30">
The cat was playing in the garden.
</textarea>

</body>
</html>