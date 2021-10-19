module ApplicationHelper  
  def current_user
    p session[:user_id] && User.find(session[:user_id])
  end
end
