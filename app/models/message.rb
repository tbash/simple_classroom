class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :course_session
  validates :content, presence: true, length: {maximum: 2000}
end
