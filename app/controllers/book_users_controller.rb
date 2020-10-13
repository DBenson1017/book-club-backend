class BookUsersController < ApplicationController

    def create 
        @book_user= BookUser.create(book_user_params)
        render json: @book_user  
    end 

    def index 
    @book_users = BookUser.all 
    render json: @book_users 
    end 
 
    def show 
    end 

    def destroy 
        @book_user = BookUser.find(params[:id])
        @book_user.destroy
        if (@book_user.destroy {
            render json: {message: 'book removed from library deleted'}
        })
    end 
    end 


private 

def book_user_params
    params.require(:book_user).permit(:user_id, :book_id)
end 


end
