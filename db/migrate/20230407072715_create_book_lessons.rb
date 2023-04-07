class CreateBookLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :book_lessons do |t|
      t.string :title
      t.text :content
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
