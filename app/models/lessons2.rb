class Lessons2 < ApplicationRecord
  belongs_to :courses
  validates :title,:content,:course,presence:true
   extend FriendlyId
  friendly_id :title, use: :slugged
end
