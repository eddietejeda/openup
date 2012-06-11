function goToByScroll(id){
  $('html,body').animate({scrollTop: $("#"+id).offset().top - 95},'slow');
}

function resizeHeader(){
    var pos = $(window).scrollTop();
    
    if (pos >= 60) {
        $("body").addClass('fixed-header')
    }else{
        $("body").removeClass('fixed-header')        
    }
}

$(function(){
    $("[data-scroll-to]").click(function(){
       goToByScroll($(this).data('scroll-to')); 
    });   
    
    $(window).scroll(resizeHeader);
    
    resizeHeader();
})
