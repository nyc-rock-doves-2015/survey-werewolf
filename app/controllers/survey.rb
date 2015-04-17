get '/' do
  "Index Page"
end

get '/surveys' do
  "List of surveys"
end

#If owner: edit/delete/view results
#If logged in: take/view results if already taken
#If not logged in: redirect to signup/signin
get '/surveys/:id' do |id|
  "Individual survey"
end