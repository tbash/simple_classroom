class User < ActiveRecord::Base
  after_initialize :set_role
  after_initialize :set_username
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :messages
  enum role: [:student, :instructor]

  def set_role
    if self.email.match(/\A([\w\.%\+\-]+)(@ucf\.edu\z)/i)
      self.role ||= :instructor
    else
      self.role ||= :student
    end
  end

  def set_username
    self.username = self.email[/[^@]+/]
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :confirmable, :recoverable, :rememberable, 
         :trackable, :validatable
end
