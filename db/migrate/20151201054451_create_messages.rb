class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :username
      t.text :content
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :course_session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
