class AccountsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if Current.user.update(account_params)
      redirect_to root_path, notice: 'Account updated'
    else
      render :new
    end
  end

  private

  def account_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation)
  end
end