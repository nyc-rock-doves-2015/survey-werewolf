enable :sessions

get '/users/:id' do |id|
	id = current_user.id
	@user = current_user
	erb :'users/show'
end