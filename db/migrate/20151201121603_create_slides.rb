class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.belongs_to :course_session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
