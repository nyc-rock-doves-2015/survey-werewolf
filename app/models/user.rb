class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys
  has_many :responses
  has_many :uploads
end
