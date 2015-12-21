class Article < ActiveRecord::Base
	
   belongs_to :user
   has_many :comments
    #default_scope {where(:published =>  true)}
	scope :search, ->(title) { where("title like ?", "%#{title}%") }
   
end
