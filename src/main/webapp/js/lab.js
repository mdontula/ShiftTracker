$(document).ready(function(){
	
	$('#mainReportButton').click(function(){
		
		$('.reportformbutton').css("color","black");
		$(this).css("color","green");
		$('.reportform').hide();
		$('#mainReport').show();
	});
	
	$('#urineReportButton').click(function(){

		$('.reportformbutton').css("color","black");
		$(this).css("color","green");
		$('.reportform').hide() ;
		$('#urineReport').show();
	});
	
	$('#biochemistReportButton').click(function(){

		$('.reportformbutton').css("color","black");
		$(this).css("color","green");
		$('.reportform').hide();
		$('#biochemReport').show();
	});
	
	$('#lipidReportButton').click(function(){

		$('.reportformbutton').css("color","black");
		$(this).css("color","green");
		$('.reportform').hide();
		$('#lipidReport').show();
	});
	
	$('#showHistoryButton').click(function(){

		$('.reportformbutton').css("color","black");
		$(this).css("color","green");
		$('.reportform').hide();
		$('#showHistory').show();
	});
	
	
	
	$('#logo').mouseover(function(){
		$('#printmenu').show();
		
	});
	$('#hidespan').click(function(){
		$('#printmenu').hide();
		
	});
	
	
});