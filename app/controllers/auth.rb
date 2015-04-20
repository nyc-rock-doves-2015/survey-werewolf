enable :sessions

# Why is / in auth?
get "/" do
  erb :"/partials/_landing-page"
end

get '/signin' do
  if current_user
    redirect '/'
  else
    erb :'auth/signin'
  end
end

post '/signin' do
  user = User.find_by(name: params[:name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
  else
    # add bourbon component here
    flash[:error] = "Could not find your account. Please try again."
    redirect '/signin'
  end
  redirect '/'
end

get '/signup' do
  if current_user
    redirect '/'
  else
    erb :'auth/signup'
  end
end

post '/signup' do
  user = User.new(params[:user])
  if empty_sign_up_field?(params[:user])
    flash[:error] = "You need a username and a password to sign up. Please try again."
  elsif params[:user][:password] != params[:user][:password_confirmation]
    flash[:error] = "Your passwords didn't match. Please try again."
  elsif !user.valid?
    flash[:error] = "That username has already been chosen. Please try again."
  else
    user.save
    session[:user_id] = user.id
    redirect '/'
  end
  redirect '/signup'
end

get '/signout' do
  session[:user_id] = nil
  redirect '/'
end
