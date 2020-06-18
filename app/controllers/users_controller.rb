class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :login]

    def create
        # byebug
        user = User.create(user_params)
        if user.valid?
            token = encode_token({user_id: user.id})
            render json: { user: user, token: token}, status: :created
        else
            render json: {message: "Could not create user."}, status: 403
        end
    end

    def show
        render json: @user
    end

    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: { user: user, token: token }
        else
            render json: { message: "Invalid username or password."}
        end
    end

    def update
        # byebug
        @user.update(email: params[:email])
        render json: {message: "Email updated."}
    end

    def destroy
        @user.destroy
        render json: {message: "User destroyed."}
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :username, :email, :subscribed?, :password)
    end

end
