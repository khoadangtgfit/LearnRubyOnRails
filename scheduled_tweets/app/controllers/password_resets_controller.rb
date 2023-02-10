class PasswordResetsController < ApplicationController
  def new

  end

  def edit
    @user = User.find_signed!(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: "Your token has expired"
  end

  def udpate
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    if @user.update(update_params)
      redirect_to sign_in_path, notice: "Your password was reset successfully. Please sign in."
    else
      render :edit
    end
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset_deliver_new
      redirect_to root_path, notice: "if an account with tha email found, we have sent a link to reset your password."
    end
  end

  private

  def update_params
    params.require(:user).permit(:password, :password_confirmation)

  end

end
