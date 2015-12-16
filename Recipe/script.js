$(document).ready(function() {
  console.log("Script included!");

	$( "input[type=checkbox]" ).on( "click", function(){

		$(this).parent().toggleClass("checked");
			
	});
  	$(".camera").mouseover(function() {
    $(".camera").css({ width: '34px', height: 'auto' });
});
  
$(".camera").mouseleave(function() {
    $(".camera").css({ width: '30px', height: 'auto' });
});

  
  	$(".camera").click(function(){

       var el = $(".camclick");
  if (el.text() == el.data("text-swap")) {
    el.text(el.data("text-original"));
  } else {
    el.data("text-original", el.text());
    el.text(el.data("text-swap"));
  }

  		$(".instruction").fadeToggle("slow",function(){


  		});

  });


});