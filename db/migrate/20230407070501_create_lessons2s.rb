class CreateLessons2s < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons2s do |t|
      t.string :title
      t.text :content
      t.references :courses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
