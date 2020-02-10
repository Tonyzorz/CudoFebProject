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
				<div class="searchDiv">
					<form action="getSearchedBoard.do">
<!-- 					<img src="style/image/searchimage.jpeg" id="searchImage">-->	
						<input type="text" id="searchBox" name="searchedTitle">
						<input type="submit" id="searchButton">
					</form>
				</div>
			</div>
			
			<div class="category">
				<!-- 데이터베이스 연동해서 가지고오 -->
				<ul>
					<c:forEach var="febcolumn" items="${febcolumns }" varStatus="loop">
						<li id="category_${loop.index}" onclick="febCategory(this.id)" value="${febcolumn.febColumnTitle }">${febcolumn.febColumnTitle }</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="table">
				<table>
					<c:forEach var="febboard" items="${febboard }">
						<tr class="main_board_title" id="main_board_title">
							<td id="febCategory">${febboard.febColumnTitle }</td>
							<td id="febMainTitle">${febboard.febMainTitle }</td>
						</tr>
						
						<tr class="main_board_content" id="main_board_content">
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
						<option value="${febcolumn.febColumnTitle }" value="${febcolumn.febColumnTitle }">${febcolumn.febColumnTitle }</option>
					</c:forEach>
				</select>
				 
				<select name="febColumnCategoryTitle" id="febColumnCategoryTitle">
					<%-- <c:forEach var="febColumnCategory" items="${febColumnCategoryTitleDefault }">
						<option value="${febColumnCategory.febColumnCategoryTitle }" >${febColumnCategory.febColumnCategoryTitle }</option>
					</c:forEach> --%>
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
	
	function febCategory(clicked_id){
		//var categoryValue = document.getElementById('category').getAttribute('value');
		var categoryValue = document.getElementById(clicked_id).getAttribute('value');
		
		//alert(testing);
		$.ajax({
			type: 'POST',
			url: 'getBoardTotalAccordingToFebColumnTitle.do',
			data: categoryValue,
			contentType : 'application/json; charset=UTF-8',
			success: function(data){
				$('.table').find('table').remove();
				$('.table').append("<table></table>");
				
				$.each(data, function(i){
					$('.table').find('table').append(
						"<tr class='main_board_title' id='main_board_title'>"+
							"<td id='febCategory'>" + data[i].febColumnTitle + "</td>" +
							'<td id="febMainTitle">' + data[i].febMainTitle + "</td>" + 
						"</tr>" +
						"<tr class='main_board_content' id='main_board_content'>" + 
							"<td id='febCategoryTitle'>" + data[i].febColumnCategoryTitle + "</td>" +
							"<td id='febTitle'>" + data[i].febTitle + "</td>" +
							"<td id='febContent'>" + data[i].febContent + "</td>" +
						"</tr>"
									
					);
				})
			}
		})
	}
	
	
	
	
	
	/* function searchBoard(){
		var searchedTitle = document.getElementById('searchBox').value;
		
		$.ajax({
			type: 'POST',
			url: 'getSearchedBoard.do',
			data: searchedTitle,
			contentType: 'application/json; charset=UTF-8',
			success: function(data){
				
			}
		})
	} */
	
	
	</script>
	
</body>
</html>