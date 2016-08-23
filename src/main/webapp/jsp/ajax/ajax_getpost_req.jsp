<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript" language="javascript">
 
 //Ajax Get Call
    $(document).ready(function(){
    	$('#btn1').on('click', function(){
	        $.ajax({
	            type : "GET",
	            url : "ajax_textres.jsp?type=1",
	            dataType : "text", //DataReturn type xml, text, html, json
	            error : function(){
	                alert('통신실패!!');
	            },
	            success : function(data){ //data, textStatus, jqXHR
	                alert("통신데이터 값 : " + data) ;
	                $("#dataArea").html(data) ;
	            }
	        });
        
    	})
    	
    	$('#btn2').on('click', function(){
	        $.ajax({
	            type : "GET",
	            url : "ajax_jsonres.jsp?type=1",
	            dataType : "json", //DataReturn type xml, text, html, json
	            error : function(){
	                alert('통신실패!!');
	            },
	            success : function(data){
	                alert("통신데이터 값 : " + data.name) ;
	                $("#dataArea").html(data) ;
	            }
	        });
        
    	})
    	
    	//$.post() 방식 - 서버에 데이터를 HTTP POST 방식으로 전송한 후 서버측 응답 받을 때 사용
    	$('#btn3').on('click', function(){
	        // 요청 Url 만 , 리턴 결과값 무시  
	        $.post("http://web/test/");  
	          
	        // 요청 Url + 추가적으로 보내는 Json Data, 리턴 결과값 무시  
	        $.post("http://web/test/", { name: "John", time: "2pm" } );  
	          
	        // 요청 Url + 추가적으로 보내는 Array Data, 리턴 결과값 무시  
	        $.post("http://web/test/", { 'choices[]': ["Jon", "Susan"] });  
	          
	        // 요청 Url + 폼데이터, 리턴 결과값 무시  
	        $.post("http://web/test/", $("#testform").serialize());  
	          
	        // 요청 Url, xml(또는 html)리턴 결과값  
	        $.post("http://web/test/",   
	              function(data) {    alert("Data Loaded: " + data);  });  
	          
	        // 요청 Url + 추가적으로 보내는 Json Data, 리턴결과값, 결과값 형식  
	        $.post("http://web/test/", { name: "John", time: "2pm" },    
	              function(data) {    process(data);  },   "xml" );  
	          
	        // 요청 Url + 추가적으로 보내는 Json Data, 리턴결과값(json 다루는 형식), 결과값 형식  
	        $.post("http://web/test/", { "func": "getNameAndTime" },    
	              function(data){      
	                             console.log(data.name); // John      
	                             console.log(data.time); //  2pm    
	              }, "json");  
    	})
    	
    	//$.load() 방식 - 외부 컨텐츠 가져올때 사용 .load( url [, data] [, complete(responseText, textStatus, XMLHttpRequest)] )
        //  Html Content 로딩  
        $('#result').load('ajax/test.html');  
          
        //  Html Content 로딩 후 메시지  
        $('#result').load('ajax/test.html', function() {  
          alert('Load was performed.');  
        });  
          
        //  Html Content #container Target 로딩  
        $('#result').load('ajax/test.html #container');  
          
        //  array parameter 전달 후 Html Content 로딩  
        $("#objectID").load("test.asp", { 'choices[]': ["Jon", "Susan"] } );  
        
        
    	// 미리 ajaxSetup에 기본사항들을 설정한 후 ajax 로 각각 호출  
        $.ajaxSetup({  
            url: 'http://web/test/',  
            global: false,   
            type: "POST"   
          
        });  
        $.ajax({  
              // url not set here; uses 'http://web/test/'  
              data: {'name': 'Dan'}  
        });  
        $.ajax({  
              // url not set here; uses 'http://web/test/'  
              data: {'name': 'John'}  
        });
        
        
        // 요청 Url + 추가적 데이터, 완료된 후 리턴 메시지를 받음  
        $.ajax({   
              type: "POST",   
              url: "http://web/test/",   
              data: { name: "John", location: "Boston" }   
        }).done(function( msg ) {   
              alert( "Data Saved: " + msg );   
        });  
          
        // 최종 버전 리턴 Html 가져오기  
        $.ajax({   
              url: "http://web/test/",   
              cache: false   
        }).done(function( html ) {   
              $("#results").append(html);   
        });  
          
        // 서버에 데이터를 보낸 후 저장처리, 그리고 사용자에게 리턴 완료 메시지 반환  
        var menuId = $("ul.nav").first().attr("id");   
        var request = $.ajax({   
            url: "http://web/test/",   
            type: "POST",   
            data: {id : menuId},   
            dataType: "html"   
        });   
           
        request.done(function(msg) {   
            $("#log").html( msg );   
        });   
           
        request.fail(function(jqXHR, textStatus) {   
            alert( "Request failed: " + textStatus );   
        });  
          
          
        // 자바 스크립트 로딩 및 실  
        $.ajax({   
            type: "GET",   
            url: "test.js",   
            dataType: "script"   
        });  
    });

  //Ajax Get Call
</script>




<script type="text/javascript" language="javascript">
//Post Serialize Call
function ajax_serialize(){
	var queryString = $("form[name=serialForm]").serialize();
	
	$.ajax({
		type:"post",
		url:"ajax_seral_response.jsp",
		data:queryString,
		dataType:"json",
		error:function(xhr, status, error){
			alert('error');
		},
		success:function(data){
			alert("Return value : " + data);
		}
	})
}

</script>


<body>

<input type="button" id="btn1" value="text 요청">
<input type="button" id="btn2" value="json 요청">
<div id="dataArea"></div>

<form name="testForm" id="testForm">
	<input type="text" name="name" id="name" value="HongGilDong"/>
	<input type="text" name="id" id="id" value="1234567"/>
</form>


</body>
</html>