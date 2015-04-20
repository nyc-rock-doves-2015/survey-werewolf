$(document).ready(function() {
  var response_number = 2;
  // add a question to Make Survey form when user clicks on "add question"
  $('#add-response-option-field').on('click', function(event) {
    var responseOptionNode = "<p><label>Response " + response_number + ": </label> <input type='text' name='response-option-" + response_number + "'></p>";
    $('.response-option-container').append(responseOptionNode);
    response_number++;
  });

  var menuToggle = $('#js-mobile-menu').unbind();
  $('#js-navigation-menu').removeClass("show");

  menuToggle.on('click', function(e) {
    e.preventDefault();
    $('#js-navigation-menu').slideToggle(function(){
      if($('#js-navigation-menu').is(':hidden')) {
        $('#js-navigation-menu').removeAttr('style');
      }
    });
  });
  
  $('.auto-focus:last').focus();

  $(document).ready(function() {
  var element = document.getElementById("js-fadeInElement");
  $(element).addClass('js-fade-element-hide');

  $(window).scroll(function() {
    if( $("#js-fadeInElement").length > 0 ) {
      var elementTopToPageTop = $(element).offset().top;
      var windowTopToPageTop = $(window).scrollTop();
      var windowInnerHeight = window.innerHeight;
      var elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop;
      var elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop;
      var distanceFromBottomToAppear = 100;

      if(elementTopToWindowBottom > distanceFromBottomToAppear) {
        $(element).addClass('js-fade-element-show');
      }
      else if(elementTopToWindowBottom < 0) {
        $(element).removeClass('js-fade-element-show');
        $(element).addClass('js-fade-element-hide');
      }
    }
  });
});


  // // error message for empty search results
  // $('#search').on('submit', function(e) {
  //   e.preventDefault();
  //   //user input
  //   var search = $('input').val();
  //   // active record search



  //   // need ajax call?



  //   // add error message to container
  //   var errorMessage = "<div class='flash-error'><span>No results found for " + search + "</span></div>";
  //   $('.container').prepend(errorMessage);
  // });


});
