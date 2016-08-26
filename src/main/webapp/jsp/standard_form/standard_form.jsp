<!-- 
기본 input 태그 배열처리
기본 javascript 처리

다중배열 CRUD
key에의한 DB 업데이트 insert

update 구분
insert 구분
delete 구분

가져온 행의  delete 시 ajax로 키값을 전송하여 비동기 delete + 셀 delete

일괄방식일 경우 attribute hidden 처리 및 key d로 변경

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
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();

	//삽입될 Form Tag
	var  frmTag="";
	frmTag += "<input type=hidden name=key style=width:60px; height:20px; value=n> ";
	frmTag += "<input type=text name=name style=width:60px; height:20px;> ";
	frmTag += "<input type=text name=age style=width:60px; height:20px;> ";
	frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'>";
	oCell.innerHTML = frmTag;
}
//Row 삭제
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
					alert("텍스트박스에 값을 입력하세요!");
					frm.elements[i].focus();
					return;
				}
			}
		}
}
</script>

<body>

<!-- 
추가, 삭제
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

<input type="submit" value="확인">
</form>

<p>

<form method="post" action="./response.jsp">
<table id="addTable" width="400" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" border="0">
 <tr>
   <td>
   <input type="hidden" name="key" value="123" style="width:60px; height:20px;">
   <input type="text" name="name" style="width:60px; height:20px;">
   <input type="text" name="age" style="width:60px; height:20px;">
   <input type=button value="삭제" onClick="removeFlag()" style="cursor:hand">
   </td>
   <td align="left"></td>
  </tr>
 <tr>
   <td>
   <input type="hidden" name="key" value="123" style="width:60px; height:20px;">
   <input type="text" name="name" value="2" style="width:60px; height:20px;">
   <input type="text" name="age" value="3" style="width:60px; height:20px;">
   <input type=button value="삭제" onClick="removeRow()" style="cursor:hand">
   </td>
   <td align="left"></td>
  </tr>  
</table>
 <input name="addButton" type="button" style="cursor:hand" onClick="insRow()" value="추가">
 <font color="#FF0000">*</font>추가버튼을 클릭해 보세요.
 <input type="submit" value="확인">
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