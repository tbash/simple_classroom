class CourseSession < ActiveRecord::Base
  belongs_to :course
  has_many :messages
  has_many :slides
end
