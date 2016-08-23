<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
 <head>
  <title> jquery Ajax test </title>
  <meta charset="utf-8" />
  <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $("#button").click(function(){
          callAjax();
      });
    });
    function callAjax(){
        var dataString = $("form").serialize(); //파라미터 직렬화 times=10&id=abc&comment=def
        $("#postedParam").text("afterParameter:"+dataString); //확인용 화면에 뿌려보자
        $.ajax({
	        type: "POST",
	        url : "http://localhost:8080/AjaxPrograming/temp/test.jsp",
	        data: dataString, //서버로 보낼 데이터 data변수(form객체 컬렉션)
	        success: whenSuccess, //성공시 callback함수 지정
	        error: whenError //실패시 callback함수 지정
     	});
    }                      
    
    // 성공시 호출될 함수
    function whenSuccess(resdata){
        $("#ajaxReturn").html(resdata);
        console.log(resdata);
    }
    
    // 실패시 호출될 함수
    function whenError(){
        alert("Error");
    }
  </script>
 </head>
 <body>
 <div style="width:500px;margin:auto;margin-top:200px;">
	 <form id="frm">
	 	 <div>
	     	<label>반복횟수</label><input name="number" value="10">
	     </div>
	     <div style="margin-top:20px;">
	     	<label>아이디</label><input name="id">
	     </div>
	     <div style="margin-top:20px;">
	     	<label>코멘트</label><input name="comment">
	     </div>
	     <div style="margin-top:20px;">
	     	<input id="button" type="button" value="버튼">
	     </div>
	 </form>
	 <div id="postedParam">beforeParameter</div>
	 <div id="ajaxReturn">ajaxReturnOutput</div>
 </div>
 </body>
</html>