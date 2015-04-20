# See form to add new question to a survey.
get '/surveys/:id/question' do |id|
  @survey = Survey.find(id)
  erb :'make-survey/question'
end

# Add a new question to a survey.
put '/surveys/:id/question' do |id|
  puts params
  survey = Survey.find(id)
  new_question = survey.questions.create(question_desc: params[:question])
  # This code is working, but why not simply nest the parameters in the form
  # such that you can do params[:question][:responses]?  This looks like a
  # hack.
  params.each_key do |param|
    if param.include?("response-option")
      new_question.answers.create(answer_text: params[param])
    end
  end
  # And that definitely feels a big wonky.
  if params.include?("Generate")
    redirect "/surveys"
  else
    redirect "/surveys/#{survey.id}/question"
  end
end
