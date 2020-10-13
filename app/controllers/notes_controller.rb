class NotesController < ApplicationController

    def create 
        @note = Note.create(note_params)
        render json: @note
    end 

    def show
        @note = Note.find(params[:id])
        render json: @note
    end 

    def index
        @notes = Note.all
        render json: @notes
    end 

    def update 
        @note = Note.find(params[:id])
        @note.update_attributes(note_params)
        render json: @note
    end 

    def destroy 
        @note = Note.find(params[:id])
        @note.destroy
        if (@note.destroy {
            render json: {message: 'note deleted'}
        })
    end 
    end 

    private 

    def note_params
        params.require(:note).permit(:user_id, :book_id, :note_content)
    end 


end
