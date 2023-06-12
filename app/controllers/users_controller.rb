class UsersController < ApplicationController

    def create 
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {error: 'User not insert'}
        end
    end

    def index
        users = User.all
        render json: users
    end

    def show 
        user = User.find_by(id: params[:id])
            render json: user
    end

    
    def destroy
        user = User.find_by(params[:id])
        if user.present?
            user.destroy
            render json: {message: 'user deleted successfull'}
        else
            render json: {error: 'user not found for delete'}
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user.present?
            user.update(user_params)
            render json: {message: 'user update successfull'}
        else
            render json: {error: 'user not found for update'}
        end
    end



    private 
    def user_params
        params.require(:users).permit(:name, :email, :password, :token)
    end
end