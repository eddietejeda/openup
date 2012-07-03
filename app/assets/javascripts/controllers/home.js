OpenUp.home = {
  
  init: function(){
    console.log("using home");
    $("[data-scroll-to]").click(function(){
       OpenUp.home.goToByScroll($(this).data('scroll-to')); 
    });   
    
    $(window).scroll(OpenUp.home.resizeHeader);
    
    OpenUp.home.resizeHeader();    

    $("select").chosen();
    $("select").chosen({allow_single_deselect:true});    
  },


  goToByScroll: function(id){
    $('html,body').animate({scrollTop: $("#"+id).offset().top - 95},'fast');
  },

  resizeHeader: function(){
      var pos = $(window).scrollTop();
      
      if (pos >= 60) {
          $("body").addClass('fixed-header')
      }else{
          $("body").removeClass('fixed-header')        
      }
  }


}
