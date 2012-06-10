function goToByScroll(id){
  $('html,body').animate({scrollTop: $("#"+id).offset().top - 155},'slow');
}

$(function(){
    $("[data-scroll-to]").click(function(){
       goToByScroll($(this).data('scroll-to')); 
    });    
})
