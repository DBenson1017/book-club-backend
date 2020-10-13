class BooksController < ApplicationController

    def index 
        @books = Book.all 
        render json: @books
    end 

    def create 
        etag = params[:etag]
        link= params[:link]
        title= params[:title]
        author = params[:author]
        img = params[:img]
        page = params[:page]
        published= params[:published]
        if @book = Book.find_by(etag: book_params[:etag])
        #check to see if book is already in database
        render json: @book
        else
        # Must be a new book, create it
        @book = Book.create(etag: etag, link: link, title: title, author: author, img: img, page: page, published: published)
        render json: @book
        end
    end

    def show
        @book = Book.find(params[:id])
        render json: @book, include: [:notes, :reviews]
    end 

    private 

    def book_params
        params.require(:book).permit(:etag, :link, :title, :author, :img, :page, :published)
    end 

end


