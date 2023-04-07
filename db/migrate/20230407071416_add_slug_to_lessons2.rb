class AddSlugToLessons2 < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons2s, :slug, :string
    add_index :lessons2s, :slug, unique: true
  end
end
