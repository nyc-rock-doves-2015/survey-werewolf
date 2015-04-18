# Add a new question to a survey.
get '/surveys/:id/question' do |id|
  survey = Survey.find(id)
  new_question = survey.questions.create(question_desc: params[:question])
  new_question.answers.create(answer_text: params['answer-option'])
  # where do we go from here?
end
