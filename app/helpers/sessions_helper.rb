module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #sessions_controllerの26行目「session[:user_id] = @user.id」が代入されてる
  end
  
  def logged_in?
    !!current_user
  end
end
