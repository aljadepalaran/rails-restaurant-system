class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to root_path, notice: 'Reset link sent to the email' 
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to login_path, alert: 'Invalid token'
  end

  def update
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to login_path, notice: 'Successfully changed password'
    else
      render :edit
    end
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to login_path, alert: 'Invalid token'
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end