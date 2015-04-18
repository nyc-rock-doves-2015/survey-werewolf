$(document).ready(function() {
  var answer_number = 2;
  // add a question to Make Survey form when user clicks on "add question"
  $('#add-answer-option-field').on('click', function(event) {
    var answerOptionNode = "<p><label>Answer Option " + answer_number + ": </label> <input type='text' name='answer-option-" + answer_number + "'></p>";
    $('.answer-option-container').append(answerOptionNode);
    answer_number++;
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
});
