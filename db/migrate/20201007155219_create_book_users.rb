class CreateBookUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :book_users do |t|
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
