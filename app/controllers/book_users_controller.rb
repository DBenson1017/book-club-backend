class BookUsersController < ApplicationController

    def create   
    end 

    def index 
    @book_users = BookUser.all 
    render json: @book_users 
    end 

    def delete 
    end 

    def show 
    end 

private 


def book_user_params
end 


end
