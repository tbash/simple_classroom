class Slide < ActiveRecord::Base
  belongs_to :course_session
  has_attached_file :image, styles: { large: "650x500>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
