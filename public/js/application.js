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
  
  $('.auto-focus:first').focus();

  


});
