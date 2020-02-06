<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Insert title here</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>

</head>
<body>
	<%@include file="jsp/header.jsp"%>
	<div class="main left">left side</div>
	<div class="main_right">
		<div class="search">Search part</div>
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

	</div>
	<!-- Trigger/Open The Modal -->
	<button id="myBtn">Open Modal</button>

	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<form action="insert.do">
			<label for="febMainTitle">Main Title</label>
			<input type="text" name="febMainTitle">
			
			<label for="febTitle">Title</label>
			<input type="text" name="febTitle">
			
			<textarea name="febContent"></textarea>
		</form>
		</div>
		

	</div>
	<script>
	//Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
</body>
</html>