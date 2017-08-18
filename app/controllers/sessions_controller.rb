class SessionsController < ApplicationController
  def new
  end

  def create
    # emailに該当するユーザをみつける
    user = User.find_by(email: params[:session][:email].downcase)
    # ユーザーがデータベースにあり、かつ、認証に成功した
      log_in user
      redirect_to user
    if user && user.authenticate(params[:session][:password])
      # 成功時のアクション
    else
      flash[:danger] = 'emailもしくはpasswordが正しくありません'
      render 'new'
 end

end
