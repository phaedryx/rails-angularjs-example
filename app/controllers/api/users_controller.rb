class Api::UsersController < ApiController
  def index
    @users = User.all
    respond_with @users
  end

  def show
    @user = User.find(params[:id])
    respond_with @user
  end

  def new
    @user = User.new
    respond_with @user
  end

  def edit
    @user = User.find(params[:id])
    respond_with @user
  end

  def create
    @user = User.new(params[:user])
    respond_with @user
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user
  end
end
