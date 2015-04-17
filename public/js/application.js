$(document).ready(function() {
  // add a question to Make Survey form when user clicks on "add question"
  $('#add-question-field').on('click', function(event) {
    event.preventDefault();
    var questionNode = "<p><label>Question</label></p><p><input type='text' name='question'></p><p><label>Answer Type</label></p><p><select class='select-answer-type'><option value='radio'>Choose One</option><option value='checkbox'>Choose Many</option></select></p>";
    $('.question-container').append(questionNode);
  });
});
