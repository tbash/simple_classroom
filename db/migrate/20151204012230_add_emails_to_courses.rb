class AddEmailsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :emails, :text
  end
end
