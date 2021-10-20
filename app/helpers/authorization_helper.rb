module AuthorizationHelper
  private

  def confirm_login
    redirect_to login_path, notice: 'You must log in to do that.' unless current_user
  end
end
