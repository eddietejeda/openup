OpenUp = {
  common: {
    init: function() {
      // application-wide code
    }
  },

  requests: {
    init: function(){
      console.log("using addresses");
    },
    index: function(){
      console.log("using index");      

      var r = Raphael("piechart"),
      pie = r.piechart(320, 240, 100, [45, 30, 25],

                     { 
                      legend: ["%%.%% - Pending", "%%.%% -Fulfilled", "%%.%% -Denied"],
                      legendpos: "east",
                      legendcolor: 'black',
                      strokewidth: 0.7,
                      border: 1,
                      bordercolor: 'black',
                      href: ["#pending", "#fulfilled", "#denied"]
                   }
        );

      pie.hover(
        function () {
          this.sector.stop();
          this.sector.scale(1.1, 1.1, this.cx, this.cy);

          if (this.label) {
              this.label[0].stop();
              this.label[0].attr({ r: 7.5 });
              this.label[1].attr({ "font-weight": 800 });
        }}, 
        function () {
          this.sector.animate({ transform: 's1 1 ' + this.cx + ' ' + this.cy }, 500, "bounce");

          if (this.label) {
              this.label[0].animate({ r: 5 }, 500, "bounce");
              this.label[1].attr({ "font-weight": 400 });
          }}
      ); 


      var r = Raphael("barchart"),
        data3 = [[55, 20, 13, 32, 5, 1, 2, 10], [10, 2, 1, 5, 32, 13, 20, 55], [12, 20, 30]],
        txtattr = { font: "12px sans-serif" };

      r.text(160, 250, "Multiple Series Stacked Chart").attr(txtattr);

      r.barchart(10, 250, 300, 220, data3, {stacked: true});




      $('a[href=#pending]').click(function(){

          alert(1);
      });
    }
  }
};

UTIL = {
  exec: function( controller, action ) {
    var ns = OpenUp,
        action = ( action === undefined ) ? "init" : action;

    if ( controller !== "" && ns[controller] && typeof ns[controller][action] == "function" ) {ns[controller][action]();}
  },

  init: function() {
    var body = document.body,
        controller = body.getAttribute( "data-controller" ),
        action = body.getAttribute( "data-action" );

    UTIL.exec( "common" );
    UTIL.exec( controller );
    UTIL.exec( controller, action );
  }
};
 
$( document ).ready( UTIL.init );
