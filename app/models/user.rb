class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :articles
 has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 mount_uploader :logo, ImageUploader

 def name
    if self.first_name.present? && self.last_name.present?
  	   self.first_name + " " + self.last_name
    elsif self.first_name.present?
      self.first_name
    elsif self.last_name.present?
      self.last_name
     elsif
     	self.email
    end
  end

end