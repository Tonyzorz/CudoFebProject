<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/css/index.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<script type="text/javascript" src="style/js/index.js"></script>

<title>Insert title here</title>

</head>
<body>
	<%@include file="jsp/header.jsp"%>
	
	<div class="middle">
	
		<div class="main_left">
			<ul>
				<li>First tab</li>
				<li>Second tab</li>
				<li>Third tab</li>
				<li>Fourth tab</li>
			</ul>
		
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
			</div>
			
			<div class="table">
				<table >
					<c:forEach var="febboard" items="${febboard }">
						<tr class="main_board_title">
							<td id="febCategory">${febboard.febColumnTitle }</td>
							<td id="febMainTitle">${febboard.febMainTitle }</td>
						</tr>
						
						<tr class="main_board_content">
							<td id="febCategoryTitle">${febboard.febColumnCategoryTitle }</td>
							<td id="febTitle">${febboard.febTitle }</td>
							<td id="febContent">${febboard.febContent }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
		</div>
	</div>
	
	<!-- Trigger/Open The Modal -->
	<button id="myBtn">Open Modal</button>
	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<form action="insert.do" method="GET">
			
				<select name="febColumnTitle" id="febColumnTitle" onchange="febColumn(this.value);">
					<c:forEach var="febcolumn" items="${febcolumns }">
						<option value="${febcolumn.febColumnTitle }">${febcolumn.febColumnTitle }</option>
					</c:forEach>
				</select>
				 
				<select name="febColumnCategoryTitle" id="febColumnCategoryTitle">
					<option value="카메라 및 센서" >카메라 및 센서</option>
				</select>
				
				<label for="febMainTitle">Main Title</label>
				<input type="text" name="febMainTitle">
				
				<label for="febTitle">Title</label>
				<input type="text" name="febTitle">
				
				<textarea name="febContent"></textarea>
				<input type="submit" value="submit">
			</form>
		</div>
	</div>
	<script>
	function febColumn(febColumnTitle) {
		var febColumnTitleString = document.getElementById("febColumnTitle").value;
		$.ajax({
			type : "POST",
			url : "getFebColumnCategoryTitle.do",
			data : febColumnTitleString,
			contentType : 'application/json; charset=UTF-8',
			success : function(data) {
				// $("#febColumnCategoryTitle").find("option").remove().end().append("<option
				// value=''>전체</option>");
				$("#febColumnCategoryTitle").find("option").remove();
				$.each(data, function(i) {
					$('#febColumnCategoryTitle').append(
							"<option value='" + data[i].febColumnCategoryTitle
									+ "'>" + data[i].febColumnCategoryTitle
									+ "</option>");
				});
			},
			error : function() {
				alert("error");
			}
		})
	}
	</script>
	
</body>
</html>