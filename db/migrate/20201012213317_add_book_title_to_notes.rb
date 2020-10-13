class AddBookTitleToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :book_title, :string 
  end
end
