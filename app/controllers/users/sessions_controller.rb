# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [ :create ]

  # GET /resource/sign_in
  def new
    @users = User.all
    super
  end

  # POST /resource/sign_in
  # def create
  #   # flash[:notice] = "Login successfully"
  #   super
  # end

  # # DELETE /resource/sign_out
  # def destroy
  #   flash[:notice] = "Logout successfully"
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [ :username, :password ])
  end
end
