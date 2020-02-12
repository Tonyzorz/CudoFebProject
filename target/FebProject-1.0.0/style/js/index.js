window.onload = function() {
	// Get the modal
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

	// for table viewing
	var boardTitle = document.getElementsByClassName("main_board_title")[0];

	var boardContent = document.getElementsByClassName("main_board_content")[0];
	// boardTitle.onclick = function(){
	// if(boardContent.style == 'none'){
	// boardContent.style.display = "block";
	// }else{
	// boardContent.style.display = "none";
	// }
	// }
	
	var boardTitleId = document.getElementById('main_board_title');
	var boardContent = document.getElementById("main_board_content");

//	boardTitleId.onclick = function(){
//		alert("clickcy clicky");
//		for(var i = 0; i < boardTitleId.length; i++)(function(i){
//			if(boardContent[i].style.display == 'none'){
//				boardContent[i].style.display = 'block';
//			} else {
//				boardContent[i].style.display = 'none';
//			}
//		})(i);
//	}
	
	$('.main_board_title>#febMainTitle').click(function(){
		alert('here');
		//$(this).parent().siblings('#main_board_content').show();
		//$(this).parent().find('#main_board_content').show();
		//$(this).parent().siblings('#main_board_content').toggle();
		$(this).parent().next().toggle();
	});


	
	

}
