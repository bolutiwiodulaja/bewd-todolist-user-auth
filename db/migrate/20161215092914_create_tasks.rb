class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.belongs_to :user, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
