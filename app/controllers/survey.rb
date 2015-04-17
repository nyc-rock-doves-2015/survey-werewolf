get '/surveys' do
  "List of surveys"
end

get '/surveys/create' do
  erb :'/make-survey/make-survey'
end

#If owner: edit/delete/view results
#If logged in: take/view results if already taken
#If not logged in: redirect to signup/signin
get '/surveys/:id' do |id|
  erb :'/take-survey/take-survey'
end

