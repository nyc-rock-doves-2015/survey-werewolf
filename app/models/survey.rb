class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :takers, source: :user
  mount_uploader :image, ImageUploader
	# after_initialize :init
  
  ## SHOULD set placeholder image if nil
  # def init
  	# self.image || = 
  # end

end