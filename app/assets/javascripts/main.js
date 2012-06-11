function goToByScroll(id){
  $('html,body').animate({scrollTop: $("#"+id).offset().top - 155},'slow');
}

function resizeHeader(){
    var pos = $(window).scrollTop();
    
    if (pos >= 60) {
        $(".header").addClass('fixed')
    }else{
        $(".header").removeClass('fixed')        
    }
}

$(function(){
    $("[data-scroll-to]").click(function(){
       goToByScroll($(this).data('scroll-to')); 
    });   
    
    $(window).scroll(resizeHeader);
    
    resizeHeader();
})
