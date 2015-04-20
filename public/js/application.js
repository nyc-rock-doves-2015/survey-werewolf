$(document).ready(function() {
  // Why 2, why not 3?
  //
  // I really feel like you could use some OO js to make something that manages
  // the updating and appending and changing of the display state.
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

  /* Don't commit commented out garbage like this, delete it.  It look like you
  * got confused and gave up.*/

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
