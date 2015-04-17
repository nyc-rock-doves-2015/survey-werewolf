def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def privacy_guard(survey)
  if !survey.public && !survey_owner?(survey)
    # flash[:error] = "Sorry, you do not have permission to see that."
    redirect '/'
  end
end

def survey_owner?(survey)
  current_user && survey.user_id == current_user.id
end

def empty_sign_up_field?(user_params)
  user_params.each_value do |param|
    return true if param == ""
  end
  return false
end
