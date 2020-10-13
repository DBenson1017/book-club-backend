class ReviewsController < ApplicationController

    def create 
        @review = Review.create(review_params)
        render json: @review
    end 

    def show
        @review = Review.find(params[:id])
        render json: @review
    end 

    def index
        @reviews = Review.all
        render json: @reviews
    end 

    def update 
        @review = Review.find(params[:id])
        @review.update_attributes(review_params)
        render json: @review
    end 

    def destroy 
        @review = Review.find(params[:id])
        @review.destroy
        if (@review.destroy {
            render json: {message: 'review deleted'}
        })
    end 
    end 

    private 

    def review_params
        params.require(:review).permit(:user_id, :book_id, :book_title, :review_content, :star_rating)
    end 


end
