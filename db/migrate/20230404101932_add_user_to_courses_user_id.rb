class AddUserToCoursesUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :user_id, :int
  end
end
