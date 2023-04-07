class Course < ApplicationRecord
	validates :title,  presence: true
validates :description, presence: true, length: { :minimum => 5 } 
validates :short_description, presence:true,length:{ :minimum => 10}
has_rich_text :description
has_one_attached :avatar
belongs_to :user
has_many :lesson2s
has_many :book_lessons
# validates :avatar, attached: true, content_type: [:png, :jpg, :jpeg]


validates :avatar, attached:true,content_type: ['image/png','image/jpg','image/jpeg'],
 size: {less_than:500.kilobytes,message: 'size should be less than 500'}

def to_s
 	title
 end
def self.ransackable_attributes(auth_object = nil)
        ["title","description","short_description","language","price"]
      end
belongs_to:user
 include PublicActivity::Model
  tracked
end
