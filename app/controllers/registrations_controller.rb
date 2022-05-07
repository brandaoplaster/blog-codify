class RegistrationsController < Devise::RegistrationsController
  layout "dashboard_base"

  private

  def sign_up_params
    params.require(:user).permit(:username, :bio, :email, :password, :password_confirmation)
  end
end
