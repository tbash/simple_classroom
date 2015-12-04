# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
emails = ["instructor@ucf.edu", "student1@knights.ucf.edu", "student2@knights.ucf.edu", "student3@knights.ucf.edu"]

emails.each do |email|
  user = User.new(email: "#{email}", password: "password", password_confirmation: "password")
  user.skip_confirmation!
  user.save!
end

admin = User.new(email: "admin@ucf.edu", password: "password", password_confirmation: "password", role: 2)
admin.skip_confirmation!
admin.save!
