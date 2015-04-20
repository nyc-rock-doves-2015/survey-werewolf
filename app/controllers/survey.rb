enable :sessions


get '/surveys/filter' do
  # apparently this isn't a safe method of query. I'll fix in after our series A.
  # it seems good to me....
  #
  # http://stackoverflow.com/questions/19105706/rails-4-like-query-activerecord-adds-quotes

  @surveys = Survey.where("title LIKE ?", "%#{params[:title]}%")
  if @surveys.length == 0
    redirect '/'
  else
    erb :'/all_surveys'
  end
end

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

post '/surveys/:id' do |id|
  params["question"].each_pair do |question, answer|
    # No, you can use this_answer to create a response since Answer has_many
    # responses  If you write foreign_key_id you'r enot using AR to help you!
    this_answer = Answer.find_by(answer_text: answer)
    Response.create(user_id: session[:current_user_id], answer_id: this_answer["id"])
  end
  redirect "/surveys/#{id}/results"
end

get '/surveys/user/:id' do |id|
  @user = User.find(id)
  @surveys = @user.surveys
  "List of #{@user.name}'s surveys"
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
  #questions = survey.questions
  #answers = questions.answers
  survey.destroy # see AR dependent :destroy
  # http://guides.rubyonrails.org/association_basics.html
  #answers.each do |answer|
    #answer.destroy
  #end
  #questions.each do |question|
    #question.destroy
  #end
  redirect '/'
end



# carrierwave file uploader
# post '/uploads' do
#   user = current_user
#   @uploaded_file = user.uploads.create :filepath => params[:upload]
#   u.save!

#   @uploaded_file.to_s
# end




