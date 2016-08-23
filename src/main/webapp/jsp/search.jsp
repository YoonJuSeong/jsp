<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

function ChangeSrc() {
	document.getElementById('I2').location.href="search_frame.jsp";
}

</script>

<body>

<form>
<input type="submit" onclick="ChangeSrc()">
</form>
<iframe id="I1" name="I1" style="width: 611px; height: 582px" src="search_frame.jsp">
Your browser does not support inline frames or is currently configured not to display inline frames.
</iframe>
<iframe id="I2" name="I2" style="width: 611px; height: 582px" src="index.jsp">
Your browser does not support inline frames or is currently configured not to display inline frames.
</iframe>




</body>
</html>