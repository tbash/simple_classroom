class Username < ActiveRecord::Base
  belongs_to :user
  belongs_to :course_session
end
