<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Insert title here</title>
<script>
	$(function(){
		$("#dialog").dialog();
	});
</script>
</head>
<body>
<%@include file="jsp/header.jsp" %>
	<div class="main left">
		left side
	</div>
	<div class="main_right">
		<div class="search">
			Search part 	
		</div>
		<div class="category">
			<!-- 데이터베이스 연동해서 가지고오 -->
			<ul>
			<c:forEach var="febcolumn" items="${febcolumns }">
				<li>${febcolumn.febColumnTitle }</li>
			</c:forEach>
			</ul>
			<hr>
		</div>
		<table border="1">
			<c:forEach var="febboard" items="${febboard }">
				<tr>
					<td><span>하드코딩</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><span>${febboard.febMainTitle }</span></td>
				</tr>	
				<tr>
					<td>ColumnCategoryTitle</td>
					<td>${febboard.febTitle }</td>
					<td>${febboard.febContent }</td>
				</tr>
			</c:forEach>
			
			
		</table>
		<div id="dialog" title="Create new Post">
			<p>This is the place where all the magic happens</p>
		</div>
	</div>

</body>
</html>