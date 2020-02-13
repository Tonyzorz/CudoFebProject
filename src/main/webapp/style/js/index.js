window.onload = function() {
	
	//searchBox regex
	document.getElementById("searchBox").addEventListener("keyup", checkTyping);
	function checkTyping(){
		var searchString = document.getElementById("searchBox").value;
		var searchMessage = document.getElementById("searchMessage");
		var regexTest = /[^a-zㄱ-ㅎㅏ-ㅣ가-힣0-9]/gi;
		
		if(regexTest.test(searchString)){
			searchMessage.className = '';
			searchMessage.classList.add("regexAngry");
			searchMessage.innerHTML = "이상한 글씨 쓰지마세요! >:(";
			
		}else if(searchString != ""){
			$.ajax({
				type: "POST",
				url: "existSearchedBoard.do",
				data: searchString,
				contentType : 'application/json; charset=UTF-8',
				success: function(data){
					//1 = have
					//0 = does not have
					console.log(data);
					if(data) {
						searchMessage.className = '';
						searchMessage.classList.add("regexRight");
						searchMessage.innerHTML = "검색된 타이틀이 디비에 있어요! :)";
					}else if(data == 0){
						searchMessage.className = '';
						searchMessage.classList.add("regexWrong");
						searchMessage.innerHTML = "검색된 타이틀이 디비에 없어요! :(";
					}else{
						
					}
					
				}
			});
			
		} else{
			searchMessage.className = '';
			searchMessage.classList.add("regexDefault");
			searchMessage.innerHTML = "타이틀을 검색해보세요! :|";
		}
		
	};
	
	
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	

	// When the user clicks the button, open the modal
	btn.onclick = function() {
		alert("asdf");
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

	// for table viewing
	$('.main_board_title>#febMainTitle').click(function(){
		$(this).parent().next().toggle();
	});

	
	
	
	

}
