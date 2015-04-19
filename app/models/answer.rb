class Answer < ActiveRecord::Base
  belongs_to :question
  validates :answer_text, presence: true
  has_many :responses
end
