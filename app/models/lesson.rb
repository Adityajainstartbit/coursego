class Lesson < ApplicationRecord
	validates :title, presence:true
	validates  :lname,presence:true
	 include RankedModel
     ranks :row_order
     Lesson.rank(:row_order).all

     # def previous_post
    # 	@lessons.where("row_order < ?", row_order).order(:row_order).last
     # end
  #      def prev
  #   @lesson.where("row_order < ?", row_order).order(:row_order).last
  # end
  def previous_post
  # self.class.first(:conditions => ["title < ?", title], :order => "title desc")
  self.class.where("row_order < ?", row_order).order(:row_order).last
end

 def next_post
  # self.class.first(:conditions => ["title < ?", title], :order => "title desc")
  self.class.where("row_order < ?", row_order).order(:row_order).first
end
     # def prev
     #   @lesson.where("row_order < ?", row_order).order(:row_order).last

     # end
     # def next
     # 	lessons.where("row_order > ?", row_order).order(:row_order)

     # end
                       
end
