$(document).ready(function() {
  // add a question to Make Survey form when user clicks on "add question"
  $('#add-question-field').on('click', function(event) {
    event.preventDefault();
    var questionNode = "<p><label>Question</label></p><p><input type='text' name='question'></p><p><span id='add-answer-option-field'>Add Answer Option</span></p><div class='answer-option-container'></div>";
    $('.question-container').append(questionNode);

    $('#add-answer-option-field').on('click', function(event) {
      var answerOptionNode = "<p><label>Answer Option: </label> <input type='text' name='answer-option'></p>";
      $('.answer-option-container').append(answerOptionNode);
    });
  });
});
