enable :sessions

get '/surveys' do
  @surveys = Survey.all
  erb :'/all_surveys'
end

get '/surveys/create' do
  erb :'/make-survey/make-survey'
end

post '/surveys/create' do
  title = params[:title]
  image = params[:image]
  @survey = Survey.create(title: title, user_id: session[:user_id], image: image);

  redirect "/surveys/#{@survey.id}/question"
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
  @survey = Survey.find(id)
  @questions = @survey.questions
  erb :'/take-survey/take-survey'
end

# should redirect to users survey page
# need to destroy image as well?
delete '/surveys/:id/delete' do |id|
  survey = survey.find(id)
  questions = survey.questions
  survey.destroy
  questions.each do |question|
    question.destroy
  end
  redirect '/'
end

# carrierwave file uploader
# post '/uploads' do
#   user = current_user
#   @uploaded_file = user.uploads.create :filepath => params[:upload]
#   u.save!
  
#   @uploaded_file.to_s  
# end




