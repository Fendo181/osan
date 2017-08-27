class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # def show
  #   @user = User.find(params[:id])
  #   @profile = Profile.find(user_id: @user.id)
  # end

  # def edit
  #   @user = User.find(params[:id])
  #   @profile = Profile.new(user_id:@user.id)
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      #ユーザ登録が成功した時点でProfileも作成する
      @profile = Profile.new(user_id:@user.id).save
      flash[:success] = "アカウント登録に成功しました!"
      #redirect_to @user
      redirect_to '/welcome'
    else
      render 'new'
    end
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
   end
end
