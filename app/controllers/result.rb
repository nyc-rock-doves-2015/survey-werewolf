enable :sessions

get '/surveys/:id/results' do |id|
  @survey = Survey.find(id)
  erb :'/results/show'
end