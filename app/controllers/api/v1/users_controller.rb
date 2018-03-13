class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user
    def index
      users = User.all
      render json: users
    end

    def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
      if user.save
        render json: {message: 'User created successfully'}, status: :created
      else
        render json: {errors: user.errors.full_messages}, status: :bad_request
      end
    end

    def show
      @user = User.find_by(id: params[:id])
      @user_sent_invites = @user.invites
      render json: @user, include: [:invites]
    end

end

