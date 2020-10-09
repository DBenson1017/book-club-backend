class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :etag
      t.string :link
      t.string :title
      t.string :author
      t.string :img
      t.string :page
      t.string :published

      t.timestamps
    end
  end
end
