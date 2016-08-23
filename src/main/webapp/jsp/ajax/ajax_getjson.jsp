<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="euc-kr">
    <title>jQuery를 이용한 JSON 데이터 구하기</title>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script>
	$(document).ready(function() {
	  // 서버에 데이터를 HTTP GET 방식으로 전송한 후 서버측 응답을 JSON 형식으로 받을때 사용 
	  $('#target').click(function() {
		  alert("clicked");
	    $.getJSON('/comapp/resources/jsondata.json', function(data) {
	      var html = '';
	      $.each(data, function(entryIndex, entry) {
	    	  html += '<div class="entry">';
	    	  html += '<h3 class="term">' + entry.term + '</h3>';
	    	  html += '<div class="part">' + entry.part + '</div>';
	    	  html += '<div class="definition">';
	    	  html += entry.definition;
	    	  html += '</div>';
	    	  html += '</div>';
	      });
	      console.log(html);
	      $('#dictionary').html(html);
	    });
	    return false;
	  });
	});
    </script>
    
    <script>   
    $.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?",   
    {   
        tags: "mount rainier",   
        tagmode: "any",   
        format: "json"   
      },   
      function(data) {   
        $.each(data.items, function(i,item){   
          $("<img/>").attr("src", item.media.m).appendTo("#images");   
          if ( i == 3 ) return false;   
        });   
    });  
  </script> 
  
  
  </head>
  <body>
    <div id="container">
      <div class="letters">
        <div class="letter" id="target">
          <h3><a href="#">클릭</a></h3>
      	</div>
   	  </div>
      	      
      <div id="dictionary">
      </div>

    </div>
  </body>
</html>