class AddFeildToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :short_description, :string
    add_column :courses, :price, :integer,default: "0",null: false
    add_column :courses, :language, :string,default: "russian",null: false
  end
end
