class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @user = User.where(user_id: @user.id)
  end

  def new
  end

  def create
    @user = User.new
    @user.id = params[:id]
    @user.name = params[:name]
    @user.email = params[:email]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to "/users"
  end
end
