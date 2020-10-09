class BooksController < ApplicationController

    def index 
        @books = Book.all 
        render json: @books
    end 

    def create 
        etag = params[:id]
        link= params[:link]
        title= params[:title]
        author = params[:author]
        img = params[:img]
        page = params[:page]
        published= params[:published]

        @book = Book.find_or_create_by(etag: etag)
    
        # @book = Book.create(etag: etag, link: link, title: title, author: author, img: img, page: page, published: published)

        # @book.new_record? render json: @book : render json: Book.find_by(etag: etag)

         
        # byebug
   
        # render json: @book
        # automatically call function to create a book_user 
    end 

    private 

    def book_params
        params.require(:book).permit(:etag, :link, :title, :author, :img, :page, :published)
    end 

end

