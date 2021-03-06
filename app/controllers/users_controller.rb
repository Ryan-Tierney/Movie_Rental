class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to users_path(@user)
        else 
            render 'users/new'
        end  
    end 
    
    def show 
        @user = User.find(params[:id])
    end 

    def index 
        @user = User.find(params[:id])
    end 
    
    private 

    def user_params 
        params.require(:user).permit(:username, :password, :age, :money, :id)
    end 
end
