class AddSlugToBookLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :book_lessons, :slug, :string
    add_index :book_lessons, :slug, unique: true
  end
end
