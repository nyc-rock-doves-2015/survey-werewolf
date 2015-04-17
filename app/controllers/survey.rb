get '/surveys' do
  @surveys = Survey.all
  "List of surveys"
end

get '/surveys/create' do
  erb :'/make-survey/make-survey'
end

get '/surveys/user/:id' do |id|
  @user = User.find(id)
  @surveys = @user.surveys
  "List of #{@user.name}'s surveys"
end

get '/surveys/:id/results' do |id|
  @survey = Survey.find(id)
  "Results of #{@survey.title}"
end

#If owner: edit/delete/view results
#If logged in: take/view results if already taken
#If not logged in: redirect to signup/signin
get '/surveys/:id' do |id|
  erb :'/take-survey/take-survey'
end

