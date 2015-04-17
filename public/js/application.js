$(document).ready(function() {
  // add a question to Make Survey form when user clicks on "add question"
  $('#add-question-field').on('click', function(event) {
    event.preventDefault();
    var questionNode = "<p><label>Question</label></p><p><input type='text' name='question'></p>";
    $('.question-container').append(questionNode);
  });
});
