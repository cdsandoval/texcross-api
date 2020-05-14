class UsersController < ApplicationController

  def index
    all_users = User.all
    render json: { users: all_users }, status: :ok
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: { status: 'User created successfully' }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find(user_delete_params)

    if user.destroy!
      render json: { status: 'User deleted successfully' }, status: :ok
    else
      render json: { status: user.errors.full_messages }, status: :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user_delete_params
    params.permit(:id)
  end
end
