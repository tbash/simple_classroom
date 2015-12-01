class CreateCourseSessions < ActiveRecord::Migration
  def change
    create_table :course_sessions do |t|
      t.string :title
      t.belongs_to :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
