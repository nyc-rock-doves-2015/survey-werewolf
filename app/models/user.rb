class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys
  has_many :uploads
end
